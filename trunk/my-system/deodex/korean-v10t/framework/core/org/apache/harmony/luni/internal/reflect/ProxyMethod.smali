.class Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;
.super Ljava/lang/Object;
.source "ProxyMethod.java"


# instance fields
.field commonExceptions:[Ljava/lang/Class;

.field method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3
    .parameter "method"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method getCheckedExceptions()[Ljava/lang/Class;
    .registers 15

    .prologue
    const-class v13, Ljava/lang/RuntimeException;

    const-class v12, Ljava/lang/Error;

    .line 35
    iget-object v11, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    invoke-virtual {v11}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Class;

    .line 36
    .local v9, newExceptions:[Ljava/lang/Class;
    array-length v3, v9

    .line 37
    .local v3, cLength:I
    const/4 v1, 0x0

    .local v1, c:I
    move v2, v3

    .local v2, cL:I
    :goto_f
    if-ge v1, v2, :cond_33

    .line 38
    aget-object v4, v9, v1

    .line 39
    .local v4, ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v11, Ljava/lang/Throwable;

    if-ne v11, v4, :cond_1b

    .line 42
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    .line 60
    .end local v4           #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1a
    return-object v11

    .line 44
    .restart local v4       #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1b
    const-class v11, Ljava/lang/Error;

    invoke-virtual {v12, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_2b

    const-class v11, Ljava/lang/RuntimeException;

    invoke-virtual {v13, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 45
    :cond_2b
    const/4 v11, 0x0

    aput-object v11, v9, v1

    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 37
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 51
    .end local v4           #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_33
    add-int/lit8 v11, v3, 0x2

    new-array v10, v11, [Ljava/lang/Class;

    .line 52
    .local v10, result:[Ljava/lang/Class;
    const/4 v6, 0x0

    .line 53
    .local v6, index:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .local v7, index:I
    const-class v11, Ljava/lang/Error;

    aput-object v12, v10, v6

    .line 54
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    const-class v11, Ljava/lang/RuntimeException;

    aput-object v13, v10, v7

    .line 55
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/Class;
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    :goto_48
    if-ge v5, v8, :cond_56

    aget-object v4, v0, v5

    .line 56
    .restart local v4       #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v4, :cond_58

    .line 57
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aput-object v4, v10, v7

    .line 55
    :goto_52
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_48

    .end local v4           #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_56
    move-object v11, v10

    .line 60
    goto :goto_1a

    .restart local v4       #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_58
    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto :goto_52
.end method

.method matchMethod(Ljava/lang/reflect/Method;)Z
    .registers 26
    .parameter "otherMethod"

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_17

    .line 65
    const/16 v21, 0x0

    .line 129
    :goto_16
    return v21

    .line 68
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v18

    .line 69
    .local v18, params1:[Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v19

    .line 70
    .local v19, params2:[Ljava/lang/Class;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 71
    .local v17, p:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_38

    .line 72
    const/16 v21, 0x0

    goto :goto_16

    .line 74
    :cond_38
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_49

    .line 75
    aget-object v21, v18, v17

    aget-object v22, v19, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_38

    .line 76
    const/16 v21, 0x0

    goto :goto_16

    .line 80
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v20

    .line 81
    .local v20, thisMethodReturnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    .line 82
    .local v16, otherMethodReturnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_71

    .line 83
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_90

    .line 85
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    .line 92
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_8d

    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v15

    .line 94
    .local v15, otherExceptions:[Ljava/lang/Class;
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_a6

    .line 95
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    .line 129
    .end local v15           #otherExceptions:[Ljava/lang/Class;
    :cond_8d
    :goto_8d
    const/16 v21, 0x1

    goto :goto_16

    .line 87
    :cond_90
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "K00f2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 97
    .restart local v15       #otherExceptions:[Ljava/lang/Class;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move v5, v0

    .line 98
    .local v5, cLength:I
    const/4 v2, 0x0

    .local v2, c:I
    move v4, v5

    .local v4, cL:I
    array-length v14, v15

    .local v14, oL:I
    :goto_b3
    if-ge v2, v4, :cond_ed

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    aget-object v3, v21, v2

    .line 100
    .local v3, cException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .local v12, o:I
    :goto_be
    if-ge v12, v14, :cond_e0

    .line 101
    aget-object v13, v15, v12

    .line 102
    .local v13, oException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v3, v13, :cond_c7

    .line 98
    .end local v13           #oException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c4
    :goto_c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 105
    .restart local v13       #oException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c7
    invoke-virtual {v13, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_c4

    .line 108
    invoke-virtual {v3, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_dd

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object v3, v13

    aput-object v13, v21, v2

    goto :goto_c4

    .line 100
    :cond_dd
    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    .line 114
    .end local v13           #oException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, v2

    .line 115
    add-int/lit8 v5, v5, -0x1

    goto :goto_c4

    .line 117
    .end local v3           #cException:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #o:I
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_8d

    .line 118
    new-array v11, v5, [Ljava/lang/Class;

    .line 119
    .local v11, newExceptions:[Ljava/lang/Class;
    const/4 v7, 0x0

    .local v7, i:I
    const/4 v8, 0x0

    .local v8, j:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move v10, v0

    .local v10, length:I
    move v9, v8

    .end local v8           #j:I
    .local v9, j:I
    :goto_10c
    if-ge v7, v10, :cond_120

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    move-object/from16 v21, v0

    aget-object v6, v21, v7

    .line 121
    .local v6, ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v6, :cond_127

    .line 122
    add-int/lit8 v8, v9, 0x1

    .end local v9           #j:I
    .restart local v8       #j:I
    aput-object v6, v11, v9

    .line 119
    :goto_11c
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8           #j:I
    .restart local v9       #j:I
    goto :goto_10c

    .line 125
    .end local v6           #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_120
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    goto/16 :goto_8d

    .restart local v6       #ex:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_127
    move v8, v9

    .end local v9           #j:I
    .restart local v8       #j:I
    goto :goto_11c
.end method
