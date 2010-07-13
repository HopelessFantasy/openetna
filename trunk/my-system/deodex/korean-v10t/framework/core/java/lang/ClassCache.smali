.class Ljava/lang/ClassCache;
.super Ljava/lang/Object;
.source "ClassCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ClassCache$1;,
        Ljava/lang/ClassCache$EnumComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ENUM_COMPARATOR:Ljava/lang/ClassCache$EnumComparator;

.field static final REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;


# instance fields
.field private volatile allFields:[Ljava/lang/reflect/Field;

.field private volatile allMethods:[Ljava/lang/reflect/Method;

.field private volatile allPublicFields:[Ljava/lang/reflect/Field;

.field private volatile allPublicMethods:[Ljava/lang/reflect/Method;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile declaredFields:[Ljava/lang/reflect/Field;

.field private volatile declaredMethods:[Ljava/lang/reflect/Method;

.field private volatile declaredPublicFields:[Ljava/lang/reflect/Field;

.field private volatile declaredPublicMethods:[Ljava/lang/reflect/Method;

.field private volatile enumValuesByName:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private volatile enumValuesInOrder:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v2, Ljava/lang/ClassCache$EnumComparator;

    invoke-direct {v2, v3}, Ljava/lang/ClassCache$EnumComparator;-><init>(Ljava/lang/ClassCache$1;)V

    sput-object v2, Ljava/lang/ClassCache;->ENUM_COMPARATOR:Ljava/lang/ClassCache$EnumComparator;

    .line 54
    invoke-static {}, Ljava/lang/ClassCache;->getReflectionAccess()Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    move-result-object v2

    sput-object v2, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    .line 105
    :try_start_e
    const-class v2, Ljava/util/EnumSet;

    const-string v3, "LANG_BOOTSTRAP"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 106
    .local v1, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->setAccessibleNoCheck(Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_1c} :catch_28

    .line 113
    const/4 v2, 0x0

    :try_start_1d
    sget-object v3, Ljava/lang/LangAccessImpl;->THE_ONE:Ljava/lang/LangAccessImpl;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_22} :catch_30

    .line 120
    sget-object v2, Ljava/lang/LangAccessImpl;->THE_ONE:Ljava/lang/LangAccessImpl;

    invoke-static {v2}, Lorg/apache/harmony/kernel/vm/LangAccess;->setInstance(Lorg/apache/harmony/kernel/vm/LangAccess;)V

    .line 121
    return-void

    .line 107
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 109
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 114
    .end local v0           #ex:Ljava/lang/NoSuchFieldException;
    .restart local v1       #field:Ljava/lang/reflect/Field;
    :catch_30
    move-exception v2

    move-object v0, v2

    .line 116
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-nez p1, :cond_e

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_e
    iput-object p1, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    .line 134
    iput-object v0, p0, Ljava/lang/ClassCache;->declaredMethods:[Ljava/lang/reflect/Method;

    .line 135
    iput-object v0, p0, Ljava/lang/ClassCache;->declaredPublicMethods:[Ljava/lang/reflect/Method;

    .line 136
    iput-object v0, p0, Ljava/lang/ClassCache;->allMethods:[Ljava/lang/reflect/Method;

    .line 137
    iput-object v0, p0, Ljava/lang/ClassCache;->allPublicMethods:[Ljava/lang/reflect/Method;

    .line 138
    iput-object v0, p0, Ljava/lang/ClassCache;->enumValuesInOrder:[Ljava/lang/Object;

    .line 139
    iput-object v0, p0, Ljava/lang/ClassCache;->enumValuesByName:[Ljava/lang/Object;

    .line 140
    iput-object v0, p0, Ljava/lang/ClassCache;->declaredFields:[Ljava/lang/reflect/Field;

    .line 141
    iput-object v0, p0, Ljava/lang/ClassCache;->declaredPublicFields:[Ljava/lang/reflect/Field;

    .line 142
    iput-object v0, p0, Ljava/lang/ClassCache;->allFields:[Ljava/lang/reflect/Field;

    .line 143
    iput-object v0, p0, Ljava/lang/ClassCache;->allPublicFields:[Ljava/lang/reflect/Field;

    .line 144
    return-void
.end method

.method private callEnumValues()[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ClassCache;->getDeclaredPublicMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 633
    .local v2, methods:[Ljava/lang/reflect/Method;
    const-string v4, "values"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0           #this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    invoke-static {v2, v4, p0}, Ljava/lang/ClassCache;->findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 634
    .local v1, method:Ljava/lang/reflect/Method;
    sget-object v4, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    invoke-interface {v4, v1}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->accessibleClone(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_22

    move-result-object v1

    .line 641
    const/4 p0, 0x0

    :try_start_14
    check-cast p0, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_21} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_21} :catch_32

    return-object p0

    .line 635
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #methods:[Ljava/lang/reflect/Method;
    :catch_22
    move-exception v4

    move-object v0, v4

    .line 637
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 642
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v1       #method:Ljava/lang/reflect/Method;
    .restart local v2       #methods:[Ljava/lang/reflect/Method;
    :catch_2a
    move-exception v4

    move-object v0, v4

    .line 644
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 645
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_32
    move-exception v4

    move-object v0, v4

    .line 646
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    .line 647
    .local v3, te:Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3f

    .line 648
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3           #te:Ljava/lang/Throwable;
    throw v3

    .line 649
    .restart local v3       #te:Ljava/lang/Throwable;
    :cond_3f
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_46

    .line 650
    check-cast v3, Ljava/lang/Error;

    .end local v3           #te:Ljava/lang/Throwable;
    throw v3

    .line 652
    .restart local v3       #te:Ljava/lang/Throwable;
    :cond_46
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static compareClassLists([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, a:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local p1, b:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    if-nez p0, :cond_d

    .line 324
    if-eqz p1, :cond_9

    array-length v2, p1

    if-nez v2, :cond_b

    :cond_9
    move v2, v5

    .line 343
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 324
    goto :goto_a

    .line 327
    :cond_d
    array-length v1, p0

    .line 329
    .local v1, length:I
    if-nez p1, :cond_16

    .line 330
    if-nez v1, :cond_14

    move v2, v5

    goto :goto_a

    :cond_14
    move v2, v4

    goto :goto_a

    .line 333
    :cond_16
    array-length v2, p1

    if-eq v1, v2, :cond_1b

    move v2, v4

    .line 334
    goto :goto_a

    .line 337
    :cond_1b
    sub-int v0, v1, v5

    .local v0, i:I
    :goto_1d
    if-ltz v0, :cond_2a

    .line 338
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    if-eq v2, v3, :cond_27

    move v2, v4

    .line 339
    goto :goto_a

    .line 337
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_2a
    move v2, v5

    .line 343
    goto :goto_a
.end method

.method public static deepCopy([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .registers 6
    .parameter "orig"

    .prologue
    .line 526
    array-length v1, p0

    .line 527
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/reflect/Field;

    .line 529
    .local v2, result:[Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_15

    .line 530
    sget-object v3, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v2, v0

    .line 529
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 533
    :cond_15
    return-object v2
.end method

.method public static deepCopy([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .registers 6
    .parameter "orig"

    .prologue
    .line 359
    array-length v1, p0

    .line 360
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/reflect/Method;

    .line 362
    .local v2, result:[Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_15

    .line 363
    sget-object v3, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    aget-object v4, p0, v0

    invoke-interface {v3, v4}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v2, v0

    .line 362
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 366
    :cond_15
    return-object v2
.end method

.method private static findAllMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter "publicOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, methods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .local p2, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v1, builder:Ljava/lang/StringBuilder;
    move-object v6, p0

    .line 248
    .local v6, origClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_6
    if-eqz p0, :cond_6d

    .line 249
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/ClassCache;->getDeclaredMethods(Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 251
    .local v0, declaredMethods:[Ljava/lang/reflect/Method;
    array-length v2, v0

    .line 252
    .local v2, length:I
    if-eqz v2, :cond_68

    .line 253
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_16
    if-ge v2, v4, :cond_68

    aget-object v5, v0, v2

    .line 254
    .local v5, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 255
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 258
    .local v7, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v3, v7

    if-eqz v3, :cond_50

    .line 259
    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/4 v3, 0x1

    .local v3, j:I
    :goto_3c
    array-length v8, v7

    if-ge v3, v8, :cond_50

    .line 261
    const/16 v8, 0x2c

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 265
    .end local v3           #j:I
    :cond_50
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, signature:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .end local v7           #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez v7, :cond_65

    .line 269
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 275
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v2           #i$:I
    .end local v3           #signature:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_68
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 276
    goto :goto_6

    .line 279
    :cond_6d
    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    .line 280
    .local p0, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/Class;
    array-length v2, p0

    .local v2, len$:I
    const/4 v0, 0x0

    .end local v1           #builder:Ljava/lang/StringBuilder;
    .local v0, i$:I
    :goto_74
    if-ge v0, v2, :cond_7e

    aget-object v1, p0, v0

    .line 281
    .local v1, intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1, p1, p2, p3}, Ljava/lang/ClassCache;->findAllMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 283
    .end local v1           #intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7e
    return-void
.end method

.method private static findAllfields(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter "publicOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .local p2, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    if-eqz p0, :cond_3a

    .line 470
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/ClassCache;->getDeclaredFields(Z)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 472
    .local v1, declaredFields:[Ljava/lang/reflect/Field;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_d
    if-ge v3, v6, :cond_24

    aget-object v2, v0, v3

    .line 473
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, signature:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 475
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {p2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 481
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v7           #signature:Ljava/lang/String;
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 482
    .local v4, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Class;
    array-length v6, v0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v6, :cond_35

    aget-object v5, v0, v3

    .line 483
    .local v5, intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v5, p1, p2, p3}, Ljava/lang/ClassCache;->findAllfields(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 486
    .end local v5           #intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 487
    goto :goto_0

    .line 488
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v1           #declaredFields:[Ljava/lang/reflect/Field;
    .end local v3           #i$:I
    .end local v4           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v6           #len$:I
    :cond_3a
    return-void
.end method

.method public static findFieldByName([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 6
    .parameter "list"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 500
    if-nez p1, :cond_a

    .line 501
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Field name must not be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 504
    aget-object v0, p0, v1

    .line 505
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 506
    return-object v0

    .line 503
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 510
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_1e
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .parameter "list"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 296
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p1, :cond_a

    .line 297
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Method name must not be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_a
    array-length v2, p0

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_e
    if-ltz v0, :cond_2a

    .line 300
    aget-object v1, p0, v0

    .line 301
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/lang/ClassCache;->compareClassLists([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 304
    return-object v1

    .line 299
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 308
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_2a
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-direct {v2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getFullListOfFields(Z)[Ljava/lang/reflect/Field;
    .registers 5
    .parameter "publicOnly"

    .prologue
    .line 443
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v0, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 446
    .local v1, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    invoke-static {v2, v0, v1, p1}, Ljava/lang/ClassCache;->findAllfields(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V

    .line 448
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    check-cast p0, [Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private getFullListOfMethods(Z)[Ljava/lang/reflect/Method;
    .registers 5
    .parameter "publicOnly"

    .prologue
    .line 220
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, methods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 223
    .local v1, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    invoke-static {v2, v0, v1, p1}, Ljava/lang/ClassCache;->findAllMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;Z)V

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static getReflectionAccess()Lorg/apache/harmony/kernel/vm/ReflectionAccess;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 670
    const-class v3, Ljava/lang/reflect/AccessibleObject;

    invoke-static {v3, v4}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 674
    .local v2, methods:[Ljava/lang/reflect/Method;
    :try_start_7
    const-string v3, "getReflectionAccess"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v2, v3, v0}, Ljava/lang/ClassCache;->findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 676
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Class;->setAccessibleNoCheck(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 677
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/kernel/vm/ReflectionAccess;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_20} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_20} :catch_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_20} :catch_31

    return-object v0

    .line 678
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 684
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 685
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 687
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 688
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_31
    move-exception v3

    move-object v0, v3

    .line 689
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getAllFields()[Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 412
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->allFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_b

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ClassCache;->getFullListOfFields(Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->allFields:[Ljava/lang/reflect/Field;

    .line 416
    :cond_b
    iget-object v0, p0, Ljava/lang/ClassCache;->allFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getAllMethods()[Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 189
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->allMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ClassCache;->getFullListOfMethods(Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->allMethods:[Ljava/lang/reflect/Method;

    .line 193
    :cond_b
    iget-object v0, p0, Ljava/lang/ClassCache;->allMethods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getAllPublicFields()[Ljava/lang/reflect/Field;
    .registers 2

    .prologue
    .line 426
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->allPublicFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_b

    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/ClassCache;->getFullListOfFields(Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->allPublicFields:[Ljava/lang/reflect/Field;

    .line 430
    :cond_b
    iget-object v0, p0, Ljava/lang/ClassCache;->allPublicFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getAllPublicMethods()[Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 203
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->allPublicMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/ClassCache;->getFullListOfMethods(Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->allPublicMethods:[Ljava/lang/reflect/Method;

    .line 207
    :cond_b
    iget-object v0, p0, Ljava/lang/ClassCache;->allPublicMethods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 375
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    .line 376
    iget-object v0, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->declaredFields:[Ljava/lang/reflect/Field;

    .line 379
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getDeclaredFields(Z)[Ljava/lang/reflect/Field;
    .registers 3
    .parameter "publicOnly"

    .prologue
    .line 402
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/ClassCache;->getDeclaredPublicFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/ClassCache;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_6
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 152
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    .line 153
    iget-object v0, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->declaredMethods:[Ljava/lang/reflect/Method;

    .line 156
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredMethods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getDeclaredMethods(Z)[Ljava/lang/reflect/Method;
    .registers 3
    .parameter "publicOnly"

    .prologue
    .line 179
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/ClassCache;->getDeclaredPublicMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/ClassCache;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_6
.end method

.method public getDeclaredPublicFields()[Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 388
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredPublicFields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    .line 389
    iget-object v0, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->declaredPublicFields:[Ljava/lang/reflect/Field;

    .line 392
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredPublicFields:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getDeclaredPublicMethods()[Ljava/lang/reflect/Method;
    .registers 3

    .prologue
    .line 165
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredPublicMethods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    .line 166
    iget-object v0, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Class;->getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->declaredPublicMethods:[Ljava/lang/reflect/Method;

    .line 169
    :cond_d
    iget-object v0, p0, Ljava/lang/ClassCache;->declaredPublicMethods:[Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getEnumValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 546
    invoke-virtual {p0}, Ljava/lang/ClassCache;->getEnumValuesByName()[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    check-cast p0, [Ljava/lang/Enum;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Enum;

    move-object v6, v0

    .line 548
    .local v6, values:[Ljava/lang/Enum;
    if-nez v6, :cond_10

    move-object v7, v9

    .line 576
    :goto_f
    return-object v7

    .line 554
    :cond_10
    const/4 v5, 0x0

    .line 555
    .local v5, min:I
    array-length v7, v6

    sub-int v4, v7, v8

    .line 557
    .local v4, max:I
    :goto_14
    if-gt v5, v4, :cond_32

    .line 563
    sub-int v7, v4, v5

    shr-int/lit8 v7, v7, 0x1

    add-int v3, v5, v7

    .line 564
    .local v3, guessIdx:I
    aget-object v2, v6, v3

    .line 565
    .local v2, guess:Ljava/lang/Enum;
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 567
    .local v1, cmp:I
    if-gez v1, :cond_2b

    .line 568
    sub-int v4, v3, v8

    goto :goto_14

    .line 569
    :cond_2b
    if-lez v1, :cond_30

    .line 570
    add-int/lit8 v5, v3, 0x1

    goto :goto_14

    :cond_30
    move-object v7, v2

    .line 572
    goto :goto_f

    .end local v1           #cmp:I
    .end local v2           #guess:Ljava/lang/Enum;
    .end local v3           #guessIdx:I
    :cond_32
    move-object v7, v9

    .line 576
    goto :goto_f
.end method

.method public getEnumValuesByName()[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v2, p0, Ljava/lang/ClassCache;->enumValuesByName:[Ljava/lang/Object;

    if-nez v2, :cond_21

    .line 587
    invoke-virtual {p0}, Ljava/lang/ClassCache;->getEnumValuesInOrder()[Ljava/lang/Object;

    move-result-object v1

    .line 589
    .local v1, values:[Ljava/lang/Object;,"[TT;"
    if-eqz v1, :cond_21

    .line 590
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 591
    move-object v0, v1

    check-cast v0, [Ljava/lang/Enum;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Enum;

    sget-object v3, Ljava/lang/ClassCache;->ENUM_COMPARATOR:Ljava/lang/ClassCache$EnumComparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 597
    iput-object v1, p0, Ljava/lang/ClassCache;->enumValuesByName:[Ljava/lang/Object;

    .line 601
    .end local v1           #values:[Ljava/lang/Object;,"[TT;"
    :cond_21
    iget-object v2, p0, Ljava/lang/ClassCache;->enumValuesByName:[Ljava/lang/Object;

    return-object v2
.end method

.method public getEnumValuesInOrder()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, this:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassCache;->enumValuesInOrder:[Ljava/lang/Object;

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/lang/ClassCache;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 613
    invoke-direct {p0}, Ljava/lang/ClassCache;->callEnumValues()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ClassCache;->enumValuesInOrder:[Ljava/lang/Object;

    .line 616
    :cond_12
    iget-object v0, p0, Ljava/lang/ClassCache;->enumValuesInOrder:[Ljava/lang/Object;

    return-object v0
.end method
