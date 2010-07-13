.class Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;
.super Ljava/lang/Object;
.source "ProxyConstantPool.java"

# interfaces
.implements Lorg/apache/harmony/luni/internal/reflect/ProxyConstants;


# static fields
.field public static final CLASS_INITIAL_SIZE:I = 0x15

.field public static final CONSTANTPOOL_GROW_SIZE:I = 0x3e8

.field public static final CONSTANTPOOL_INITIAL_SIZE:I = 0x1f4

.field public static final FIELD_INITIAL_SIZE:I = 0x7

.field public static final INTERFACE_INITIAL_SIZE:I = 0x15

.field public static final METHOD_INITIAL_SIZE:I = 0x15

.field public static final NAMEANDTYPE_INITIAL_SIZE:I = 0x15

.field public static final STRING_INITIAL_SIZE:I = 0x15

.field public static final UTF8_INITIAL_SIZE:I = 0x32


# instance fields
.field UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

.field classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

.field currentIndex:I

.field currentOffset:I

.field fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

.field interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

.field methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

.field nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

.field poolContent:[B

.field stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;)V
    .registers 5
    .parameter "classFile"

    .prologue
    const/16 v2, 0x15

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    .line 66
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    .line 67
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    .line 68
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    .line 69
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    .line 70
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    .line 71
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    .line 72
    iget-object v0, p1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    .line 73
    iget v0, p1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    .line 75
    return-void
.end method

.method private literalIndexForNameAndType(II)I
    .registers 8
    .parameter "nameIndex"
    .parameter "typeIndex"

    .prologue
    .line 256
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 257
    .local v1, key:[I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    invoke-virtual {v2, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->get([I)I

    move-result v0

    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_29

    .line 258
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->nameAndTypeCache:Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyNameAndTypeCache;->put([II)I

    move-result v0

    .line 259
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 260
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 261
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 263
    :cond_29
    return v0
.end method

.method private final writeU1(I)V
    .registers 8
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 282
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_c} :catch_d

    .line 290
    :goto_c
    return-void

    .line 283
    :catch_d
    move-exception v2

    move-object v0, v2

    .line 285
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v1, v2

    .line 286
    .local v1, length:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit16 v3, v1, 0x3e8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_c
.end method

.method private final writeU2(I)V
    .registers 9
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    :try_start_2
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_f} :catch_1b

    .line 303
    :goto_f
    :try_start_f
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_1a} :catch_36

    .line 311
    :goto_1a
    return-void

    .line 295
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 297
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v1, v2

    .line 298
    .local v1, length:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit16 v3, v1, 0x3e8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    sub-int/2addr v3, v6

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_f

    .line 304
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #length:I
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 306
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v1, v2

    .line 307
    .restart local v1       #length:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit16 v3, v1, 0x3e8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    sub-int/2addr v3, v6

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_1a
.end method


# virtual methods
.method literalIndex(Ljava/lang/String;)I
    .registers 8
    .parameter "stringConstant"

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 187
    .local v1, stringCharArray:[C
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v3, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_24

    .line 188
    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v2

    .line 189
    .local v2, stringIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, v1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v0

    .line 190
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 191
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 193
    .end local v2           #stringIndex:I
    :cond_24
    return v0
.end method

.method literalIndex(Ljava/lang/reflect/Constructor;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, aMethod:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_3d

    .line 144
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, classIndex:I
    sget-object v3, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->Init:[C

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    invoke-static {p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Constructor;)[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v2

    .line 148
    .local v2, nameAndTypeIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 149
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 150
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 151
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 153
    .end local v0           #classIndex:I
    .end local v2           #nameAndTypeIndex:I
    :cond_3d
    return v1
.end method

.method literalIndex(Ljava/lang/reflect/Field;)I
    .registers 8
    .parameter "aField"

    .prologue
    .line 127
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_47

    .line 128
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, classIndex:I
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v2

    .line 133
    .local v2, nameAndTypeIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->fieldCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 134
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 135
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 136
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 138
    .end local v0           #classIndex:I
    .end local v2           #nameAndTypeIndex:I
    :cond_47
    return v1
.end method

.method literalIndex(Ljava/lang/reflect/Method;)I
    .registers 8
    .parameter "aMethod"

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 159
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_4d

    .line 160
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, classIndex:I
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    invoke-static {p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Method;)[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v2

    .line 166
    .local v2, nameAndTypeIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->interfaceMethodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 167
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 168
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 169
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 181
    .end local v0           #classIndex:I
    .end local v2           #nameAndTypeIndex:I
    :cond_4d
    :goto_4d
    return v1

    .line 171
    .end local v1           #index:I
    :cond_4e
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->get(Ljava/lang/Object;)I

    move-result v1

    .restart local v1       #index:I
    if-gez v1, :cond_4d

    .line 172
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    .line 173
    .restart local v0       #classIndex:I
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v3

    invoke-static {p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Method;)[C

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForNameAndType(II)I

    move-result v2

    .line 176
    .restart local v2       #nameAndTypeIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->methodCache:Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyObjectCache;->put(Ljava/lang/Object;I)I

    move-result v1

    .line 177
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 178
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 179
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    goto :goto_4d
.end method

.method literalIndex([C)I
    .registers 11
    .parameter "utf8Constant"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 79
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v5, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v2

    .local v2, index:I
    if-gez v2, :cond_99

    .line 80
    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 81
    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 82
    .local v4, savedCurrentOffset:I
    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v6, v6

    if-lt v5, v6, :cond_26

    .line 83
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v3, v5

    .line 84
    .local v3, length:I
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit16 v6, v3, 0x3e8

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v5, v8, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .end local v3           #length:I
    :cond_26
    iget v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 88
    const/4 v3, 0x0

    .line 89
    .restart local v3       #length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    array-length v5, p1

    if-ge v1, v5, :cond_74

    .line 90
    aget-char v0, p1, v1

    .line 91
    .local v0, current:C
    if-lt v0, v7, :cond_41

    const/16 v5, 0x7f

    if-gt v0, v5, :cond_41

    .line 93
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 89
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 95
    :cond_41
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_61

    .line 97
    add-int/lit8 v3, v3, 0x3

    .line 98
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 100
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 102
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_3e

    .line 106
    :cond_61
    add-int/lit8 v3, v3, 0x2

    .line 107
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 109
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_3e

    .line 112
    .end local v0           #current:C
    :cond_74
    const v5, 0xffff

    if-lt v3, v5, :cond_7f

    .line 113
    sub-int v5, v4, v7

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 114
    const/4 v5, -0x1

    .line 122
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #savedCurrentOffset:I
    :goto_7e
    return v5

    .line 116
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v4       #savedCurrentOffset:I
    :cond_7f
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v5, p1, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v2

    .line 119
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 120
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit8 v6, v4, 0x1

    int-to-byte v7, v3

    aput-byte v7, v5, v6

    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #savedCurrentOffset:I
    :cond_99
    move v5, v2

    .line 122
    goto :goto_7e
.end method

.method literalIndexForLdc([C)I
    .registers 13
    .parameter "stringCharArray"

    .prologue
    const v10, 0xffff

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 198
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v2

    .local v2, index:I
    if-gez v2, :cond_b9

    .line 200
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v5

    .local v5, stringIndex:I
    if-gez v5, :cond_a5

    .line 201
    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 202
    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 203
    .local v4, savedCurrentOffset:I
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v7, v7

    if-lt v6, v7, :cond_31

    .line 204
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    array-length v3, v6

    .line 205
    .local v3, length:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit16 v7, v3, 0x3e8

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    invoke-static {v6, v9, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    .end local v3           #length:I
    :cond_31
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 210
    const/4 v3, 0x0

    .line 211
    .restart local v3       #length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_39
    array-length v6, p1

    if-ge v1, v6, :cond_7f

    .line 212
    aget-char v0, p1, v1

    .line 213
    .local v0, current:C
    if-lt v0, v8, :cond_4c

    const/16 v6, 0x7f

    if-gt v0, v6, :cond_4c

    .line 215
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 211
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 217
    :cond_4c
    const/16 v6, 0x7ff

    if-le v0, v6, :cond_6c

    .line 219
    add-int/lit8 v3, v3, 0x3

    .line 220
    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 222
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 224
    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_49

    .line 228
    :cond_6c
    add-int/lit8 v3, v3, 0x2

    .line 229
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 231
    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    goto :goto_49

    .line 234
    .end local v0           #current:C
    :cond_7f
    if-lt v3, v10, :cond_87

    .line 235
    sub-int v6, v4, v8

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    .line 236
    const/4 v6, -0x1

    .line 251
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #savedCurrentOffset:I
    .end local v5           #stringIndex:I
    :goto_86
    return v6

    .line 238
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v4       #savedCurrentOffset:I
    .restart local v5       #stringIndex:I
    :cond_87
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->UTF8Cache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v6, p1, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v5

    .line 242
    if-le v3, v10, :cond_97

    move v6, v9

    .line 243
    goto :goto_86

    .line 244
    :cond_97
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 245
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    add-int/lit8 v7, v4, 0x1

    int-to-byte v8, v3

    aput-byte v8, v6, v7

    .line 247
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #savedCurrentOffset:I
    :cond_a5
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->stringCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v6, p1, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v2

    .line 248
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 249
    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .end local v5           #stringIndex:I
    :cond_b9
    move v6, v2

    .line 251
    goto :goto_86
.end method

.method typeIndex(Ljava/lang/String;)I
    .registers 8
    .parameter "typeName"

    .prologue
    const/16 v5, 0x2e

    .line 268
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    .line 269
    const/16 v3, 0x2f

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 270
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 271
    .local v0, charArray:[C
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->get([C)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_32

    .line 272
    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v2

    .line 273
    .local v2, nameIndex:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->classNameCache:Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;

    iget v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    invoke-virtual {v3, v0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyCharArrayCache;->put([CI)I

    move-result v1

    .line 274
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU1(I)V

    .line 275
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->writeU2(I)V

    .line 277
    .end local v2           #nameIndex:I
    :cond_32
    return v1
.end method
