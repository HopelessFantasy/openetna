.class public final Ljava/lang/Class;
.super Ljava/lang/Object;
.source "Class.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/GenericDeclaration;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/GenericDeclaration;",
        "Ljava/lang/reflect/Type;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c7e5503d9bf9553L


# instance fields
.field private volatile cacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ClassCache",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private pd:Ljava/security/ProtectionDomain;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 136
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, result:[Ljava/lang/Object;,"[TT;"
    .local p1, head:[Ljava/lang/Object;,"[TT;"
    .local p2, tail:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 1585
    array-length v0, p1

    invoke-static {p1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1586
    array-length v0, p1

    array-length v1, p2

    invoke-static {p2, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1587
    return-object p0
.end method

.method private checkDeclaredMemberAccess()V
    .registers 5

    .prologue
    .line 1074
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 1075
    .local v2, smgr:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_25

    .line 1076
    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Ljava/lang/SecurityManager;->checkMemberAccess(Ljava/lang/Class;I)V

    .line 1078
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader2()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1079
    .local v0, calling:Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1081
    .local v1, current:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_25

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->isAncestorOf(Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1082
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 1085
    .end local v0           #calling:Ljava/lang/ClassLoader;
    .end local v1           #current:Ljava/lang/ClassLoader;
    :cond_25
    return-void
.end method

.method static native classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 10
    .parameter "className"
    .parameter "initializeBoolean"
    .parameter "classLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p2, :cond_1c

    .line 219
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 220
    .local v4, smgr:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_18

    .line 221
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 222
    .local v0, calling:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_18

    .line 223
    new-instance v5, Ljava/lang/RuntimePermission;

    const-string v6, "getClassLoader"

    invoke-direct {v5, v6}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 227
    .end local v0           #calling:Ljava/lang/ClassLoader;
    :cond_18
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 237
    .end local v4           #smgr:Ljava/lang/SecurityManager;
    :cond_1c
    :try_start_1c
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1f} :catch_21

    move-result-object v3

    .line 246
    .local v3, result:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-object v3

    .line 239
    .end local v3           #result:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_21
    move-exception v2

    .line 240
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 241
    .local v1, cause:Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v5, :cond_2d

    .line 242
    check-cast v1, Ljava/lang/ExceptionInInitializerError;

    .end local v1           #cause:Ljava/lang/Throwable;
    throw v1

    .line 244
    .restart local v1       #cause:Ljava/lang/Throwable;
    :cond_2d
    throw v2
.end method

.method private static native getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation
.end method

.method private static native getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method private static native getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end method

.method static native getDeclaredFields(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation
.end method

.method static native getDeclaredMethods(Ljava/lang/Class;Z)[Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method private getFullListOfClasses(Z)[Ljava/lang/Class;
    .registers 7
    .parameter "publicOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v1

    .line 558
    .local v1, result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 559
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_8
    if-eqz v0, :cond_21

    .line 560
    invoke-static {v0, p1}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v2

    .line 561
    .local v2, temp:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v3, v2

    if-eqz v3, :cond_1c

    .line 562
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v3, v1, v2}, Ljava/lang/Class;->arraycopy([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    check-cast v1, [Ljava/lang/Class;

    .line 565
    .restart local v1       #result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 566
    goto :goto_8

    .line 568
    .end local v2           #temp:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_21
    return-object v1
.end method

.method private native getInnerClassName()Ljava/lang/String;
.end method

.method private getMatchingConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 650
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, list:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_16

    .line 651
    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, p2}, Ljava/lang/ClassCache;->compareClassLists([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 652
    aget-object v7, p1, v2

    return-object v7

    .line 650
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 657
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    const/4 v1, 0x1

    .line 661
    .local v1, first:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2b
    if-ge v3, v4, :cond_41

    aget-object v5, v0, v3

    .line 662
    .local v5, p:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_36

    .line 663
    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 665
    :cond_36
    const/4 v1, 0x0

    .line 666
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 668
    .end local v5           #p:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_41
    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    new-instance v7, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static native getModifiers(Ljava/lang/Class;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation
.end method

.method private native getSignatureAnnotation()[Ljava/lang/Object;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAnnotation()[Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 148
    const/4 v1, 0x0

    .line 151
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method static final getStackClasses(IZ)[Ljava/lang/Class;
    .registers 3
    .parameter "maxDepth"
    .parameter "stopAtPrivileged"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1624
    invoke-static {p0, p1}, Ldalvik/system/VMStack;->getClasses(IZ)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private native newInstanceImpl()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method

.method static native setAccessibleNoCheck(Ljava/lang/reflect/AccessibleObject;Z)V
.end method


# virtual methods
.method public asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/lang/Class",
            "<+TU;>;"
        }
    .end annotation

    .prologue
    .line 1533
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1534
    return-object p0

    .line 1536
    :cond_7
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1552
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_4

    .line 1553
    const/4 v0, 0x0

    .line 1555
    :goto_3
    return-object v0

    .line 1554
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 1555
    goto :goto_3

    .line 1557
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method checkPublicMemberAccess()V
    .registers 5

    .prologue
    .line 1051
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 1053
    .local v2, smgr:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_25

    .line 1054
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/SecurityManager;->checkMemberAccess(Ljava/lang/Class;I)V

    .line 1056
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader2()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1057
    .local v0, calling:Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1059
    .local v1, current:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_25

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->isAncestorOf(Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1060
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 1063
    .end local v0           #calling:Ljava/lang/ClassLoader;
    .end local v1           #current:Ljava/lang/ClassLoader;
    :cond_25
    return-void
.end method

.method public native desiredAssertionStatus()Z
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 297
    .local v1, list:[Ljava/lang/annotation/Annotation;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 298
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 299
    aget-object v2, v1, v0

    .line 303
    :goto_12
    return-object v2

    .line 297
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 303
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 10

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v8, 0x1

    .line 326
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 329
    .local v0, annos:[Ljava/lang/annotation/Annotation;
    array-length v6, v0

    sub-int v3, v6, v8

    .local v3, i:I
    :goto_d
    if-ltz v3, :cond_1d

    .line 330
    aget-object v6, v0, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 332
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .local v5, sup:Ljava/lang/Class;
    :goto_21
    if-eqz v5, :cond_4d

    .line 334
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 335
    array-length v6, v0

    sub-int v3, v6, v8

    :goto_2a
    if-ltz v3, :cond_48

    .line 336
    aget-object v6, v0, v3

    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 337
    .local v1, clazz:Ljava/lang/Class;
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    const-class v6, Ljava/lang/annotation/Inherited;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 339
    aget-object v6, v0, v3

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_45
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 333
    .end local v1           #clazz:Ljava/lang/Class;
    :cond_48
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_21

    .line 345
    :cond_4d
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 346
    .local v2, coll:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    invoke-interface {v2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    check-cast p0, [Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .registers 4

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    move-object v1, v2

    .line 391
    :goto_e
    return-object v1

    .line 362
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 367
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 371
    .end local v0           #name:Ljava/lang/String;
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 376
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 377
    .restart local v0       #name:Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 385
    .end local v0           #name:Ljava/lang/String;
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .restart local v0       #name:Ljava/lang/String;
    :cond_64
    move-object v1, v2

    .line 391
    goto :goto_e
.end method

.method getClassCache()Ljava/lang/ClassCache;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ClassCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 808
    .local v0, cache:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    iget-object v1, p0, Ljava/lang/Class;->cacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_d

    .line 809
    iget-object v1, p0, Ljava/lang/Class;->cacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    check-cast v0, Ljava/lang/ClassCache;

    .line 812
    .restart local v0       #cache:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    :cond_d
    if-nez v0, :cond_1b

    .line 813
    new-instance v0, Ljava/lang/ClassCache;

    .end local v0           #cache:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    invoke-direct {v0, p0}, Ljava/lang/ClassCache;-><init>(Ljava/lang/Class;)V

    .line 814
    .restart local v0       #cache:Ljava/lang/ClassCache;,"Ljava/lang/ClassCache<TT;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/lang/Class;->cacheRef:Ljava/lang/ref/SoftReference;

    .line 817
    :cond_1b
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 6

    .prologue
    .line 409
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 410
    .local v2, smgr:Ljava/lang/SecurityManager;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoaderImpl()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 411
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    .line 412
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 414
    .local v0, calling:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_22

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->isAncestorOf(Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 415
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string v4, "getClassLoader"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 419
    .end local v0           #calling:Ljava/lang/ClassLoader;
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 420
    const/4 v3, 0x0

    .line 427
    :goto_29
    return-object v3

    .line 423
    :cond_2a
    if-nez v1, :cond_30

    .line 424
    invoke-static {}, Ljava/lang/BootClassLoader;->getInstance()Ljava/lang/BootClassLoader;

    move-result-object v1

    :cond_30
    move-object v3, v1

    .line 427
    goto :goto_29
.end method

.method getClassLoaderImpl()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 443
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Ljava/lang/Class;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClasses()[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 280
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/Class;->getFullListOfClasses(Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public native getComponentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 483
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 484
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Class;->getMatchingConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 507
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public getDeclaredClasses()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 542
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->checkDeclaredMemberAccess()V

    .line 543
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredClasses(Ljava/lang/Class;Z)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 601
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->checkDeclaredMemberAccess()V

    .line 602
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Class;->getMatchingConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->checkDeclaredMemberAccess()V

    .line 626
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getDeclaredConstructors(Ljava/lang/Class;Z)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 690
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->checkDeclaredMemberAccess()V

    .line 692
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassCache;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 693
    .local v1, fields:[Ljava/lang/reflect/Field;
    invoke-static {v1, p1}, Ljava/lang/ClassCache;->findFieldByName([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 699
    .local v0, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    invoke-interface {v2, v0}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    return-object v2
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 717
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->checkDeclaredMemberAccess()V

    .line 720
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassCache;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 721
    .local v0, fields:[Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/lang/ClassCache;->deepCopy([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v1

    return-object v1
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .parameter "name"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 756
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->checkDeclaredMemberAccess()V

    .line 758
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassCache;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 759
    .local v1, methods:[Ljava/lang/reflect/Method;
    invoke-static {v1, p1, p2}, Ljava/lang/ClassCache;->findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 765
    .local v0, method:Ljava/lang/reflect/Method;
    sget-object v2, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    invoke-interface {v2, v0}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    return-object v2
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 783
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Class;->checkDeclaredMemberAccess()V

    .line 786
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassCache;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 787
    .local v0, methods:[Ljava/lang/reflect/Method;
    invoke-static {v0}, Ljava/lang/ClassCache;->deepCopy([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method public native getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end method

.method public native getEnclosingMethod()Ljava/lang/reflect/Method;
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 868
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 869
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassCache;->getEnumValuesInOrder()[Ljava/lang/Object;

    move-result-object v0

    .line 872
    .local v0, values:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    .line 875
    .end local v0           #values:[Ljava/lang/Object;,"[TT;"
    :goto_1a
    return-object v1

    .restart local p0       #this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 896
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 898
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassCache;->getAllPublicFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 899
    .local v1, fields:[Ljava/lang/reflect/Field;
    invoke-static {v1, p1}, Ljava/lang/ClassCache;->findFieldByName([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 905
    .local v0, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    invoke-interface {v2, v0}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    return-object v2
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 927
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 930
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassCache;->getAllPublicFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 931
    .local v0, fields:[Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/lang/ClassCache;->deepCopy([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v1

    return-object v1
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 944
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader2()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 946
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 947
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public getGenericSuperclass()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 958
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader2()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 960
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 961
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method public native getInterfaces()[Ljava/lang/Class;
.end method

.method public varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .parameter "name"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1004
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 1006
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassCache;->getAllPublicMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1007
    .local v1, methods:[Ljava/lang/reflect/Method;
    invoke-static {v1, p1, p2}, Ljava/lang/ClassCache;->findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1013
    .local v0, method:Ljava/lang/reflect/Method;
    sget-object v2, Ljava/lang/ClassCache;->REFLECT:Lorg/apache/harmony/kernel/vm/ReflectionAccess;

    invoke-interface {v2, v0}, Lorg/apache/harmony/kernel/vm/ReflectionAccess;->clone(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    return-object v2
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 1038
    invoke-virtual {p0}, Ljava/lang/Class;->getClassCache()Ljava/lang/ClassCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassCache;->getAllPublicMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1039
    .local v0, methods:[Ljava/lang/reflect/Method;
    invoke-static {v0}, Ljava/lang/ClassCache;->deepCopy([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method public getModifiers()I
    .registers 2

    .prologue
    .line 1096
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v0

    return v0
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public getPackage()Ljava/lang/Package;
    .registers 6

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 1498
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1499
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_20

    .line 1500
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1501
    .local v2, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1502
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    .line 1505
    .end local v0           #dot:I
    .end local v2           #name:Ljava/lang/String;
    :goto_1d
    return-object v3

    .restart local v0       #dot:I
    .restart local v2       #name:Ljava/lang/String;
    :cond_1e
    move-object v3, v4

    .line 1502
    goto :goto_1d

    .end local v0           #dot:I
    .end local v2           #name:Ljava/lang/String;
    :cond_20
    move-object v3, v4

    .line 1505
    goto :goto_1d
.end method

.method public getProtectionDomain()Ljava/security/ProtectionDomain;
    .registers 4

    .prologue
    .line 1176
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1177
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1179
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getProtectionDomain"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1182
    :cond_10
    iget-object v1, p0, Ljava/lang/Class;->pd:Ljava/security/ProtectionDomain;

    return-object v1
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 9
    .parameter "resName"

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    const-string v6, "/"

    .line 1199
    const-string v3, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1200
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1214
    :goto_11
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1215
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4d

    .line 1216
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1218
    :goto_1b
    return-object v3

    .line 1202
    .end local v1           #loader:Ljava/lang/ClassLoader;
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1203
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1204
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4a

    .line 1205
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1210
    :goto_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 1207
    :cond_4a
    const-string v2, ""

    goto :goto_32

    .line 1218
    .end local v0           #dot:I
    .end local v2           #pkg:Ljava/lang/String;
    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_4d
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_1b
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .parameter "resName"

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/16 v5, 0x2e

    const-string v6, "/"

    .line 1236
    const-string v3, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1237
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1251
    :goto_11
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1252
    .local v1, loader:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_4d

    .line 1253
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1255
    :goto_1b
    return-object v3

    .line 1239
    .end local v1           #loader:Ljava/lang/ClassLoader;
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, pkg:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1241
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4a

    .line 1242
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1247
    :goto_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 1244
    :cond_4a
    const-string v2, ""

    goto :goto_32

    .line 1255
    .end local v0           #dot:I
    .end local v2           #pkg:Ljava/lang/String;
    .restart local v1       #loader:Ljava/lang/ClassLoader;
    :cond_4d
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1b
.end method

.method public getSigners()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1269
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1129
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    :goto_21
    return-object v2

    .line 1133
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1136
    const-string v2, ""

    goto :goto_21

    .line 1139
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1140
    :cond_3b
    invoke-direct {p0}, Ljava/lang/Class;->getInnerClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 1143
    :cond_40
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1144
    .local v0, dot:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_50

    .line 1145
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_50
    move-object v2, v1

    .line 1148
    goto :goto_21
.end method

.method public native getSuperclass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader2()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 1297
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    invoke-direct {p0}, Ljava/lang/Class;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 1298
    iget-object v1, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v1}, [Ljava/lang/reflect/TypeVariable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    .line 1295
    .end local v0           #parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isAnnotation()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    .line 1309
    const/16 v0, 0x2000

    .line 1310
    .local v0, ACC_ANNOTATION:I
    invoke-static {p0, v3}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1311
    .local v1, mod:I
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    move v2, v3

    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
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
    .line 1325
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, annotationClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isAnonymousClass()Z
.end method

.method public isArray()Z
    .registers 2

    .prologue
    .line 1347
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isAssignableFrom(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public isEnum()Z
    .registers 3

    .prologue
    .line 1376
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public native isInstance(Ljava/lang/Object;)Z
.end method

.method public native isInterface()Z
.end method

.method public isLocalClass()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1411
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_19

    :cond_e
    move v0, v3

    .line 1413
    .local v0, enclosed:Z
    :goto_f
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_1b

    move v1, v3

    :goto_18
    return v1

    .end local v0           #enclosed:Z
    :cond_19
    move v0, v2

    .line 1411
    goto :goto_f

    .restart local v0       #enclosed:Z
    :cond_1b
    move v1, v2

    .line 1413
    goto :goto_18
.end method

.method public isMemberClass()Z
    .registers 2

    .prologue
    .line 1425
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public native isPrimitive()Z
.end method

.method public isSynthetic()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    .line 1445
    const/16 v0, 0x1000

    .line 1446
    .local v0, ACC_SYNTHETIC:I
    invoke-static {p0, v3}, Ljava/lang/Class;->getModifiers(Ljava/lang/Class;Z)I

    move-result v1

    .line 1447
    .local v1, mod:I
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_d

    move v2, v3

    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 1471
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->checkPublicMemberAccess()V

    .line 1472
    invoke-direct {p0}, Ljava/lang/Class;->newInstanceImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1480
    .local p0, this:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1481
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1483
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "interface "

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_2d
    const-string v1, "class "

    goto :goto_1c
.end method
