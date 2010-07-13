.class public final Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;
.super Ljava/lang/Object;
.source "ProxyClassFile.java"

# interfaces
.implements Lorg/apache/harmony/luni/internal/reflect/ProxyConstants;


# static fields
.field private static ClassForNameMethod:Ljava/lang/reflect/Method; = null

.field private static ClassGetMethod:Ljava/lang/reflect/Method; = null

.field private static HandlerInvokeMethod:Ljava/lang/reflect/Method; = null

.field private static final INCREMENT_SIZE:I = 0xfa

.field private static final INITIAL_CONTENTS_SIZE:I = 0x3e8

.field private static final INITIAL_HEADER_SIZE:I = 0x1f4

.field private static ObjectEqualsMethod:Ljava/lang/reflect/Method;

.field private static ObjectHashCodeMethod:Ljava/lang/reflect/Method;

.field private static ObjectToStringMethod:Ljava/lang/reflect/Method;

.field private static ProxyConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static ProxyHandlerField:Ljava/lang/reflect/Field;

.field private static UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

.field private constantPoolOffset:I

.field private contents:[B

.field private contentsOffset:I

.field header:[B

.field headerOffset:I

.field private proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 13
    .parameter "typeName"
    .parameter "interfaces"

    .prologue
    const/4 v9, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/16 v6, 0x1f4

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    .line 147
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/16 v8, -0x36

    aput-byte v8, v6, v7

    .line 148
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/4 v8, -0x2

    aput-byte v8, v6, v7

    .line 149
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/16 v8, -0x46

    aput-byte v8, v6, v7

    .line 150
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/16 v8, -0x42

    aput-byte v8, v6, v7

    .line 152
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    aput-byte v9, v6, v7

    .line 153
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    aput-byte v9, v6, v7

    .line 154
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    aput-byte v9, v6, v7

    .line 155
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    const/16 v8, 0x2e

    aput-byte v8, v6, v7

    .line 156
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    .line 157
    iget v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    .line 158
    new-instance v6, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {v6, p0}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;-><init>(Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;)V

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    .line 159
    const/16 v6, 0x3e8

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    .line 161
    const/16 v0, 0x31

    .line 162
    .local v0, accessFlags:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 163
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v0

    aput-byte v8, v6, v7

    .line 164
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, classNameIndex:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 166
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v1

    aput-byte v8, v6, v7

    .line 167
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    const-string v7, "java/lang/reflect/Proxy"

    invoke-virtual {v6, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v5

    .line 169
    .local v5, superclassNameIndex:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 170
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v5

    aput-byte v8, v6, v7

    .line 171
    array-length v4, p2

    .line 172
    .local v4, interfacesCount:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 173
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v4

    aput-byte v8, v6, v7

    .line 174
    const/4 v2, 0x0

    .local v2, i:I
    :goto_ec
    if-ge v2, v4, :cond_115

    .line 175
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    aget-object v7, p2, v2

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v3

    .line 177
    .local v3, interfaceIndex:I
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    shr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 178
    iget-object v6, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v8, v3

    aput-byte v8, v6, v7

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_ec

    .line 180
    .end local v3           #interfaceIndex:I
    :cond_115
    return-void
.end method

.method private addAttributes()V
    .registers 5

    .prologue
    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 186
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    iget-object v1, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->poolContent:[B

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    .line 187
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    iget v1, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentOffset:I

    iput v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    .line 188
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    iget v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->currentIndex:I

    .line 189
    .local v0, constantPoolCount:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 190
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPoolOffset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 191
    return-void
.end method

.method private addFields()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 195
    return-void
.end method

.method private addMethods()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 198
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    array-length v5, v8

    .line 199
    .local v5, methodCount:I
    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 202
    invoke-direct {p0, v12}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 203
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->Init:[C

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 204
    sget-object v8, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;

    if-nez v8, :cond_2d

    .line 206
    :try_start_1d
    const-class v8, Ljava/lang/reflect/Proxy;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/reflect/InvocationHandler;

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    sput-object v8, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_2d} :catch_dc

    .line 212
    :cond_2d
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Constructor;)[C

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 214
    invoke-direct {p0, v12}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 215
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->CodeName:[C

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 217
    const/4 v0, 0x6

    .line 218
    .local v0, codeLength:I
    add-int/lit8 v8, v0, 0xc

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 220
    invoke-direct {p0, v14}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 221
    invoke-direct {p0, v14}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 222
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 223
    const/16 v8, 0x2a

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 224
    const/16 v8, 0x2b

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 225
    const/16 v8, 0xb7

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 226
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Constructor;)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 227
    const/16 v8, 0xb1

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 228
    invoke-direct {p0, v13}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 229
    invoke-direct {p0, v13}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 232
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7f
    if-ge v3, v5, :cond_ed

    .line 233
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    aget-object v6, v8, v3

    .line 234
    .local v6, pMethod:Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;
    iget-object v4, v6, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    .line 235
    .local v4, method:Ljava/lang/reflect/Method;
    const/16 v8, 0x11

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 236
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 238
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-static {v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/reflect/Method;)[C

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 240
    iget-object v7, v6, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->commonExceptions:[Ljava/lang/Class;

    .line 241
    .local v7, thrownsExceptions:[Ljava/lang/Class;
    array-length v2, v7

    .line 242
    .local v2, eLength:I
    if-lez v2, :cond_e4

    .line 243
    invoke-direct {p0, v14}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 246
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v9, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ExceptionsName:[C

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 249
    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedWord(I)V

    .line 250
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 251
    const/4 v1, 0x0

    .local v1, e:I
    :goto_c8
    if-ge v1, v2, :cond_e7

    .line 252
    iget-object v8, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    .line 208
    .end local v0           #codeLength:I
    .end local v1           #e:I
    .end local v2           #eLength:I
    .end local v3           #i:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #pMethod:Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;
    .end local v7           #thrownsExceptions:[Ljava/lang/Class;
    :catch_dc
    move-exception v8

    move-object v1, v8

    .line 209
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    .line 256
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v0       #codeLength:I
    .restart local v2       #eLength:I
    .restart local v3       #i:I
    .restart local v4       #method:Ljava/lang/reflect/Method;
    .restart local v6       #pMethod:Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;
    .restart local v7       #thrownsExceptions:[Ljava/lang/Class;
    :cond_e4
    invoke-direct {p0, v12}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 258
    :cond_e7
    invoke-direct {p0, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->generateCodeAttribute(Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;)V

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 260
    .end local v2           #eLength:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #pMethod:Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;
    .end local v7           #thrownsExceptions:[Ljava/lang/Class;
    :cond_ed
    return-void
.end method

.method private findMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, nextInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    .local p3, interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 324
    :cond_6
    return-void

    .line 306
    :cond_7
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 309
    .local v2, existingMethodCount:I
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 310
    .local v7, methods:[Ljava/lang/reflect/Method;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_15
    if-ge v3, v5, :cond_37

    aget-object v6, v0, v3

    .line 311
    .local v6, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1a
    if-ge v4, v2, :cond_2e

    .line 312
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    invoke-virtual {v9, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->matchMethod(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 310
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 311
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 316
    :cond_2e
    new-instance v9, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    invoke-direct {v9, v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 319
    .end local v4           #j:I
    .end local v6           #method:Ljava/lang/reflect/Method;
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v8

    .line 320
    .local v8, superInterfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/Class;
    array-length v5, v0

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v5, :cond_6

    aget-object v1, v0, v3

    .line 322
    .local v1, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v1, p2, p3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->findMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e
.end method

.method private findMethods([Ljava/lang/Class;)V
    .registers 14
    .parameter "interfaces"

    .prologue
    const-class v7, Ljava/lang/Object;

    .line 269
    sget-object v7, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectEqualsMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_32

    .line 271
    :try_start_6
    const-class v7, Ljava/lang/Object;

    const-string v8, "equals"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectEqualsMethod:Ljava/lang/reflect/Method;

    .line 273
    const-class v7, Ljava/lang/Object;

    const-string v8, "hashCode"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectHashCodeMethod:Ljava/lang/reflect/Method;

    .line 275
    const-class v7, Ljava/lang/Object;

    const-string v8, "toString"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectToStringMethod:Ljava/lang/reflect/Method;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_32} :catch_69

    .line 282
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    const/16 v7, 0x19

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v0, allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    new-instance v7, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    sget-object v8, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectEqualsMethod:Ljava/lang/reflect/Method;

    invoke-direct {v7, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v7, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    sget-object v8, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectHashCodeMethod:Ljava/lang/reflect/Method;

    invoke-direct {v7, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v7, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    sget-object v8, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ObjectToStringMethod:Ljava/lang/reflect/Method;

    invoke-direct {v7, v8}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v5, interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/Class;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5f
    if-ge v4, v6, :cond_71

    aget-object v2, v1, v4

    .line 289
    .local v2, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v2, v0, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->findMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    .line 277
    .end local v0           #allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    .end local v1           #arr$:[Ljava/lang/Class;
    .end local v2           #element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #i$:I
    .end local v5           #interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    .end local v6           #len$:I
    :catch_69
    move-exception v7

    move-object v3, v7

    .line 278
    .local v3, ex:Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 292
    .end local v3           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v0       #allMethods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;>;"
    .restart local v1       #arr$:[Ljava/lang/Class;
    .restart local v4       #i$:I
    .restart local v5       #interfacesSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<*>;>;"
    .restart local v6       #len$:I
    :cond_71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    iput-object v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    .line 293
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->proxyMethods:[Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    return-void
.end method

.method private genCallClassForName(Ljava/lang/String;)V
    .registers 8
    .parameter "typeName"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeLdc(Ljava/lang/String;)V

    .line 676
    const/16 v1, 0xb8

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 677
    sget-object v1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassForNameMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1e

    .line 679
    :try_start_c
    const-class v1, Ljava/lang/Class;

    const-string v2, "forName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassForNameMethod:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_1e} :catch_2a

    .line 685
    :cond_1e
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v2, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassForNameMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 686
    return-void

    .line 681
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 682
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method private genCallGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 13
    .parameter
    .parameter "selector"
    .parameter "argTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, receiverType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genCallClassForName(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeLdc(Ljava/lang/String;)V

    .line 472
    array-length v2, p3

    .line 473
    .local v2, length:I
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 474
    const/16 v4, 0xbd

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 475
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    const-string v5, "java/lang/Class"

    invoke-virtual {v4, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 476
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v2, :cond_53

    .line 477
    const/16 v4, 0x59

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 478
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 479
    aget-object v3, p3, v1

    .line 480
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 481
    const/16 v4, 0xb2

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 482
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Field;)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 486
    :goto_43
    const/16 v4, 0x53

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 484
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genCallClassForName(Ljava/lang/String;)V

    goto :goto_43

    .line 488
    .end local v3           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_53
    const/16 v4, 0xb6

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 489
    sget-object v4, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassGetMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_73

    .line 491
    :try_start_5c
    const-class v4, Ljava/lang/Class;

    const-string v5, "getMethod"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassGetMethod:Ljava/lang/reflect/Method;
    :try_end_73
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5c .. :try_end_73} :catch_7f

    .line 497
    :cond_73
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    sget-object v5, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ClassGetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 498
    return-void

    .line 493
    :catch_7f
    move-exception v4

    move-object v0, v4

    .line 494
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4
.end method

.method private genCastReturnType(Ljava/lang/Class;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v1, 0xc0

    .line 646
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 647
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    .line 648
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 649
    const/16 v0, 0xb1

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 672
    :goto_16
    return-void

    .line 651
    :cond_17
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 652
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeWrapperName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 654
    const/16 v0, 0xb6

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 655
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeAccessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 657
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_43

    .line 658
    const/16 v0, 0xad

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_16

    .line 659
    :cond_43
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4d

    .line 660
    const/16 v0, 0xae

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_16

    .line 661
    :cond_4d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_57

    .line 662
    const/16 v0, 0xaf

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_16

    .line 664
    :cond_57
    const/16 v0, 0xac

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_16

    .line 668
    :cond_5d
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 669
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 670
    const/16 v0, 0xb0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_16
.end method

.method private genInvokeArg(Ljava/lang/Class;I)I
    .registers 6
    .parameter
    .parameter "argByteOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v2, 0xff

    .line 531
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 532
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 533
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeWrapperName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 534
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 535
    if-le p2, v2, :cond_26

    .line 536
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 538
    :cond_26
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_68

    .line 539
    packed-switch p2, :pswitch_data_fc

    .line 553
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 554
    if-le p2, v2, :cond_64

    .line 555
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 560
    :goto_37
    add-int/lit8 p2, p2, 0x2

    .line 631
    :goto_39
    const/16 v0, 0xb7

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 632
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->typeInitMethod(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Constructor;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 637
    :goto_4b
    return p2

    .line 541
    :pswitch_4c
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_37

    .line 544
    :pswitch_52
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_37

    .line 547
    :pswitch_58
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_37

    .line 550
    :pswitch_5e
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_37

    .line 557
    :cond_64
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_37

    .line 561
    :cond_68
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_98

    .line 562
    packed-switch p2, :pswitch_data_108

    .line 576
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 577
    if-le p2, v2, :cond_94

    .line 578
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 583
    :goto_79
    add-int/lit8 p2, p2, 0x1

    goto :goto_39

    .line 564
    :pswitch_7c
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_79

    .line 567
    :pswitch_82
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_79

    .line 570
    :pswitch_88
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_79

    .line 573
    :pswitch_8e
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_79

    .line 580
    :cond_94
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_79

    .line 584
    :cond_98
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_c8

    .line 585
    packed-switch p2, :pswitch_data_114

    .line 599
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 600
    if-le p2, v2, :cond_c4

    .line 601
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 606
    :goto_a9
    add-int/lit8 p2, p2, 0x2

    goto :goto_39

    .line 587
    :pswitch_ac
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_a9

    .line 590
    :pswitch_b2
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_a9

    .line 593
    :pswitch_b8
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_a9

    .line 596
    :pswitch_be
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_a9

    .line 603
    :cond_c4
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_a9

    .line 608
    :cond_c8
    packed-switch p2, :pswitch_data_120

    .line 622
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 623
    if-le p2, v2, :cond_f1

    .line 624
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 629
    :goto_d5
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_39

    .line 610
    :pswitch_d9
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_d5

    .line 613
    :pswitch_df
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_d5

    .line 616
    :pswitch_e5
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_d5

    .line 619
    :pswitch_eb
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_d5

    .line 626
    :cond_f1
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_d5

    .line 634
    :cond_f5
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genLoadArg(I)V

    .line 635
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_4b

    .line 539
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_52
        :pswitch_58
        :pswitch_5e
    .end packed-switch

    .line 562
    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_82
        :pswitch_88
        :pswitch_8e
    .end packed-switch

    .line 585
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_b2
        :pswitch_b8
        :pswitch_be
    .end packed-switch

    .line 608
    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_df
        :pswitch_e5
        :pswitch_eb
    .end packed-switch
.end method

.method private genInvokeArgs([Ljava/lang/Class;)I
    .registers 7
    .parameter "argTypes"

    .prologue
    .line 511
    const/4 v0, 0x1

    .line 512
    .local v0, argByteOffset:I
    array-length v2, p1

    .line 513
    .local v2, length:I
    if-nez v2, :cond_9

    .line 514
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 526
    :cond_8
    return v0

    .line 516
    :cond_9
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 517
    const/16 v3, 0xbd

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 518
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    const-string v4, "java/lang/Object"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 519
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v2, :cond_8

    .line 520
    const/16 v3, 0x59

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 521
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeIntConstant(I)V

    .line 522
    aget-object v3, p1, v1

    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genInvokeArg(Ljava/lang/Class;I)I

    move-result v0

    .line 523
    const/16 v3, 0x53

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method private genLoadArg(I)V
    .registers 4
    .parameter "argByteOffset"

    .prologue
    const/16 v1, 0x19

    .line 689
    const/16 v0, 0xff

    if-le p1, v0, :cond_12

    .line 690
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 691
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 692
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 712
    :goto_11
    return-void

    .line 694
    :cond_12
    packed-switch p1, :pswitch_data_34

    .line 708
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 709
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 696
    :pswitch_1c
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 699
    :pswitch_22
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 702
    :pswitch_28
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 705
    :pswitch_2e
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 694
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method

.method private genStoreArg(I)V
    .registers 4
    .parameter "argByteOffset"

    .prologue
    const/16 v1, 0x3a

    .line 715
    const/16 v0, 0xff

    if-le p1, v0, :cond_12

    .line 716
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 717
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 718
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 738
    :goto_11
    return-void

    .line 720
    :cond_12
    packed-switch p1, :pswitch_data_34

    .line 734
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 735
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 722
    :pswitch_1c
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 725
    :pswitch_22
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 728
    :pswitch_28
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 731
    :pswitch_2e
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_11

    .line 720
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method

.method public static generateBytes(Ljava/lang/String;[Ljava/lang/Class;)[B
    .registers 4
    .parameter "typeName"
    .parameter "interfaces"

    .prologue
    .line 56
    new-instance v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 57
    .local v0, classFile:Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->addFields()V

    .line 58
    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->findMethods([Ljava/lang/Class;)V

    .line 59
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->addMethods()V

    .line 60
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->addAttributes()V

    .line 61
    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private generateCodeAttribute(Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;)V
    .registers 26
    .parameter "pMethod"

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move v9, v0

    .line 328
    .local v9, codeAttributeOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move v13, v0

    .line 329
    .local v13, contentsLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x14

    add-int/lit8 v19, v19, 0x64

    move/from16 v0, v19

    move v1, v13

    if-lt v0, v1, :cond_45

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move v0, v13

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v19, v0

    sget-object v20, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->CodeName:[C

    invoke-virtual/range {v19 .. v20}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex([C)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move v12, v0

    .line 349
    .local v12, codeStartOffset:I
    const/16 v19, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 350
    const/16 v19, 0xb4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 351
    sget-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyHandlerField:Ljava/lang/reflect/Field;

    if-nez v19, :cond_8b

    .line 353
    :try_start_81
    const-class v19, Ljava/lang/reflect/Proxy;

    const-string v20, "h"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    sput-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyHandlerField:Ljava/lang/reflect/Field;
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_81 .. :try_end_8b} :catch_202

    .line 358
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v19, v0

    sget-object v20, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->ProxyHandlerField:Ljava/lang/reflect/Field;

    invoke-virtual/range {v19 .. v20}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Field;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 359
    const/16 v19, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 360
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->method:Ljava/lang/reflect/Method;

    move-object/from16 v18, v0

    .line 361
    .local v18, method:Ljava/lang/reflect/Method;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 362
    .local v5, argTypes:[Ljava/lang/Class;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genCallGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 363
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genInvokeArgs([Ljava/lang/Class;)I

    move-result v16

    .line 364
    .local v16, maxLocals:I
    const/16 v19, 0xb9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 365
    sget-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->HandlerInvokeMethod:Ljava/lang/reflect/Method;

    if-nez v19, :cond_fb

    .line 367
    :try_start_d7
    const-class v19, Ljava/lang/reflect/InvocationHandler;

    const-string v20, "invoke"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Ljava/lang/Object;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-class v23, Ljava/lang/reflect/Method;

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-class v23, [Ljava/lang/Object;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    sput-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->HandlerInvokeMethod:Ljava/lang/reflect/Method;
    :try_end_fb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d7 .. :try_end_fb} :catch_20b

    .line 374
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v19, v0

    sget-object v20, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->HandlerInvokeMethod:Ljava/lang/reflect/Method;

    invoke-virtual/range {v19 .. v20}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Method;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 375
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 376
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 377
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genCastReturnType(Ljava/lang/Class;)V

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v19, v0

    sub-int v11, v19, v12

    .line 380
    .local v11, codeLength:I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyMethod;->getCheckedExceptions()[Ljava/lang/Class;

    move-result-object v6

    .line 381
    .local v6, checkedExceptions:[Ljava/lang/Class;
    array-length v7, v6

    .line 382
    .local v7, checkedLength:I
    if-lez v7, :cond_320

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v19, v0

    sub-int v10, v19, v12

    .line 384
    .local v10, codeEndIndex:I
    const/16 v19, 0xbf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 386
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genStoreArg(I)V

    .line 387
    const/16 v19, 0xbb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v19, v0

    const-string v20, "java/lang/reflect/UndeclaredThrowableException"

    invoke-virtual/range {v19 .. v20}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 390
    const/16 v19, 0x59

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 391
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->genLoadArg(I)V

    .line 392
    add-int/lit8 v16, v16, 0x1

    .line 393
    const/16 v19, 0xb7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 394
    sget-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;

    if-nez v19, :cond_1a3

    .line 396
    :try_start_18d
    const-class v19, Ljava/lang/reflect/UndeclaredThrowableException;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Ljava/lang/Throwable;

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    sput-object v19, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1a3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18d .. :try_end_1a3} :catch_214

    .line 402
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v19, v0

    sget-object v20, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->UndeclaredThrowableExceptionConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual/range {v19 .. v20}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndex(Ljava/lang/reflect/Constructor;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 404
    const/16 v19, 0xbf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v19, v0

    sub-int v11, v19, v12

    .line 409
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 410
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1d1
    if-ge v15, v7, :cond_21d

    .line 411
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 412
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 413
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v19, v0

    aget-object v20, v6, v15

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 410
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d1

    .line 354
    .end local v5           #argTypes:[Ljava/lang/Class;
    .end local v6           #checkedExceptions:[Ljava/lang/Class;
    .end local v7           #checkedLength:I
    .end local v10           #codeEndIndex:I
    .end local v11           #codeLength:I
    .end local v15           #i:I
    .end local v16           #maxLocals:I
    .end local v18           #method:Ljava/lang/reflect/Method;
    :catch_202
    move-exception v19

    move-object/from16 v14, v19

    .line 355
    .local v14, e:Ljava/lang/NoSuchFieldException;
    new-instance v19, Ljava/lang/InternalError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/InternalError;-><init>()V

    throw v19

    .line 370
    .end local v14           #e:Ljava/lang/NoSuchFieldException;
    .restart local v5       #argTypes:[Ljava/lang/Class;
    .restart local v16       #maxLocals:I
    .restart local v18       #method:Ljava/lang/reflect/Method;
    :catch_20b
    move-exception v19

    move-object/from16 v14, v19

    .line 371
    .local v14, e:Ljava/lang/NoSuchMethodException;
    new-instance v19, Ljava/lang/InternalError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/InternalError;-><init>()V

    throw v19

    .line 398
    .end local v14           #e:Ljava/lang/NoSuchMethodException;
    .restart local v6       #checkedExceptions:[Ljava/lang/Class;
    .restart local v7       #checkedLength:I
    .restart local v10       #codeEndIndex:I
    .restart local v11       #codeLength:I
    :catch_214
    move-exception v19

    move-object/from16 v14, v19

    .line 399
    .restart local v14       #e:Ljava/lang/NoSuchMethodException;
    new-instance v19, Ljava/lang/InternalError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/InternalError;-><init>()V

    throw v19

    .line 417
    .end local v14           #e:Ljava/lang/NoSuchMethodException;
    .restart local v15       #i:I
    :cond_21d
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 418
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 419
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    move-object/from16 v19, v0

    const-string v20, "java/lang/Throwable"

    invoke-virtual/range {v19 .. v20}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->typeIndex(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 426
    .end local v10           #codeEndIndex:I
    .end local v15           #i:I
    :goto_248
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    move/from16 v19, v0

    add-int/lit8 v20, v9, 0x6

    sub-int v8, v19, v20

    .line 437
    .local v8, codeAttributeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x2

    shr-int/lit8 v21, v8, 0x18

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x3

    shr-int/lit8 v21, v8, 0x10

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x4

    shr-int/lit8 v21, v8, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x5

    move v0, v8

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 442
    add-int/lit8 v17, v16, 0xa

    .line 443
    .local v17, maxStack:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x6

    shr-int/lit8 v21, v17, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x7

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x8

    shr-int/lit8 v21, v16, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x9

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0xa

    shr-int/lit8 v21, v11, 0x18

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0xb

    shr-int/lit8 v21, v11, 0x10

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0xc

    shr-int/lit8 v21, v11, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0xd

    move v0, v11

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 451
    return-void

    .line 423
    .end local v8           #codeAttributeLength:I
    .end local v17           #maxStack:I
    :cond_320
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    goto/16 :goto_248
.end method

.method private getBytes()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 741
    iget v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 742
    .local v0, fullContents:[B
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->header:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->headerOffset:I

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    return-object v0
.end method

.method static getConstantPoolName(Ljava/lang/Class;)[C
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[C"
        }
    .end annotation

    .prologue
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v4, 0x2f

    const/16 v3, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 100
    :goto_18
    return-object v0

    .line 70
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 72
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    .line 73
    new-array v0, v1, [C

    const/16 v1, 0x56

    aput-char v1, v0, v2

    goto :goto_18

    .line 75
    :cond_2a
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_35

    .line 76
    new-array v0, v1, [C

    const/16 v1, 0x49

    aput-char v1, v0, v2

    goto :goto_18

    .line 78
    :cond_35
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_40

    .line 79
    new-array v0, v1, [C

    const/16 v1, 0x5a

    aput-char v1, v0, v2

    goto :goto_18

    .line 81
    :cond_40
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4b

    .line 82
    new-array v0, v1, [C

    const/16 v1, 0x42

    aput-char v1, v0, v2

    goto :goto_18

    .line 84
    :cond_4b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_56

    .line 85
    new-array v0, v1, [C

    const/16 v1, 0x43

    aput-char v1, v0, v2

    goto :goto_18

    .line 87
    :cond_56
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_61

    .line 88
    new-array v0, v1, [C

    const/16 v1, 0x53

    aput-char v1, v0, v2

    goto :goto_18

    .line 90
    :cond_61
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6c

    .line 91
    new-array v0, v1, [C

    const/16 v1, 0x4a

    aput-char v1, v0, v2

    goto :goto_18

    .line 93
    :cond_6c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_77

    .line 94
    new-array v0, v1, [C

    const/16 v1, 0x46

    aput-char v1, v0, v2

    goto :goto_18

    .line 96
    :cond_77
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_82

    .line 97
    new-array v0, v1, [C

    const/16 v1, 0x44

    aput-char v1, v0, v2

    goto :goto_18

    .line 100
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto/16 :goto_18
.end method

.method static getConstantPoolName(Ljava/lang/reflect/Constructor;)[C
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)[C"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, method:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 105
    .local v5, parameters:[Ljava/lang/Class;
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v6, v5

    add-int/lit8 v6, v6, 0x14

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 106
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/16 v6, 0x28

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_22

    aget-object v2, v0, v3

    .line 108
    .local v2, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 110
    .end local v2           #element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_22
    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    return-object v6
.end method

.method static getConstantPoolName(Ljava/lang/reflect/Method;)[C
    .registers 8
    .parameter "method"

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 117
    .local v5, parameters:[Ljava/lang/Class;
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v6, v5

    add-int/lit8 v6, v6, 0x14

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 118
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/16 v6, 0x28

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_22

    aget-object v2, v0, v3

    .line 120
    .local v2, element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 122
    .end local v2           #element:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_22
    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->getConstantPoolName(Ljava/lang/Class;)[C

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    return-object v6
.end method

.method private typeAccessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 750
    :try_start_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_11

    .line 751
    const-class v1, Ljava/lang/Integer;

    const-string v2, "intValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 777
    :goto_10
    return-object v1

    .line 753
    .restart local p0
    :cond_11
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_21

    .line 754
    const-class v1, Ljava/lang/Short;

    const-string v2, "shortValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_10

    .line 756
    .restart local p0
    :cond_21
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_31

    .line 757
    const-class v1, Ljava/lang/Byte;

    const-string v2, "byteValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_10

    .line 759
    .restart local p0
    :cond_31
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_41

    .line 760
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "booleanValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_10

    .line 762
    .restart local p0
    :cond_41
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_51

    .line 763
    const-class v1, Ljava/lang/Character;

    const-string v2, "charValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_10

    .line 765
    .restart local p0
    :cond_51
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_61

    .line 766
    const-class v1, Ljava/lang/Long;

    const-string v2, "longValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_10

    .line 768
    .restart local p0
    :cond_61
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_71

    .line 769
    const-class v1, Ljava/lang/Float;

    const-string v2, "floatValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_10

    .line 771
    .restart local p0
    :cond_71
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_89

    .line 772
    const-class v1, Ljava/lang/Double;

    const-string v2, "doubleValue"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_7f} :catch_81

    move-result-object v1

    goto :goto_10

    .line 774
    :catch_81
    move-exception v1

    move-object v0, v1

    .line 775
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .restart local p0
    :cond_89
    move-object v1, v2

    .line 777
    goto :goto_10
.end method

.method private typeField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "TYPE"

    .line 782
    :try_start_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_f

    .line 783
    const-class v1, Ljava/lang/Integer;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 809
    :goto_e
    return-object v1

    .line 785
    :cond_f
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1c

    .line 786
    const-class v1, Ljava/lang/Short;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_e

    .line 788
    :cond_1c
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_29

    .line 789
    const-class v1, Ljava/lang/Byte;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_e

    .line 791
    :cond_29
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_36

    .line 792
    const-class v1, Ljava/lang/Boolean;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_e

    .line 794
    :cond_36
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_43

    .line 795
    const-class v1, Ljava/lang/Character;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_e

    .line 797
    :cond_43
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_50

    .line 798
    const-class v1, Ljava/lang/Long;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_e

    .line 800
    :cond_50
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5d

    .line 801
    const-class v1, Ljava/lang/Float;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_e

    .line 803
    :cond_5d
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_72

    .line 804
    const-class v1, Ljava/lang/Double;

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_68
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_68} :catch_6a

    move-result-object v1

    goto :goto_e

    .line 806
    :catch_6a
    move-exception v1

    move-object v0, v1

    .line 807
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 809
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :cond_72
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private typeInitMethod(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_13

    .line 815
    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 844
    :goto_12
    return-object v1

    .line 817
    :cond_13
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_26

    .line 818
    const-class v1, Ljava/lang/Short;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_12

    .line 820
    :cond_26
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_39

    .line 821
    const-class v1, Ljava/lang/Byte;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_12

    .line 823
    :cond_39
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4c

    .line 824
    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_12

    .line 827
    :cond_4c
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5f

    .line 828
    const-class v1, Ljava/lang/Character;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_12

    .line 831
    :cond_5f
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_72

    .line 832
    const-class v1, Ljava/lang/Long;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_12

    .line 834
    :cond_72
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_85

    .line 835
    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_12

    .line 837
    :cond_85
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_a1

    .line 838
    const-class v1, Ljava/lang/Double;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_96
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_96} :catch_99

    move-result-object v1

    goto/16 :goto_12

    .line 841
    :catch_99
    move-exception v1

    move-object v0, v1

    .line 842
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 844
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_a1
    const/4 v1, 0x0

    goto/16 :goto_12
.end method

.method private typeWrapperName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
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
    .line 848
    .local p1, baseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 849
    const-string v0, "java/lang/Integer"

    .line 872
    :goto_6
    return-object v0

    .line 851
    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    .line 852
    const-string v0, "java/lang/Short"

    goto :goto_6

    .line 854
    :cond_e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    .line 855
    const-string v0, "java/lang/Byte"

    goto :goto_6

    .line 857
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1c

    .line 858
    const-string v0, "java/lang/Boolean"

    goto :goto_6

    .line 860
    :cond_1c
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_23

    .line 861
    const-string v0, "java/lang/Character"

    goto :goto_6

    .line 863
    :cond_23
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2a

    .line 864
    const-string v0, "java/lang/Long"

    goto :goto_6

    .line 866
    :cond_2a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_31

    .line 867
    const-string v0, "java/lang/Float"

    goto :goto_6

    .line 869
    :cond_31
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_38

    .line 870
    const-string v0, "java/lang/Double"

    goto :goto_6

    .line 872
    :cond_38
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private writeIntConstant(I)V
    .registers 3
    .parameter "b"

    .prologue
    .line 876
    packed-switch p1, :pswitch_data_2c

    .line 896
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 897
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 899
    :goto_b
    return-void

    .line 878
    :pswitch_c
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_b

    .line 881
    :pswitch_11
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_b

    .line 884
    :pswitch_16
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_b

    .line 887
    :pswitch_1b
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_b

    .line 890
    :pswitch_20
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_b

    .line 893
    :pswitch_25
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_b

    .line 876
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method

.method private writeLdc(Ljava/lang/String;)V
    .registers 5
    .parameter "constant"

    .prologue
    .line 902
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->constantPool:Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/reflect/ProxyConstantPool;->literalIndexForLdc([C)I

    move-result v0

    .line 903
    .local v0, index:I
    if-gtz v0, :cond_12

    .line 904
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 906
    :cond_12
    const/16 v1, 0xff

    if-le v0, v1, :cond_1f

    .line 907
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 908
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedShort(I)V

    .line 913
    :goto_1e
    return-void

    .line 910
    :cond_1f
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 911
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    goto :goto_1e
.end method

.method private writeUnsignedByte(I)V
    .registers 8
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 917
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_c} :catch_d

    .line 924
    :goto_c
    return-void

    .line 918
    :catch_d
    move-exception v2

    move-object v1, v2

    .line 919
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    array-length v0, v2

    .line 920
    .local v0, actualLength:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    add-int/lit16 v3, v0, 0xfa

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contents:[B

    iget v3, p0, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->contentsOffset:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_c
.end method

.method private writeUnsignedShort(I)V
    .registers 3
    .parameter "b"

    .prologue
    .line 927
    ushr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 928
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 929
    return-void
.end method

.method private writeUnsignedWord(I)V
    .registers 3
    .parameter "b"

    .prologue
    .line 932
    ushr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 933
    ushr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 934
    ushr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 935
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/reflect/ProxyClassFile;->writeUnsignedByte(I)V

    .line 936
    return-void
.end method
