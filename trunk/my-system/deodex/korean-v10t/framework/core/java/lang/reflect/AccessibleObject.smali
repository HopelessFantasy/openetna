.class public Ljava/lang/reflect/AccessibleObject;
.super Ljava/lang/Object;
.source "AccessibleObject.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field private static final DIMENSION_1:Ljava/lang/String; = "[]"

.field private static final DIMENSION_2:Ljava/lang/String; = "[][]"

.field private static final DIMENSION_3:Ljava/lang/String; = "[][][]"

.field static trans:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 84
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    .line 85
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "byte"

    const-string v2, "B"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "char"

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "short"

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "int"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "long"

    const-string v2, "J"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "float"

    const-string v2, "F"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "double"

    const-string v2, "D"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "void"

    const-string v2, "V"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    const-string v1, "boolean"

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 139
    return-void
.end method

.method private static native getClassSignatureAnnotation(Ljava/lang/Class;)[Ljava/lang/Object;
.end method

.method static getClassSignatureAttribute(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter "clazz"

    .prologue
    .line 285
    invoke-static {p0}, Ljava/lang/reflect/AccessibleObject;->getClassSignatureAnnotation(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 288
    const/4 v1, 0x0

    .line 291
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method static getReflectionAccess()Lorg/apache/harmony/kernel/vm/ReflectionAccess;
    .registers 1

    .prologue
    .line 307
    sget-object v0, Ljava/lang/reflect/ReflectionAccessImpl;->THE_ONE:Ljava/lang/reflect/ReflectionAccessImpl;

    return-object v0
.end method

.method public static setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .registers 6
    .parameter "objects"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 119
    .local v1, smgr:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 120
    new-instance v2, Ljava/lang/reflect/ReflectPermission;

    const-string v3, "suppressAccessChecks"

    invoke-direct {v2, v3}, Ljava/lang/reflect/ReflectPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 123
    :cond_10
    const-class v2, Ljava/lang/reflect/AccessibleObject;

    monitor-enter v2

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    :try_start_14
    array-length v3, p0

    if-ge v0, v3, :cond_1e

    .line 125
    aget-object v3, p0, v0

    iput-boolean p1, v3, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 127
    :cond_1e
    monitor-exit v2

    .line 128
    return-void

    .line 127
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v3
.end method


# virtual methods
.method appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V
    .registers 5
    .parameter "sb"
    .parameter "objs"

    .prologue
    .line 381
    array-length v1, p2

    if-lez v1, :cond_1a

    .line 382
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 383
    const/4 v0, 0x1

    .local v0, i:I
    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 384
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 388
    .end local v0           #i:I
    :cond_1a
    return-void
.end method

.method appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .registers 7
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, obj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "[]"

    .line 321
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_10

    .line 322
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_f
    :goto_f
    return-void

    .line 325
    :cond_10
    const/4 v0, 0x1

    .line 326
    .local v0, dimensions:I
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 327
    .local v1, simplified:Ljava/lang/Class;
    move-object p2, v1

    .line 328
    :goto_16
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 329
    move-object p2, v1

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 332
    :cond_20
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    packed-switch v0, :pswitch_data_46

    .line 344
    :goto_2a
    if-lez v0, :cond_f

    .line 345
    const-string v2, "[]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 335
    :pswitch_34
    const-string v2, "[]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 338
    :pswitch_3a
    const-string v2, "[][]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 341
    :pswitch_40
    const-string v2, "[][][]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 333
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_34
        :pswitch_3a
        :pswitch_40
    .end packed-switch
.end method

.method appendArrayType(Ljava/lang/StringBuilder;[Ljava/lang/Class;)V
    .registers 5
    .parameter "sb"
    .parameter "objs"

    .prologue
    .line 361
    array-length v1, p2

    if-lez v1, :cond_1a

    .line 362
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 363
    const/4 v0, 0x1

    .local v0, i:I
    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 364
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/AccessibleObject;->appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 368
    .end local v0           #i:I
    :cond_1a
    return-void
.end method

.method appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V
    .registers 14
    .parameter "sb"
    .parameter "obj"

    .prologue
    const/4 v9, 0x1

    const-string v10, "[]"

    .line 399
    instance-of v7, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_11

    .line 400
    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .end local p2
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_10
    :goto_10
    return-void

    .line 401
    .restart local p2
    :cond_11
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_1d

    .line 402
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 403
    :cond_1d
    instance-of v7, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v7, :cond_30

    .line 404
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .end local p2
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 405
    .local v6, simplified:Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, v6}, Ljava/lang/reflect/AccessibleObject;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 406
    const-string v7, "[]"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 407
    .end local v6           #simplified:Ljava/lang/reflect/Type;
    .restart local p2
    :cond_30
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_10

    .line 408
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 409
    .local v2, c:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 410
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\["

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, as:[Ljava/lang/String;
    array-length v7, v1

    sub-int v5, v7, v9

    .line 412
    .local v5, len:I
    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6e

    .line 413
    aget-object v7, v1, v5

    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_63
    :goto_63
    const/4 v4, 0x0

    .local v4, i:I
    :goto_64
    if-ge v4, v5, :cond_10

    .line 436
    const-string v7, "[]"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 415
    .end local v4           #i:I
    :cond_6e
    aget-object v7, v1, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 416
    .local v3, ch:C
    const/16 v7, 0x49

    if-ne v3, v7, :cond_7f

    .line 417
    const-string v7, "int"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 418
    :cond_7f
    const/16 v7, 0x42

    if-ne v3, v7, :cond_89

    .line 419
    const-string v7, "byte"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 420
    :cond_89
    const/16 v7, 0x4a

    if-ne v3, v7, :cond_93

    .line 421
    const-string v7, "long"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 422
    :cond_93
    const/16 v7, 0x46

    if-ne v3, v7, :cond_9d

    .line 423
    const-string v7, "float"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 424
    :cond_9d
    const/16 v7, 0x44

    if-ne v3, v7, :cond_a7

    .line 425
    const-string v7, "double"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 426
    :cond_a7
    const/16 v7, 0x53

    if-ne v3, v7, :cond_b1

    .line 427
    const-string v7, "short"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 428
    :cond_b1
    const/16 v7, 0x43

    if-ne v3, v7, :cond_bb

    .line 429
    const-string v7, "char"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 430
    :cond_bb
    const/16 v7, 0x5a

    if-ne v3, v7, :cond_c5

    .line 431
    const-string v7, "boolean"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 432
    :cond_c5
    const/16 v7, 0x56

    if-ne v3, v7, :cond_63

    .line 433
    const-string v7, "void"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 439
    .end local v1           #as:[Ljava/lang/String;
    .end local v3           #ch:C
    .end local v5           #len:I
    :cond_cf
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10
.end method

.method appendSimpleType(Ljava/lang/StringBuilder;[Ljava/lang/Class;)V
    .registers 5
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p2, objs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v1, p2

    if-lez v1, :cond_22

    .line 458
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const/4 v0, 0x1

    .local v0, i:I
    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_22

    .line 460
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 464
    .end local v0           #i:I
    :cond_22
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_8

    .line 205
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 207
    :cond_8
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 208
    .local v0, annos:[Ljava/lang/annotation/Annotation;
    array-length v2, v0

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_10
    if-ltz v1, :cond_20

    .line 209
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_1d

    .line 210
    aget-object v2, v0, v1

    .line 213
    :goto_1c
    return-object v2

    .line 208
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 213
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "subclass must override this method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, ""

    .line 228
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, nextType:Ljava/lang/String;
    sget-object v2, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 231
    sget-object v2, Ljava/lang/reflect/AccessibleObject;->trans:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 239
    .restart local v1       #result:Ljava/lang/String;
    :goto_16
    return-object v1

    .line 233
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 236
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isAccessible()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setAccessible(Z)V
    .registers 5
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 172
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 173
    new-instance v1, Ljava/lang/reflect/ReflectPermission;

    const-string v2, "suppressAccessChecks"

    invoke-direct {v1, v2}, Ljava/lang/reflect/ReflectPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 176
    :cond_10
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 177
    return-void
.end method

.method setAccessibleNoCheck(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 186
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 187
    return-void
.end method

.method toString([Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v1, result:Ljava/lang/StringBuilder;
    array-length v2, p1

    if-eqz v2, :cond_27

    .line 257
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/4 v0, 0x1

    .local v0, i:I
    :goto_13
    array-length v2, p1

    if-ge v0, v2, :cond_27

    .line 259
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 264
    .end local v0           #i:I
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
