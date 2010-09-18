.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$InputValidationDesc;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_CLASSES:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UNSHARED_OBJ:Ljava/lang/Object;

.field private static final bootstrapLoader:Ljava/lang/ClassLoader;

.field private static emptyStream:Ljava/io/InputStream;

.field private static final systemLoader:Ljava/lang/ClassLoader;


# instance fields
.field private callerClassLoader:Ljava/lang/ClassLoader;

.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentHandle:I

.field private currentObject:Ljava/lang/Object;

.field private descriptorHandle:Ljava/lang/Integer;

.field private enableResolve:Z

.field private hasPushbackTC:Z

.field private input:Ljava/io/DataInputStream;

.field private mustResolve:Z

.field private nestedLevels:I

.field private objectsRead:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private primitiveData:Ljava/io/InputStream;

.field private primitiveTypes:Ljava/io/DataInputStream;

.field private pushbackTC:B

.field private readResolveCache:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private subclassOverridingImplementation:Z

.field private validations:[Ljava/io/ObjectInputStream$InputValidationDesc;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sput-object v0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    .line 118
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    .line 2326
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 372
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 82
    sget-object v1, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 107
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 373
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 374
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 375
    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 379
    :cond_15
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 380
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 399
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 82
    sget-object v4, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 107
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 401
    .local v0, implementationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v3, Ljava/io/ObjectInputStream;

    .line 402
    .local v3, thisClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 403
    .local v2, sm:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2f

    if-eq v0, v3, :cond_2f

    .line 404
    new-instance v4, Ljava/io/ObjectInputStream$1;

    invoke-direct {v4, p0, v0, v3}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/io/ObjectInputStream;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 430
    .local v1, mustCheck:Z
    if-eqz v1, :cond_2f

    .line 431
    sget-object v4, Ljava/io/ObjectStreamConstants;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 435
    .end local v1           #mustCheck:Z
    :cond_2f
    instance-of v4, p1, Ljava/io/DataInputStream;

    if-eqz v4, :cond_5b

    check-cast p1, Ljava/io/DataInputStream;

    .end local p1
    move-object v4, p1

    :goto_36
    iput-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    .line 437
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    .line 438
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 439
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 440
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v4, p0, Ljava/io/ObjectInputStream;->readResolveCache:Ljava/util/IdentityHashMap;

    .line 441
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 442
    iput v5, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    .line 445
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 447
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 448
    sget-object v4, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 449
    return-void

    .line 435
    .restart local p1
    :cond_5b
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_36
.end method

.method private checkReadPrimitiveTypes()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_12

    .line 509
    :cond_e
    :goto_e
    return-void

    .line 503
    .local v0, next:I
    :pswitch_f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 487
    .end local v0           #next:I
    :cond_12
    const/4 v0, 0x0

    .line 488
    .restart local v0       #next:I
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v1, :cond_26

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 494
    :goto_1a
    iget-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    packed-switch v1, :pswitch_data_48

    .line 506
    :pswitch_1f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 507
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_e

    .line 491
    :cond_26
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 492
    int-to-byte v1, v0

    iput-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_1a

    .line 496
    :pswitch_30
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_e

    .line 499
    :pswitch_3c
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_e

    .line 494
    :pswitch_data_48
    .packed-switch 0x77
        :pswitch_30
        :pswitch_1f
        :pswitch_f
        :pswitch_3c
    .end packed-switch
.end method

.method private static checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V
    .registers 3
    .parameter "desc"
    .parameter "superDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2966
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0

    .line 2968
    :cond_c
    invoke-virtual {p0, p1}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 2969
    return-void
.end method

.method private discardData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    sget-object v2, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 822
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 823
    .local v0, resolve:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 825
    :goto_9
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v1

    .line 826
    .local v1, tc:B
    const/16 v2, 0x78

    if-ne v1, v2, :cond_14

    .line 827
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 828
    return-void

    .line 830
    :cond_14
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readContent(B)Ljava/lang/Object;

    goto :goto_9
.end method

.method private findStreamSuperclass(Ljava/lang/Class;Ljava/util/ArrayList;I)I
    .registers 9
    .parameter
    .parameter
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1468
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, classList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/ObjectStreamClass;>;"
    move v1, p3

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3e

    .line 1469
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ObjectStreamClass;

    .line 1470
    .local v2, objCl:Ljava/io/ObjectStreamClass;
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, forName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1473
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v1

    .line 1483
    .end local v0           #forName:Ljava/lang/String;
    .end local v2           #objCl:Ljava/io/ObjectStreamClass;
    :goto_2e
    return v3

    .line 1478
    .restart local v0       #forName:Ljava/lang/String;
    .restart local v2       #objCl:Ljava/io/ObjectStreamClass;
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v1

    .line 1479
    goto :goto_2e

    .line 1468
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1483
    .end local v0           #forName:Ljava/lang/String;
    .end local v2           #objCl:Ljava/io/ObjectStreamClass;
    :cond_3e
    const/4 v3, -0x1

    goto :goto_2e
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fullName"

    .prologue
    .line 2954
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2956
    .local v0, k:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_13

    :cond_11
    move-object v1, p0

    .line 2959
    :goto_12
    return-object v1

    :cond_13
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method private static getClosestUserClassLoader()Ljava/lang/ClassLoader;
    .registers 8

    .prologue
    .line 2335
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ldalvik/system/VMStack;->getClasses(IZ)[Ljava/lang/Class;

    move-result-object v5

    .line 2336
    .local v5, stackClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Class;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_20

    aget-object v4, v0, v1

    .line 2337
    .local v4, stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2338
    .local v3, loader:Ljava/lang/ClassLoader;
    if-eqz v3, :cond_1d

    sget-object v6, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_1d

    sget-object v6, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_1d

    move-object v6, v3

    .line 2343
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1c
    return-object v6

    .line 2336
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    .restart local v4       #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2343
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_20
    const/4 v6, 0x0

    goto :goto_1c
.end method

.method private inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, c1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, c2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 593
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, nameC1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, nameC2:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 596
    .local v0, indexDotC1:I
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 599
    .local v1, indexDotC2:I
    if-eq v0, v1, :cond_17

    move v4, v5

    .line 607
    :goto_16
    return v4

    .line 604
    :cond_17
    if-gez v0, :cond_1b

    .line 605
    const/4 v4, 0x1

    goto :goto_16

    .line 607
    :cond_1b
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_16
.end method

.method private static native newInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private nextHandle()I
    .registers 3

    .prologue
    .line 637
    iget v0, p0, Ljava/io/ObjectInputStream;->currentHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->currentHandle:I

    return v0
.end method

.method private nextTC()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v0, :cond_a

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 659
    :goto_7
    iget-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    return v0

    .line 657
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_7
.end method

.method private static native objSetField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private pushbackTC()V
    .registers 2

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 667
    return-void
.end method

.method private readBlockData()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    new-array v0, v1, [B

    .line 745
    .local v0, result:[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 746
    return-object v0
.end method

.method private readBlockDataLong()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v0, v1, [B

    .line 761
    .local v0, result:[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 762
    return-object v0
.end method

.method private readClassDesc()Ljava/io/ObjectStreamClass;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 849
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 850
    .local v2, tc:B
    sparse-switch v2, :sswitch_data_4a

    .line 867
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "K00d2"

    and-int/lit16 v5, v2, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 852
    :sswitch_1a
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 865
    .end local p0
    :goto_1e
    return-object v3

    .line 854
    .restart local p0
    :sswitch_1f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewProxyClassDesc()Ljava/lang/Class;

    move-result-object v0

    .line 855
    .local v0, proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 857
    .local v1, streamClass:Ljava/io/ObjectStreamClass;
    new-array v3, v4, [Ljava/io/ObjectStreamField;

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 858
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v3, v4}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 860
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    move-object v3, v1

    .line 861
    goto :goto_1e

    .line 863
    .end local v0           #proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #streamClass:Ljava/io/ObjectStreamClass;
    :sswitch_40
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/ObjectStreamClass;

    move-object v3, p0

    goto :goto_1e

    .line 865
    .restart local p0
    :sswitch_48
    const/4 v3, 0x0

    goto :goto_1e

    .line 850
    :sswitch_data_4a
    .sparse-switch
        0x70 -> :sswitch_48
        0x71 -> :sswitch_40
        0x72 -> :sswitch_1a
        0x7d -> :sswitch_1f
    .end sparse-switch
.end method

.method private readContent(B)Ljava/lang/Object;
    .registers 6
    .parameter "tc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 889
    packed-switch p1, :pswitch_data_5c

    .line 917
    :pswitch_5
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "K00d2"

    and-int/lit16 v3, p1, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 891
    :pswitch_17
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v1

    .line 915
    :goto_1b
    return-object v1

    .line 893
    :pswitch_1c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v1

    goto :goto_1b

    .line 895
    :pswitch_21
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1b

    .line 897
    :pswitch_26
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    goto :goto_1b

    .line 899
    :pswitch_2b
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1b

    .line 901
    :pswitch_30
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1b

    .line 903
    :pswitch_35
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1b

    .line 905
    :pswitch_3a
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1b

    .line 907
    :pswitch_3f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1b

    :pswitch_44
    move-object v1, v2

    .line 909
    goto :goto_1b

    .line 911
    :pswitch_46
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v0

    .line 912
    .local v0, exc:Ljava/lang/Exception;
    new-instance v1, Ljava/io/WriteAbortedException;

    const-string v2, "K00d3"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 914
    .end local v0           #exc:Ljava/lang/Exception;
    :pswitch_56
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    move-object v1, v2

    .line 915
    goto :goto_1b

    .line 889
    nop

    :pswitch_data_5c
    .packed-switch 0x70
        :pswitch_44
        :pswitch_3f
        :pswitch_26
        :pswitch_30
        :pswitch_35
        :pswitch_2b
        :pswitch_21
        :pswitch_17
        :pswitch_5
        :pswitch_56
        :pswitch_1c
        :pswitch_46
        :pswitch_3a
    .end packed-switch
.end method

.method private readCyclicReference()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->registeredObjectRead(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readEnum(Z)Ljava/lang/Object;
    .registers 9
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1791
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1792
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1795
    .local v2, newHandle:Ljava/lang/Integer;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v4

    .line 1796
    .local v4, tc:B
    packed-switch v4, :pswitch_data_4a

    .line 1808
    :pswitch_13
    new-instance v5, Ljava/io/StreamCorruptedException;

    const-string v6, "K00d2"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1798
    :pswitch_1f
    if-eqz p1, :cond_30

    .line 1799
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()Ljava/lang/Integer;

    .line 1800
    new-instance v5, Ljava/io/InvalidObjectException;

    const-string v6, "KA002"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1802
    :cond_30
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1811
    .local v1, name:Ljava/lang/String;
    :goto_36
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    .line 1812
    .local v3, result:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-direct {p0, v3, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 1814
    return-object v3

    .line 1805
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    :pswitch_42
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1806
    .restart local v1       #name:Ljava/lang/String;
    goto :goto_36

    .line 1796
    nop

    :pswitch_data_4a
    .packed-switch 0x71
        :pswitch_1f
        :pswitch_13
        :pswitch_13
        :pswitch_42
    .end packed-switch
.end method

.method private readEnumDesc()Ljava/io/ObjectStreamClass;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1737
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v0

    .line 1738
    .local v0, tc:B
    packed-switch v0, :pswitch_data_28

    .line 1746
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "K00d2"

    and-int/lit16 v3, v0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1740
    :pswitch_19
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDescInternal()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1744
    .end local p0
    :goto_1d
    return-object v1

    .line 1742
    .restart local p0
    :pswitch_1e
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/ObjectStreamClass;

    move-object v1, p0

    goto :goto_1d

    .line 1744
    .restart local p0
    :pswitch_26
    const/4 v1, 0x0

    goto :goto_1d

    .line 1738
    :pswitch_data_28
    .packed-switch 0x70
        :pswitch_26
        :pswitch_1e
        :pswitch_19
    .end packed-switch
.end method

.method private readEnumDescInternal()Ljava/io/ObjectStreamClass;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1754
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1755
    iget-object v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1756
    .local v1, oldHandle:Ljava/lang/Integer;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1757
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1758
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    iget-object v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    if-eqz v4, :cond_20

    .line 1759
    iget-object v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 1761
    :cond_20
    iput-object v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1762
    sget-object v4, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1763
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1765
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1766
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1767
    .local v2, superClass:Ljava/io/ObjectStreamClass;
    invoke-static {v0, v2}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1769
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_47

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_57

    .line 1771
    :cond_47
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "K00da"

    invoke-static {v6, v2, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1775
    :cond_57
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v3

    .line 1777
    .local v3, tc:B
    const/16 v4, 0x78

    if-ne v3, v4, :cond_67

    .line 1779
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 1784
    :goto_66
    return-object v0

    .line 1782
    :cond_67
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_66
.end method

.method private readException()Ljava/lang/Exception;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/WriteAbortedException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1050
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 1056
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 1060
    .local v0, exc:Ljava/lang/Exception;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 1061
    return-object v0
.end method

.method private readFieldDescriptors(Ljava/io/ObjectStreamClass;)V
    .registers 12
    .parameter "cDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 1083
    .local v6, numFields:S
    new-array v3, v6, [Ljava/io/ObjectStreamField;

    .line 1087
    .local v3, fields:[Ljava/io/ObjectStreamField;
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 1090
    const/4 v4, 0x0

    .local v4, i:S
    :goto_c
    if-ge v4, v6, :cond_42

    .line 1091
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    int-to-char v8, v9

    .line 1092
    .local v8, typecode:C
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, fieldName:Ljava/lang/String;
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->isPrimitiveType(C)Z

    move-result v5

    .line 1095
    .local v5, isPrimType:Z
    if-eqz v5, :cond_30

    .line 1096
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, classSig:Ljava/lang/String;
    :goto_25
    new-instance v1, Ljava/io/ObjectStreamField;

    invoke-direct {v1, v0, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .local v1, f:Ljava/io/ObjectStreamField;
    aput-object v1, v3, v4

    .line 1090
    add-int/lit8 v9, v4, 0x1

    int-to-short v4, v9

    goto :goto_c

    .line 1104
    .end local v0           #classSig:Ljava/lang/String;
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :cond_30
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 1106
    .local v7, old:Z
    const/4 v9, 0x0

    :try_start_33
    iput-boolean v9, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 1107
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3e

    .line 1109
    .restart local v0       #classSig:Ljava/lang/String;
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    goto :goto_25

    .end local v0           #classSig:Ljava/lang/String;
    :catchall_3e
    move-exception v9

    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    throw v9

    .line 1115
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v5           #isPrimType:Z
    .end local v7           #old:Z
    .end local v8           #typecode:C
    :cond_42
    return-void
.end method

.method private readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V
    .registers 11
    .parameter "emulatedFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/io/InvalidClassException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForLoading;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v5

    .line 1170
    .local v5, slots:[Ljava/io/EmulatedFields$ObjectSlot;
    move-object v0, v5

    .local v0, arr$:[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_b5

    aget-object v2, v0, v3

    .line 1171
    .local v2, element:Ljava/io/EmulatedFields$ObjectSlot;
    const/4 v7, 0x0

    iput-boolean v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 1172
    iget-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 1173
    .local v6, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2b

    .line 1174
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 1170
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1175
    :cond_2b
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3c

    .line 1176
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1177
    :cond_3c
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4d

    .line 1178
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1179
    :cond_4d
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5e

    .line 1180
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1181
    :cond_5e
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6f

    .line 1182
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1183
    :cond_6f
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_80

    .line 1184
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1185
    :cond_80
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_91

    .line 1186
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1187
    :cond_91
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_a2

    .line 1188
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_28

    .line 1192
    :cond_a2
    :try_start_a2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;
    :try_end_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a2 .. :try_end_a8} :catch_a9

    goto :goto_28

    .line 1193
    :catch_a9
    move-exception v7

    move-object v1, v7

    .line 1196
    .local v1, cnf:Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1200
    .end local v1           #cnf:Ljava/lang/ClassNotFoundException;
    .end local v2           #element:Ljava/io/EmulatedFields$ObjectSlot;
    .end local v6           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b5
    return-void
.end method

.method private readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 26
    .parameter "obj"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v11

    .line 1234
    .local v11, fields:[Ljava/io/ObjectStreamField;
    if-nez v11, :cond_10

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 1235
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v6

    .line 1236
    .local v6, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v6, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v17, v0

    if-eqz v17, :cond_28

    .line 1237
    new-instance v17, Ljava/lang/ClassNotFoundException;

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1240
    :cond_28
    move-object v5, v11

    .local v5, arr$:[Ljava/io/ObjectStreamField;
    array-length v13, v5

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2b
    if-ge v12, v13, :cond_1c3

    aget-object v8, v5, v12

    .line 1242
    .local v8, fieldDesc:Ljava/io/ObjectStreamField;
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v17

    if-eqz v17, :cond_11b

    .line 1244
    :try_start_35
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v17

    sparse-switch v17, :sswitch_data_1c4

    .line 1278
    new-instance v17, Ljava/io/StreamCorruptedException;

    const-string v18, "K00d5"

    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v19

    invoke-static/range {v18 .. v19}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1281
    :catch_4c
    move-exception v17

    .line 1240
    :cond_4d
    :goto_4d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .line 1246
    :sswitch_50
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;B)V

    goto :goto_4d

    .line 1250
    :sswitch_69
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readChar()C

    move-result v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;C)V

    goto :goto_4d

    .line 1254
    :sswitch_82
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;D)V

    goto :goto_4d

    .line 1258
    :sswitch_9b
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readFloat()F

    move-result v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;F)V

    goto :goto_4d

    .line 1262
    :sswitch_b4
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;I)V

    goto :goto_4d

    .line 1266
    :sswitch_cd
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;J)V

    goto/16 :goto_4d

    .line 1270
    :sswitch_e7
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    move-result v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;S)V

    goto/16 :goto_4d

    .line 1274
    :sswitch_101
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Z)V
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_119} :catch_4c

    goto/16 :goto_4d

    .line 1285
    :cond_11b
    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1286
    .local v9, fieldName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1287
    .local v14, setBack:Z
    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v7

    .line 1288
    .local v7, field:Ljava/io/ObjectStreamField;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13a

    if-nez v7, :cond_13a

    .line 1289
    const/4 v14, 0x1

    .line 1290
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 1293
    :cond_13a
    if-eqz v7, :cond_1ab

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v17

    if-eqz v17, :cond_1ab

    .line 1294
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v15

    .line 1298
    .local v15, toSet:Ljava/lang/Object;
    :goto_146
    if-eqz v14, :cond_150

    .line 1299
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 1301
    :cond_150
    if-eqz v7, :cond_4d

    .line 1302
    if-eqz v15, :cond_4d

    .line 1311
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v10

    .line 1313
    .local v10, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 1314
    .local v16, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-nez v17, :cond_1b0

    .line 1315
    new-instance v17, Ljava/lang/ClassCastException;

    const-string v18, "K00d4"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1296
    .end local v10           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #toSet:Ljava/lang/Object;
    .end local v16           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1ab
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #toSet:Ljava/lang/Object;
    goto :goto_146

    .line 1322
    .restart local v10       #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v16       #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1b0
    :try_start_1b0
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    move-object/from16 v3, v17

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/io/ObjectInputStream;->objSetField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1be} :catch_1c0

    goto/16 :goto_4d

    .line 1324
    :catch_1c0
    move-exception v17

    goto/16 :goto_4d

    .line 1331
    .end local v7           #field:Ljava/io/ObjectStreamField;
    .end local v8           #fieldDesc:Ljava/io/ObjectStreamField;
    .end local v9           #fieldName:Ljava/lang/String;
    .end local v10           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v14           #setBack:Z
    .end local v15           #toSet:Ljava/lang/Object;
    .end local v16           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1c3
    return-void

    .line 1244
    :sswitch_data_1c4
    .sparse-switch
        0x42 -> :sswitch_50
        0x43 -> :sswitch_69
        0x44 -> :sswitch_82
        0x46 -> :sswitch_9b
        0x49 -> :sswitch_b4
        0x4a -> :sswitch_cd
        0x53 -> :sswitch_e7
        0x5a -> :sswitch_101
    .end sparse-switch
.end method

.method private readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 16
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1419
    if-nez p1, :cond_c

    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v12, :cond_c

    .line 1420
    new-instance v12, Ljava/io/NotActiveException;

    invoke-direct {v12}, Ljava/io/NotActiveException;-><init>()V

    throw v12

    .line 1423
    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0x20

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1425
    .local v8, streamClassList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/ObjectStreamClass;>;"
    move-object v6, p2

    .line 1426
    .local v6, nextStreamClass:Ljava/io/ObjectStreamClass;
    :goto_14
    if-eqz v6, :cond_1f

    .line 1427
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1428
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v6

    goto :goto_14

    .line 1430
    :cond_1f
    if-nez p1, :cond_36

    .line 1431
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1432
    .local v9, streamIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/ObjectStreamClass;>;"
    :goto_25
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 1433
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/ObjectStreamClass;

    .line 1434
    .local v7, streamClass:Ljava/io/ObjectStreamClass;
    const/4 v12, 0x0

    invoke-direct {p0, v12, v7}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_25

    .line 1437
    .end local v7           #streamClass:Ljava/io/ObjectStreamClass;
    .end local v9           #streamIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/ObjectStreamClass;>;"
    :cond_36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v12, 0x20

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1438
    .local v0, classList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1439
    .local v5, nextClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_41
    if-eqz v5, :cond_4f

    .line 1440
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    .line 1441
    .local v11, testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v11, :cond_4d

    .line 1442
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1444
    :cond_4d
    move-object v5, v11

    .line 1445
    goto :goto_41

    .line 1446
    .end local v11           #testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4f
    const/4 v4, 0x0

    .line 1447
    .local v4, lastIndex:I
    const/4 v1, 0x0

    .end local p2
    .local v1, i:I
    :goto_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_7c

    .line 1448
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 1449
    .local v10, superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v10, v8, v4}, Ljava/io/ObjectInputStream;->findStreamSuperclass(Ljava/lang/Class;Ljava/util/ArrayList;I)I

    move-result v2

    .line 1451
    .local v2, index:I
    const/4 v12, -0x1

    if-ne v2, v12, :cond_6a

    .line 1452
    invoke-direct {p0, p1, v10}, Ljava/io/ObjectInputStream;->readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1447
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 1454
    :cond_6a
    move v3, v4

    .local v3, j:I
    :goto_6b
    if-gt v3, v2, :cond_79

    .line 1455
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, p2}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1454
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 1457
    :cond_79
    add-int/lit8 v4, v2, 0x1

    goto :goto_67

    .line 1461
    .end local v0           #classList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #j:I
    .end local v4           #lastIndex:I
    .end local v5           #nextClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7c
    return-void
.end method

.method private readNewArray(Z)Ljava/lang/Object;
    .registers 25
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1626
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v8

    .line 1628
    .local v8, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v8, :cond_12

    .line 1629
    new-instance v20, Ljava/io/InvalidClassException;

    const-string v21, "K00d1"

    invoke-static/range {v21 .. v21}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1632
    :cond_12
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1635
    .local v15, newHandle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 1636
    .local v19, size:I
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1637
    .local v4, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 1638
    .local v9, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v17

    .line 1640
    .local v17, result:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v15

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 1646
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_1a2

    .line 1647
    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6a

    .line 1648
    move-object/from16 v0, v17

    check-cast v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [I

    move-object v13, v0

    .line 1649
    .local v13, intArray:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_56
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    aput v20, v13, v12

    .line 1649
    add-int/lit8 v12, v12, 0x1

    goto :goto_56

    .line 1652
    .end local v12           #i:I
    .end local v13           #intArray:[I
    :cond_6a
    sget-object v20, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_ab

    .line 1653
    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v6, v0

    .line 1654
    .local v6, byteArray:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1696
    .end local v6           #byteArray:[B
    :cond_8e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->enableResolve:Z

    move/from16 v20, v0

    if-eqz v20, :cond_aa

    .line 1697
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1698
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v15

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 1700
    :cond_aa
    return-object v17

    .line 1655
    :cond_ab
    sget-object v20, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d2

    .line 1656
    move-object/from16 v0, v17

    check-cast v0, [C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [C

    move-object v7, v0

    .line 1657
    .local v7, charArray:[C
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_be
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readChar()C

    move-result v20

    aput-char v20, v7, v12

    .line 1657
    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    .line 1660
    .end local v7           #charArray:[C
    .end local v12           #i:I
    :cond_d2
    sget-object v20, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f6

    .line 1661
    move-object/from16 v0, v17

    check-cast v0, [S

    move-object/from16 v18, v0

    check-cast v18, [S

    .line 1662
    .local v18, shortArray:[S
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_e2
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readShort()S

    move-result v20

    aput-short v20, v18, v12

    .line 1662
    add-int/lit8 v12, v12, 0x1

    goto :goto_e2

    .line 1665
    .end local v12           #i:I
    .end local v18           #shortArray:[S
    :cond_f6
    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11d

    .line 1666
    move-object/from16 v0, v17

    check-cast v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [Z

    move-object v5, v0

    .line 1667
    .local v5, booleanArray:[Z
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_109
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v20

    aput-boolean v20, v5, v12

    .line 1667
    add-int/lit8 v12, v12, 0x1

    goto :goto_109

    .line 1670
    .end local v5           #booleanArray:[Z
    .end local v12           #i:I
    :cond_11d
    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_144

    .line 1671
    move-object/from16 v0, v17

    check-cast v0, [J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [J

    move-object v14, v0

    .line 1672
    .local v14, longArray:[J
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_130
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    aput-wide v20, v14, v12

    .line 1672
    add-int/lit8 v12, v12, 0x1

    goto :goto_130

    .line 1675
    .end local v12           #i:I
    .end local v14           #longArray:[J
    :cond_144
    sget-object v20, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16b

    .line 1676
    move-object/from16 v0, v17

    check-cast v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [F

    move-object v11, v0

    .line 1677
    .local v11, floatArray:[F
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_157
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readFloat()F

    move-result v20

    aput v20, v11, v12

    .line 1677
    add-int/lit8 v12, v12, 0x1

    goto :goto_157

    .line 1680
    .end local v11           #floatArray:[F
    .end local v12           #i:I
    :cond_16b
    sget-object v20, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object v0, v9

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_192

    .line 1681
    move-object/from16 v0, v17

    check-cast v0, [D

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [D

    move-object v10, v0

    .line 1682
    .local v10, doubleArray:[D
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_17e
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v20

    aput-wide v20, v10, v12

    .line 1682
    add-int/lit8 v12, v12, 0x1

    goto :goto_17e

    .line 1686
    .end local v10           #doubleArray:[D
    .end local v12           #i:I
    :cond_192
    new-instance v20, Ljava/lang/ClassNotFoundException;

    const-string v21, "K00d7"

    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1691
    :cond_1a2
    move-object/from16 v0, v17

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 1692
    .local v16, objectArray:[Ljava/lang/Object;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1af
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_8e

    .line 1693
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v16, v12

    .line 1692
    add-int/lit8 v12, v12, 0x1

    goto :goto_1af
.end method

.method private readNewClass(Z)Ljava/lang/Class;
    .registers 7
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1718
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1720
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    if-eqz v0, :cond_18

    .line 1721
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1722
    .local v2, newHandle:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1723
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_17

    .line 1724
    invoke-direct {p0, v1, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 1726
    :cond_17
    return-object v1

    .line 1728
    .end local v1           #localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #newHandle:Ljava/lang/Integer;
    :cond_18
    new-instance v3, Ljava/io/InvalidClassException;

    const-string v4, "K00d1"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readNewClassDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 12
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1836
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1837
    iget-object v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1838
    .local v8, oldHandle:Ljava/lang/Integer;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1839
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v7

    .line 1840
    .local v7, newClassDesc:Ljava/io/ObjectStreamClass;
    iget-object v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    if-eqz v9, :cond_1d

    .line 1841
    iget-object v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    invoke-direct {p0, v7, v9, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 1843
    :cond_1d
    iput-object v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1844
    sget-object v9, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1848
    :try_start_23
    invoke-virtual {p0, v7}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1850
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->verifySUID(Ljava/io/ObjectStreamClass;)V

    .line 1852
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->verifyBaseName(Ljava/io/ObjectStreamClass;)V
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_30} :catch_50

    .line 1862
    :cond_30
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 1863
    .local v3, fields:[Ljava/io/ObjectStreamField;
    if-nez v3, :cond_3a

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/io/ObjectStreamField;

    move-object v3, v9

    .line 1864
    :cond_3a
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_57

    iget-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    move-object v6, v9

    .line 1866
    .local v6, loader:Ljava/lang/ClassLoader;
    :goto_43
    move-object v0, v3

    .local v0, arr$:[Ljava/io/ObjectStreamField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_46
    if-ge v4, v5, :cond_61

    aget-object v2, v0, v4

    .line 1867
    .local v2, element:Ljava/io/ObjectStreamField;
    invoke-virtual {v2, v6}, Ljava/io/ObjectStreamField;->resolve(Ljava/lang/ClassLoader;)V

    .line 1866
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 1853
    .end local v0           #arr$:[Ljava/io/ObjectStreamField;
    .end local v2           #element:Ljava/io/ObjectStreamField;
    .end local v3           #fields:[Ljava/io/ObjectStreamField;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #loader:Ljava/lang/ClassLoader;
    :catch_50
    move-exception v9

    move-object v1, v9

    .line 1854
    .local v1, e:Ljava/lang/ClassNotFoundException;
    iget-boolean v9, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v9, :cond_30

    .line 1855
    throw v1

    .line 1864
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v3       #fields:[Ljava/io/ObjectStreamField;
    :cond_57
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v6, v9

    goto :goto_43

    .line 1871
    .restart local v0       #arr$:[Ljava/io/ObjectStreamField;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #loader:Ljava/lang/ClassLoader;
    :cond_61
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1872
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1873
    return-object v7
.end method

.method private readNewHandle()Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1979
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private readNewLongString(Z)Ljava/lang/Object;
    .registers 8
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2216
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 2217
    .local v0, length:J
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v3

    .line 2218
    .local v3, result:Ljava/lang/String;
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v4, :cond_15

    .line 2219
    invoke-virtual {p0, v3}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2221
    .end local v3           #result:Ljava/lang/String;
    :cond_15
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    .line 2222
    .local v2, newHandle:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 2224
    return-object v3
.end method

.method private readNewObject(Z)Ljava/lang/Object;
    .registers 25
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2006
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v5

    .line 2008
    .local v5, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v5, :cond_12

    .line 2009
    new-instance v20, Ljava/io/InvalidClassException;

    const-string v21, "K00d1"

    invoke-static/range {v21 .. v21}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 2012
    :cond_12
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2017
    .local v11, newHandle:Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v20

    and-int/lit8 v20, v20, 0x4

    if-lez v20, :cond_49

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 2018
    .local v18, wasExternalizable:Z
    :goto_26
    invoke-virtual {v5}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-lez v20, :cond_4e

    const/16 v20, 0x1

    move/from16 v19, v20

    .line 2023
    .local v19, wasSerializable:Z
    :goto_32
    invoke-virtual {v5}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v12

    .line 2025
    .local v12, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .line 2026
    .local v15, registeredResult:Ljava/lang/Object;
    if-eqz v12, :cond_178

    .line 2030
    move-object v7, v12

    .line 2034
    .local v7, constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v19, :cond_53

    .line 2039
    :goto_3c
    if-eqz v7, :cond_53

    invoke-static {v7}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_53

    .line 2040
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_3c

    .line 2017
    .end local v7           #constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #registeredResult:Ljava/lang/Object;
    .end local v18           #wasExternalizable:Z
    .end local v19           #wasSerializable:Z
    :cond_49
    const/16 v20, 0x0

    move/from16 v18, v20

    goto :goto_26

    .line 2018
    .restart local v18       #wasExternalizable:Z
    :cond_4e
    const/16 v20, 0x0

    move/from16 v19, v20

    goto :goto_32

    .line 2045
    .restart local v7       #constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v12       #objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #registeredResult:Ljava/lang/Object;
    .restart local v19       #wasSerializable:Z
    :cond_53
    const/4 v6, 0x0

    .line 2046
    .local v6, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v7, :cond_5f

    .line 2048
    :try_start_56
    sget-object v20, Ljava/io/ObjectStreamClass;->EMPTY_CONSTRUCTOR_PARAM_TYPES:[Ljava/lang/Class;

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_56 .. :try_end_5e} :catch_1e6

    move-result-object v6

    .line 2056
    :cond_5f
    :goto_5f
    if-nez v6, :cond_71

    .line 2057
    new-instance v20, Ljava/io/InvalidClassException;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "K00dc"

    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v20

    .line 2061
    :cond_71
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v8

    .line 2065
    .local v8, constructorModifiers:I
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v20

    if-nez v20, :cond_83

    if-eqz v18, :cond_93

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v20

    if-nez v20, :cond_93

    .line 2068
    :cond_83
    new-instance v20, Ljava/io/InvalidClassException;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "K00dc"

    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v20

    .line 2076
    :cond_93
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v20

    if-nez v20, :cond_b9

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v20

    if-nez v20, :cond_b9

    .line 2080
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectInputStream;->inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_b9

    .line 2081
    new-instance v20, Ljava/io/InvalidClassException;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "K00dc"

    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v20

    .line 2088
    :cond_b9
    invoke-static {v12, v7}, Ljava/io/ObjectInputStream;->newInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    .line 2089
    .local v16, result:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v11

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 2091
    move-object/from16 v15, v16

    .line 2101
    .end local v6           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v7           #constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #constructorModifiers:I
    .end local v15           #registeredResult:Ljava/lang/Object;
    .end local v16           #result:Ljava/lang/Object;
    :goto_c9
    :try_start_c9
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 2102
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 2105
    if-eqz v18, :cond_19e

    .line 2106
    invoke-virtual {v5}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v20

    and-int/lit8 v20, v20, 0x8

    if-lez v20, :cond_17c

    const/16 v20, 0x1

    move/from16 v4, v20

    .line 2107
    .local v4, blockData:Z
    :goto_e2
    if-nez v4, :cond_f0

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 2110
    :cond_f0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v20, v0

    if-eqz v20, :cond_103

    .line 2111
    move-object/from16 v0, v16

    check-cast v0, Ljava/io/Externalizable;

    move-object v9, v0

    .line 2112
    .local v9, extern:Ljava/io/Externalizable;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 2114
    .end local v9           #extern:Ljava/io/Externalizable;
    :cond_103
    if-eqz v4, :cond_182

    .line 2117
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_108
    .catchall {:try_start_c9 .. :try_end_108} :catchall_18c

    .line 2129
    .end local v4           #blockData:Z
    :goto_108
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 2130
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 2133
    if-eqz v12, :cond_1e9

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->readResolveCache:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2135
    .local v14, readResolveMethod:Ljava/lang/Object;
    move-object v0, v14

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_1e9

    .line 2136
    if-nez v14, :cond_143

    .line 2137
    invoke-static {v12}, Ljava/io/ObjectStreamClass;->methodReadResolve(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 2139
    .local v13, readResolve:Ljava/lang/reflect/Method;
    if-nez v13, :cond_1a8

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->readResolveCache:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    const/4 v14, 0x0

    .line 2150
    .end local v13           #readResolve:Ljava/lang/reflect/Method;
    .end local v14           #readResolveMethod:Ljava/lang/Object;
    :cond_143
    :goto_143
    if-eqz v14, :cond_1e9

    .line 2152
    :try_start_145
    check-cast v14, Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_151
    .catch Ljava/lang/IllegalAccessException; {:try_start_145 .. :try_end_151} :catch_1c2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_145 .. :try_end_151} :catch_1c6

    move-result-object v16

    .restart local v16       #result:Ljava/lang/Object;
    move-object/from16 v20, v16

    .line 2174
    .end local v16           #result:Ljava/lang/Object;
    :goto_154
    if-eqz v20, :cond_168

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->enableResolve:Z

    move/from16 v21, v0

    if-eqz v21, :cond_168

    .line 2175
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16       #result:Ljava/lang/Object;
    move-object/from16 v20, v16

    .line 2177
    .end local v16           #result:Ljava/lang/Object;
    :cond_168
    move-object v0, v15

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_177

    .line 2178
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v11

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 2180
    :cond_177
    return-object v20

    .line 2093
    .restart local v15       #registeredResult:Ljava/lang/Object;
    :cond_178
    const/16 v16, 0x0

    .restart local v16       #result:Ljava/lang/Object;
    goto/16 :goto_c9

    .line 2106
    .end local v15           #registeredResult:Ljava/lang/Object;
    .end local v16           #result:Ljava/lang/Object;
    :cond_17c
    const/16 v20, 0x0

    move/from16 v4, v20

    goto/16 :goto_e2

    .line 2119
    .restart local v4       #blockData:Z
    :cond_182
    :try_start_182
    sget-object v20, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_18a
    .catchall {:try_start_182 .. :try_end_18a} :catchall_18c

    goto/16 :goto_108

    .line 2129
    .end local v4           #blockData:Z
    :catchall_18c
    move-exception v20

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 2130
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v20

    .line 2124
    :cond_19e
    :try_start_19e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectInputStream;->readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_1a6
    .catchall {:try_start_19e .. :try_end_1a6} :catchall_18c

    goto/16 :goto_108

    .line 2144
    .restart local v13       #readResolve:Ljava/lang/reflect/Method;
    .restart local v14       #readResolveMethod:Ljava/lang/Object;
    :cond_1a8
    new-instance v20, Lorg/apache/harmony/luni/util/PriviAction;

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static/range {v20 .. v20}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->readResolveCache:Ljava/util/IdentityHashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    move-object v14, v13

    .local v14, readResolveMethod:Ljava/lang/reflect/Method;
    goto :goto_143

    .line 2154
    .end local v13           #readResolve:Ljava/lang/reflect/Method;
    .end local v14           #readResolveMethod:Ljava/lang/reflect/Method;
    :catch_1c2
    move-exception v20

    move-object/from16 v20, v16

    .line 2164
    goto :goto_154

    .line 2155
    :catch_1c6
    move-exception v20

    move-object/from16 v10, v20

    .line 2156
    .local v10, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v17

    .line 2157
    .local v17, target:Ljava/lang/Throwable;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/io/ObjectStreamException;

    move/from16 v20, v0

    if-eqz v20, :cond_1d8

    .line 2158
    check-cast v17, Ljava/io/ObjectStreamException;

    .end local v17           #target:Ljava/lang/Throwable;
    throw v17

    .line 2159
    .restart local v17       #target:Ljava/lang/Throwable;
    :cond_1d8
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v20, v0

    if-eqz v20, :cond_1e3

    .line 2160
    check-cast v17, Ljava/lang/Error;

    .end local v17           #target:Ljava/lang/Throwable;
    throw v17

    .line 2162
    .restart local v17       #target:Ljava/lang/Throwable;
    :cond_1e3
    check-cast v17, Ljava/lang/RuntimeException;

    .end local v17           #target:Ljava/lang/Throwable;
    throw v17

    .line 2050
    .end local v10           #ite:Ljava/lang/reflect/InvocationTargetException;
    .restart local v6       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v7       #constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #registeredResult:Ljava/lang/Object;
    :catch_1e6
    move-exception v20

    goto/16 :goto_5f

    .end local v6           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v7           #constructorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #registeredResult:Ljava/lang/Object;
    :cond_1e9
    move-object/from16 v20, v16

    goto/16 :goto_154
.end method

.method private readNewProxyClassDesc()Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1891
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1892
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 1893
    .local v2, interfaceNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_16

    .line 1894
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1893
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1896
    :cond_16
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1898
    .local v3, proxy:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1899
    return-object v3
.end method

.method private readNewString(Z)Ljava/lang/Object;
    .registers 5
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2194
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 2195
    .local v1, result:Ljava/lang/String;
    iget-boolean v2, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v2, :cond_e

    .line 2196
    invoke-virtual {p0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2198
    .end local v1           #result:Ljava/lang/String;
    :cond_e
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v0

    .line 2199
    .local v0, newHandle:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 2201
    return-object v1
.end method

.method private readNonPrimitiveContent(Z)Ljava/lang/Object;
    .registers 8
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 940
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_1c

    .line 941
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 942
    .local v0, e:Ljava/io/OptionalDataException;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, v0, Ljava/io/OptionalDataException;->length:I

    .line 943
    throw v0

    .line 975
    .end local v0           #e:Ljava/io/OptionalDataException;
    .local v2, tc:B
    :pswitch_19
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 947
    .end local v2           #tc:B
    :cond_1c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 948
    .restart local v2       #tc:B
    packed-switch v2, :pswitch_data_8c

    .line 983
    :pswitch_23
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "K00d2"

    and-int/lit16 v5, v2, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 950
    :pswitch_35
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v3

    .line 970
    :goto_39
    return-object v3

    .line 952
    :pswitch_3a
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    goto :goto_39

    .line 954
    :pswitch_3f
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    .line 956
    :pswitch_44
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    .line 958
    :pswitch_49
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    .line 960
    :pswitch_4e
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    .line 962
    :pswitch_53
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    .line 964
    :pswitch_58
    if-eqz p1, :cond_69

    .line 965
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()Ljava/lang/Integer;

    .line 966
    new-instance v3, Ljava/io/InvalidObjectException;

    const-string v4, "KA002"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 968
    :cond_69
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    .line 970
    :pswitch_6e
    const/4 v3, 0x0

    goto :goto_39

    .line 972
    :pswitch_70
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v1

    .line 973
    .local v1, exc:Ljava/lang/Exception;
    new-instance v3, Ljava/io/WriteAbortedException;

    const-string v4, "K00d3"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 978
    .end local v1           #exc:Ljava/lang/Exception;
    :pswitch_80
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    .line 979
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 980
    .restart local v0       #e:Ljava/io/OptionalDataException;
    const/4 v3, 0x1

    iput-boolean v3, v0, Ljava/io/OptionalDataException;->eof:Z

    .line 981
    throw v0

    .line 948
    :pswitch_data_8c
    .packed-switch 0x70
        :pswitch_6e
        :pswitch_58
        :pswitch_3a
        :pswitch_44
        :pswitch_49
        :pswitch_3f
        :pswitch_35
        :pswitch_23
        :pswitch_80
        :pswitch_19
        :pswitch_23
        :pswitch_70
        :pswitch_4e
        :pswitch_23
        :pswitch_53
    .end packed-switch
.end method

.method private readObject(Z)Ljava/lang/Object;
    .registers 12
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2264
    iget-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-ne v6, v7, :cond_1a

    move v4, v8

    .line 2265
    .local v4, restoreInput:Z
    :goto_9
    if-eqz v4, :cond_f

    .line 2266
    sget-object v6, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 2271
    :cond_f
    iget-boolean v6, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    if-eqz v6, :cond_1d

    if-nez p1, :cond_1d

    .line 2272
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v6

    .line 2320
    :goto_19
    return-object v6

    .line 2264
    .end local v4           #restoreInput:Z
    :cond_1a
    const/4 v6, 0x0

    move v4, v6

    goto :goto_9

    .line 2282
    .restart local v4       #restoreInput:Z
    :cond_1d
    :try_start_1d
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-ne v6, v8, :cond_2b

    .line 2285
    invoke-static {}, Ljava/io/ObjectInputStream;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 2289
    :cond_2b
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonPrimitiveContent(Z)Ljava/lang/Object;

    move-result-object v5

    .line 2290
    .local v5, result:Ljava/lang/Object;
    if-eqz v4, :cond_35

    .line 2291
    iget-object v6, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_56

    .line 2296
    :cond_35
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    sub-int/2addr v6, v8

    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_3e

    .line 2300
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 2306
    :cond_3e
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_63

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-eqz v6, :cond_63

    .line 2311
    :try_start_46
    iget-object v0, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .local v0, arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4a
    if-ge v2, v3, :cond_61

    aget-object v1, v0, v2

    .line 2312
    .local v1, element:Ljava/io/ObjectInputStream$InputValidationDesc;
    iget-object v6, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    invoke-interface {v6}, Ljava/io/ObjectInputValidation;->validateObject()V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_65

    .line 2311
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 2296
    .end local v0           #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v1           #element:Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #result:Ljava/lang/Object;
    :catchall_56
    move-exception v6

    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v7, :cond_60

    .line 2300
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :cond_60
    throw v6

    .line 2317
    .restart local v0       #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #result:Ljava/lang/Object;
    :cond_61
    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .end local v0           #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_63
    move-object v6, v5

    .line 2320
    goto :goto_19

    .line 2317
    :catchall_65
    move-exception v6

    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    throw v6
.end method

.method private readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 12
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1516
    iput-object p1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1517
    iput-object p2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1519
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_38

    move v2, v8

    .line 1520
    .local v2, hadWriteMethod:Z
    :goto_10
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1522
    .local v4, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v4, :cond_1a

    iget-boolean v5, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v5, :cond_3a

    .line 1523
    :cond_1a
    const/4 v3, 0x0

    .line 1529
    .local v3, readMethod:Ljava/lang/reflect/Method;
    :goto_1b
    if-eqz v3, :cond_6f

    .line 1531
    :try_start_1d
    new-instance v5, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v5, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_4c

    .line 1534
    const/4 v5, 0x1

    :try_start_26
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_2e} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2e} :catch_63

    .line 1551
    :goto_2e
    if-eqz v2, :cond_33

    .line 1552
    :try_start_30
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4c

    .line 1557
    :cond_33
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1559
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1561
    return-void

    .end local v2           #hadWriteMethod:Z
    .end local v3           #readMethod:Ljava/lang/reflect/Method;
    .end local v4           #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_38
    move v2, v6

    .line 1519
    goto :goto_10

    .line 1525
    .restart local v2       #hadWriteMethod:Z
    .restart local v4       #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3a
    invoke-static {v4}, Ljava/io/ObjectStreamClass;->getPrivateReadObjectMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .restart local v3       #readMethod:Ljava/lang/reflect/Method;
    goto :goto_1b

    .line 1535
    :catch_3f
    move-exception v5

    move-object v0, v5

    .line 1536
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1537
    .local v1, ex:Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v5, :cond_52

    .line 1538
    check-cast v1, Ljava/lang/ClassNotFoundException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_4c

    .line 1557
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catchall_4c
    move-exception v5

    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1559
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v5

    .line 1539
    .restart local v0       #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_52
    :try_start_52
    instance-of v5, v1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_59

    .line 1540
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1541
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_59
    instance-of v5, v1, Ljava/lang/Error;

    if-eqz v5, :cond_60

    .line 1542
    check-cast v1, Ljava/lang/Error;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1544
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_60
    check-cast v1, Ljava/io/IOException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1545
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_63
    move-exception v5

    move-object v0, v5

    .line 1546
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1549
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_6f
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_72
    .catchall {:try_start_52 .. :try_end_72} :catchall_4c

    goto :goto_2e
.end method

.method private readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 8
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1488
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1510
    :cond_6
    :goto_6
    return-void

    .line 1492
    :cond_7
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->getPrivateReadObjectNoDataMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1494
    .local v2, readMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_6

    .line 1495
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v3, v2}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1497
    const/4 v3, 0x0

    :try_start_16
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_1b} :catch_33

    goto :goto_6

    .line 1498
    :catch_1c
    move-exception v3

    move-object v0, v3

    .line 1499
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1500
    .local v1, ex:Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_29

    .line 1501
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1502
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_29
    instance-of v3, v1, Ljava/lang/Error;

    if-eqz v3, :cond_30

    .line 1503
    check-cast v1, Ljava/lang/Error;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1505
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_30
    check-cast v1, Ljava/io/ObjectStreamException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1506
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_33
    move-exception v3

    move-object v0, v3

    .line 1507
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V
    .registers 6
    .parameter "obj"
    .parameter "handle"
    .parameter "unshared"

    .prologue
    .line 2486
    iget-object v0, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/Hashtable;

    if-eqz p3, :cond_a

    sget-object v1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    :goto_6
    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2487
    return-void

    :cond_a
    move-object v1, p1

    .line 2486
    goto :goto_6
.end method

.method private registeredObjectRead(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 5
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2463
    iget-object v1, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2465
    .local v0, res:Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    .line 2466
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "KA010"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2469
    :cond_16
    return-object v0
.end method

.method private resetSeenObjects()V
    .registers 2

    .prologue
    .line 2555
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/Hashtable;

    .line 2556
    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectInputStream;->currentHandle:I

    .line 2557
    sget-object v0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 2558
    return-void
.end method

.method private resetState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2566
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 2567
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 2568
    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    .line 2570
    return-void
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;C)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;S)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private static native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldError;
        }
    .end annotation
.end method

.method private verifyBaseName(Ljava/io/ObjectStreamClass;)V
    .registers 9
    .parameter "loadedStreamClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 2940
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2941
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 2943
    .local v3, localStreamClass:Ljava/io/ObjectStreamClass;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2944
    .local v0, loadedClassBaseName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2946
    .local v2, localClassBaseName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2947
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KA015"

    invoke-static {v6, v0, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2951
    :cond_2e
    return-void
.end method

.method private verifySUID(Ljava/io/ObjectStreamClass;)V
    .registers 8
    .parameter "loadedStreamClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 2910
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 2917
    .local v0, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 2919
    .local v1, localStreamClass:Ljava/io/ObjectStreamClass;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 2921
    new-instance v2, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "K00da"

    invoke-static {v4, p1, v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 2925
    :cond_24
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 466
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 525
    return-void
.end method

.method public defaultReadObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v0, :cond_10

    .line 545
    :cond_8
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 549
    return-void

    .line 547
    :cond_10
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0
.end method

.method protected enableResolveObject(Z)Z
    .registers 5
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 569
    if-eqz p1, :cond_d

    .line 572
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 573
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 574
    sget-object v2, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 577
    .end local v0           #currentManager:Ljava/lang/SecurityManager;
    :cond_d
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 578
    .local v1, originalValue:Z
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 579
    return v1
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 683
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    if-nez p1, :cond_e

    .line 715
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_e
    or-int v0, p2, p3

    if-ltz v0, :cond_16

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_22

    .line 723
    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_22
    if-nez p3, :cond_26

    .line 727
    const/4 v0, 0x0

    .line 730
    :goto_25
    return v0

    .line 729
    :cond_26
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 730
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_25
.end method

.method public readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1915
    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1916
    .local v1, newClassDesc:Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1917
    .local v0, name:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1918
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The stream is corrupted."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1920
    :cond_1b
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 1921
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 1922
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1927
    iget-object v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    if-nez v2, :cond_4b

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3c
    iput-object v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1929
    iget-object v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;Ljava/lang/Integer;Z)V

    .line 1930
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    .line 1932
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readFieldDescriptors(Ljava/io/ObjectStreamClass;)V

    .line 1933
    return-object v1

    .line 1927
    :cond_4b
    iget-object v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:Ljava/lang/Integer;

    goto :goto_3c
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1137
    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v1, :cond_a

    .line 1138
    new-instance v1, Ljava/io/NotActiveException;

    invoke-direct {v1}, Ljava/io/NotActiveException;-><init>()V

    throw v1

    .line 1140
    :cond_a
    new-instance v0, Ljava/io/EmulatedFieldsForLoading;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, v1}, Ljava/io/EmulatedFieldsForLoading;-><init>(Ljava/io/ObjectStreamClass;)V

    .line 1142
    .local v0, result:Ljava/io/EmulatedFieldsForLoading;
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V

    .line 1143
    return-object v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1362
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1363
    return-void
.end method

.method public readFully([BII)V
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1386
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1387
    return-void
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1575
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1591
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1606
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2364
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v0, :cond_6

    .line 2365
    const/4 v0, 0x0

    return-object v0

    .line 2368
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2380
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected readStreamHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2395
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/16 v1, -0x5313

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 2397
    return-void

    .line 2399
    :cond_14
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2448
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2415
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2431
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized registerValidation(Ljava/io/ObjectInputValidation;I)V
    .registers 12
    .parameter "object"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2512
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 2515
    .local v3, instanceBeingRead:Ljava/lang/Object;
    if-nez v3, :cond_e

    .line 2516
    new-instance v6, Ljava/io/NotActiveException;

    invoke-direct {v6}, Ljava/io/NotActiveException;-><init>()V

    throw v6
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 2512
    .end local v3           #instanceBeingRead:Ljava/lang/Object;
    :catchall_b
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2518
    .restart local v3       #instanceBeingRead:Ljava/lang/Object;
    :cond_e
    if-nez p1, :cond_1c

    .line 2519
    :try_start_10
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v7, "K00d9"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2524
    :cond_1c
    new-instance v1, Ljava/io/ObjectInputStream$InputValidationDesc;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$InputValidationDesc;-><init>()V

    .line 2525
    .local v1, desc:Ljava/io/ObjectInputStream$InputValidationDesc;
    iput-object p1, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    .line 2526
    iput p2, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    .line 2529
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-nez v6, :cond_35

    .line 2530
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2531
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v7, 0x0

    aput-object v1, v6, v7
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_b

    .line 2549
    :goto_33
    monitor-exit p0

    return-void

    .line 2533
    :cond_35
    const/4 v2, 0x0

    .line 2534
    .local v2, i:I
    :goto_36
    :try_start_36
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    array-length v6, v6

    if-ge v2, v6, :cond_43

    .line 2535
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aget-object v5, v6, v2

    .line 2537
    .local v5, validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    iget v6, v5, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    if-lt p2, v6, :cond_61

    .line 2541
    .end local v5           #validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_43
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2542
    .local v4, oldValidations:[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v0, v4

    .line 2543
    .local v0, currentSize:I
    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2544
    const/4 v6, 0x0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2545
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v0, v2

    invoke-static {v4, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2547
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aput-object v1, v6, v2
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_b

    goto :goto_33

    .line 2534
    .end local v0           #currentSize:I
    .end local v4           #oldValidations:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v5       #validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_36
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 6
    .parameter "osClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2588
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2590
    .local v0, className:Ljava/lang/String;
    sget-object v2, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2591
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_16

    .line 2595
    const/4 v2, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 2597
    :goto_15
    return-object v2

    :cond_16
    move-object v2, v1

    goto :goto_15
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2619
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .parameter "interfaceNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1957
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1959
    .local v3, loader:Ljava/lang/ClassLoader;
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Class;

    .line 1960
    .local v2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v4, p1

    if-ge v1, v4, :cond_17

    .line 1961
    aget-object v4, p1, v1

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1960
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1964
    :cond_17
    :try_start_17
    invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1a} :catch_1c

    move-result-object v4

    return-object v4

    .line 1965
    :catch_1c
    move-exception v0

    .line 1966
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public skipBytes(I)I
    .registers 8
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2882
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v3, :cond_a

    .line 2883
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2886
    :cond_a
    const/4 v0, 0x0

    .line 2887
    .local v0, offset:I
    :goto_b
    if-ge v0, p1, :cond_24

    .line 2888
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 2889
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    sub-int v4, p1, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 2890
    .local v1, skipped:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_21

    move v3, v0

    .line 2895
    .end local v1           #skipped:J
    :goto_20
    return v3

    .line 2893
    .restart local v1       #skipped:J
    :cond_21
    long-to-int v3, v1

    add-int/2addr v0, v3

    .line 2894
    goto :goto_b

    .end local v1           #skipped:J
    :cond_24
    move v3, p1

    .line 2895
    goto :goto_20
.end method
