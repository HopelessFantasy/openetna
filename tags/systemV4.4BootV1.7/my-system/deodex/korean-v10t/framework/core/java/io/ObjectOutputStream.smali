.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$PutField;
    }
.end annotation


# instance fields
.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentHandle:I

.field private currentObject:Ljava/lang/Object;

.field private currentPutField:Ljava/io/EmulatedFieldsForDumping;

.field private enableReplace:Z

.field private nestedException:Ljava/io/StreamCorruptedException;

.field private nestedLevels:I

.field private objectsWritten:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private output:Ljava/io/DataOutputStream;

.field private primitiveTypes:Ljava/io/DataOutputStream;

.field private primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

.field private protocolVersion:I

.field private subclassOverridingImplementation:Z

.field private writeReplaceCache:Ljava/util/IdentityHashMap;
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


# direct methods
.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 260
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 261
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 262
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 268
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 11
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 286
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 288
    .local v0, implementationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v4, Ljava/io/ObjectOutputStream;

    .line 289
    .local v4, thisClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq v0, v4, :cond_3b

    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, mustCheck:Z
    :try_start_e
    const-string v5, "putFields"

    sget-object v6, Ljava/io/ObjectStreamClass;->EMPTY_CONSTRUCTOR_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 294
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_19} :catch_73

    move-result-object v5

    if-eq v5, v4, :cond_67

    move v2, v8

    .line 297
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_1d
    if-nez v2, :cond_2e

    .line 299
    :try_start_1f
    const-string v5, "writeUnshared"

    sget-object v6, Ljava/io/ObjectStreamClass;->UNSHARED_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 302
    .restart local v1       #method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_2a} :catch_71

    move-result-object v5

    if-eq v5, v4, :cond_69

    move v2, v8

    .line 306
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_3b

    .line 307
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 308
    .local v3, sm:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_3b

    .line 309
    sget-object v5, Ljava/io/ObjectStreamConstants;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 314
    .end local v2           #mustCheck:Z
    .end local v3           #sm:Ljava/lang/SecurityManager;
    :cond_3b
    instance-of v5, p1, Ljava/io/DataOutputStream;

    if-eqz v5, :cond_6b

    check-cast p1, Ljava/io/DataOutputStream;

    .end local p1
    move-object v5, p1

    :goto_42
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    .line 316
    iput-boolean v7, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 317
    const/4 v5, 0x2

    iput v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 318
    iput-boolean v7, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    .line 319
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->writeReplaceCache:Ljava/util/IdentityHashMap;

    .line 321
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 322
    new-instance v5, Ljava/io/StreamCorruptedException;

    invoke-direct {v5}, Ljava/io/StreamCorruptedException;-><init>()V

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    .line 325
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 327
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    .line 328
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 329
    return-void

    .restart local v1       #method:Ljava/lang/reflect/Method;
    .restart local v2       #mustCheck:Z
    .restart local p1
    :cond_67
    move v2, v7

    .line 294
    goto :goto_1d

    :cond_69
    move v2, v7

    .line 302
    goto :goto_2e

    .line 314
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #mustCheck:Z
    :cond_6b
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_42

    .line 303
    .restart local v2       #mustCheck:Z
    :catch_71
    move-exception v5

    goto :goto_2e

    .line 295
    :catch_73
    move-exception v5

    goto :goto_1d
.end method

.method private checkWritePrimitiveTypes()V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-nez v0, :cond_16

    .line 372
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    .line 373
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 375
    :cond_16
    return-void
.end method

.method private computePutField()V
    .registers 3

    .prologue
    .line 401
    new-instance v0, Ljava/io/EmulatedFieldsForDumping;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, v1}, Ljava/io/EmulatedFieldsForDumping;-><init>(Ljava/io/ObjectStreamClass;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 402
    return-void
.end method

.method private dumpCycle(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registeredObjectHandleFor(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 481
    .local v0, handle:Ljava/lang/Integer;
    if-eqz v0, :cond_b

    .line 482
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeCyclicReference(Ljava/lang/Integer;)V

    move-object v1, v0

    .line 485
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static native getFieldBool(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method private static native getFieldByte(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")B"
        }
    .end annotation
.end method

.method private static native getFieldChar(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")C"
        }
    .end annotation
.end method

.method private static native getFieldDouble(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation
.end method

.method private static native getFieldFloat(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation
.end method

.method private static native getFieldInt(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method private static native getFieldLong(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method private static native getFieldObj(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private static native getFieldShort(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation
.end method

.method private nextHandle()I
    .registers 3

    .prologue
    .line 731
    iget v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    return v0
.end method

.method private registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4
    .parameter "obj"

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 786
    .local v0, handle:Ljava/lang/Integer;
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 787
    return-object v0
.end method

.method private registerObjectWritten(Ljava/lang/Object;Ljava/lang/Integer;)V
    .registers 4
    .parameter "obj"
    .parameter "handle"

    .prologue
    .line 819
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    return-void
.end method

.method private registeredObjectHandleFor(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .parameter "obj"

    .prologue
    .line 771
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V
    .registers 4
    .parameter "obj"
    .parameter "previousHandle"

    .prologue
    .line 800
    if-eqz p2, :cond_6

    .line 801
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 805
    :goto_5
    return-void

    .line 803
    :cond_6
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private resetSeenObjects()V
    .registers 2

    .prologue
    .line 875
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    .line 876
    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    .line 877
    return-void
.end method

.method private resetState()V
    .registers 2

    .prologue
    .line 886
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 887
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 888
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)Ljava/lang/Integer;
    .registers 12
    .parameter "classDesc"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x78

    .line 1059
    if-nez p1, :cond_a

    .line 1060
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    move-object v5, v8

    .line 1111
    :goto_9
    return-object v5

    .line 1063
    :cond_a
    const/4 v1, 0x0

    .line 1064
    .local v1, handle:Ljava/lang/Integer;
    if-nez p2, :cond_11

    .line 1065
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 1067
    :cond_11
    if-nez v1, :cond_86

    .line 1068
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1069
    .local v0, classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1072
    .local v4, previousHandle:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 1074
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1075
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 1077
    .local v3, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1078
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3b
    array-length v5, v3

    if-ge v2, v5, :cond_4c

    .line 1079
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1078
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1081
    :cond_4c
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    .line 1082
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1083
    const-class v5, Ljava/lang/reflect/Proxy;

    invoke-direct {p0, v5}, Ljava/io/ObjectOutputStream;->writeClassDescForClass(Ljava/lang/Class;)Ljava/lang/Integer;

    .line 1084
    if-eqz p2, :cond_5e

    .line 1086
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    :cond_5e
    move-object v5, v1

    .line 1088
    goto :goto_9

    .line 1091
    .end local v2           #i:I
    .end local v3           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_60
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x72

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1092
    iget v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_88

    .line 1093
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1102
    :goto_6f
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 1103
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1104
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1105
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)Ljava/lang/Integer;

    .line 1106
    if-eqz p2, :cond_86

    .line 1108
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .end local v0           #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #previousHandle:Ljava/lang/Integer;
    :cond_86
    move-object v5, v1

    .line 1111
    goto :goto_9

    .line 1097
    .restart local v0       #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #previousHandle:Ljava/lang/Integer;
    :cond_88
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1098
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 1099
    iput-object v8, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_6f
.end method

.method private writeClassDescForClass(Ljava/lang/Class;)Ljava/lang/Integer;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private writeCyclicReference(Ljava/lang/Integer;)V
    .registers 4
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1145
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1146
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1147
    return-void
.end method

.method private writeEnumDesc(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .registers 11
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v7, 0x12

    .line 2083
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 2085
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    invoke-virtual {v0, v7}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 2086
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2087
    .local v3, previousHandle:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 2088
    .local v2, handle:Ljava/lang/Integer;
    if-nez p2, :cond_18

    .line 2089
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    .line 2091
    :cond_18
    if-nez v2, :cond_52

    .line 2092
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2095
    .local v1, classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 2097
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x72

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2098
    iget v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_53

    .line 2099
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 2108
    :goto_30
    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 2109
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 2110
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2112
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v4

    .line 2113
    .local v4, superClass:Ljava/io/ObjectStreamClass;
    if-eqz v4, :cond_5e

    .line 2115
    invoke-virtual {v4, v7}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 2116
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    .line 2120
    :goto_4d
    if-eqz p2, :cond_52

    .line 2122
    invoke-direct {p0, v0, v3}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 2125
    .end local v1           #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #superClass:Ljava/io/ObjectStreamClass;
    :cond_52
    return-object v0

    .line 2103
    .restart local v1       #classToWrite:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_53
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 2104
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 2105
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_30

    .line 2118
    .restart local v4       #superClass:Ljava/io/ObjectStreamClass;
    :cond_5e
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_4d
.end method

.method private writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V
    .registers 10
    .parameter "classDesc"
    .parameter "externalizable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1183
    .local v4, loadedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1184
    .local v2, fields:[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    .line 1188
    .local v1, fieldCount:I
    if-nez p2, :cond_11

    sget-object v5, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-eq v4, v5, :cond_11

    .line 1189
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 1190
    array-length v1, v2

    .line 1194
    :cond_11
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1196
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    if-ge v3, v1, :cond_3d

    .line 1197
    aget-object v0, v2, v3

    .line 1198
    .local v0, f:Ljava/io/ObjectStreamField;
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1199
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1201
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1196
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1204
    .end local v0           #f:Ljava/io/ObjectStreamField;
    :cond_3d
    return-void
.end method

.method private writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V
    .registers 12
    .parameter "emulatedFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1242
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForDumping;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v0

    .line 1245
    .local v0, accessibleSimulatedFields:Ljava/io/EmulatedFields;
    invoke-virtual {v0}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v4

    .line 1246
    .local v4, slots:[Ljava/io/EmulatedFields$ObjectSlot;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    array-length v6, v4

    if-ge v2, v6, :cond_c5

    .line 1247
    aget-object v3, v4, v2

    .line 1248
    .local v3, slot:Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v3}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    .line 1249
    .local v1, fieldValue:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 1251
    .local v5, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_31

    .line 1252
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_2f

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_29
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1246
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_2f
    move v7, v9

    .line 1252
    goto :goto_29

    .line 1254
    :cond_31
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_45

    .line 1255
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_43

    check-cast v1, Ljava/lang/Byte;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    :goto_3f
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_2c

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_43
    move v7, v9

    goto :goto_3f

    .line 1257
    :cond_45
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_59

    .line 1258
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_57

    check-cast v1, Ljava/lang/Character;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v7

    :goto_53
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_2c

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_57
    move v7, v9

    goto :goto_53

    .line 1260
    :cond_59
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6d

    .line 1261
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_6b

    check-cast v1, Ljava/lang/Short;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v7

    :goto_67
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2c

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_6b
    move v7, v9

    goto :goto_67

    .line 1263
    :cond_6d
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_81

    .line 1264
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_7f

    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_7b
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_2c

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_7f
    move v7, v9

    goto :goto_7b

    .line 1266
    :cond_81
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_96

    .line 1267
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_93

    check-cast v1, Ljava/lang/Long;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_8f
    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_2c

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_93
    const-wide/16 v7, 0x0

    goto :goto_8f

    .line 1269
    :cond_96
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_aa

    .line 1270
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_a8

    check-cast v1, Ljava/lang/Float;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_a4
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2c

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_a8
    const/4 v7, 0x0

    goto :goto_a4

    .line 1272
    :cond_aa
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_c0

    .line 1273
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_bd

    check-cast v1, Ljava/lang/Double;

    .end local v1           #fieldValue:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    :goto_b8
    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_2c

    .restart local v1       #fieldValue:Ljava/lang/Object;
    :cond_bd
    const-wide/16 v7, 0x0

    goto :goto_b8

    .line 1277
    :cond_c0
    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_2c

    .line 1280
    .end local v1           #fieldValue:Ljava/lang/Object;
    .end local v3           #slot:Ljava/io/EmulatedFields$ObjectSlot;
    .end local v5           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c5
    return-void
.end method

.method private writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 12
    .parameter "obj"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 1303
    .local v3, fields:[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1304
    .local v0, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9
    array-length v6, v3

    if-ge v4, v6, :cond_c3

    .line 1307
    :try_start_c
    aget-object v2, v3, v4

    .line 1308
    .local v2, fieldDesc:Ljava/io/ObjectStreamField;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 1309
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v6

    sparse-switch v6, :sswitch_data_c4

    .line 1343
    new-instance v6, Ljava/io/IOException;

    const-string v7, "K00d5"

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v8

    invoke-static {v7, v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_2b} :catch_2b

    .line 1357
    .end local v2           #fieldDesc:Ljava/io/ObjectStreamField;
    :catch_2b
    move-exception v6

    move-object v5, v6

    .line 1362
    .local v5, nsf:Ljava/lang/NoSuchFieldError;
    new-instance v6, Ljava/io/InvalidClassException;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1311
    .end local v5           #nsf:Ljava/lang/NoSuchFieldError;
    .restart local v2       #fieldDesc:Ljava/io/ObjectStreamField;
    :sswitch_37
    :try_start_37
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldByte(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1304
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1315
    :sswitch_47
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldChar(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_44

    .line 1319
    :sswitch_55
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldDouble(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_44

    .line 1323
    :sswitch_63
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldFloat(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_44

    .line 1327
    :sswitch_71
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldInt(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_44

    .line 1331
    :sswitch_7f
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldLong(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_44

    .line 1335
    :sswitch_8d
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldShort(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_44

    .line 1339
    :sswitch_9b
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Ljava/io/ObjectOutputStream;->getFieldBool(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_44

    .line 1349
    :cond_a9
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v6, v7}, Ljava/io/ObjectOutputStream;->getFieldObj(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1351
    .local v1, field:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 1352
    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeUnshared(Ljava/lang/Object;)V

    goto :goto_44

    .line 1354
    :cond_bf
    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_c2} :catch_2b

    goto :goto_44

    .line 1365
    .end local v1           #field:Ljava/lang/Object;
    .end local v2           #fieldDesc:Ljava/io/ObjectStreamField;
    :cond_c3
    return-void

    .line 1309
    :sswitch_data_c4
    .sparse-switch
        0x42 -> :sswitch_37
        0x43 -> :sswitch_47
        0x44 -> :sswitch_55
        0x46 -> :sswitch_63
        0x49 -> :sswitch_71
        0x4a -> :sswitch_7f
        0x53 -> :sswitch_8d
        0x5a -> :sswitch_9b
    .end sparse-switch
.end method

.method private writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 11
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1408
    if-nez p1, :cond_9

    .line 1409
    new-instance v5, Ljava/io/NotActiveException;

    invoke-direct {v5}, Ljava/io/NotActiveException;-><init>()V

    throw v5

    .line 1414
    :cond_9
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 1416
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1421
    :cond_16
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1422
    iput-object p2, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1425
    const/4 v2, 0x0

    .line 1426
    .local v2, executed:Z
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1428
    .local v4, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1f
    invoke-static {v4}, Ljava/io/ObjectStreamClass;->getPrivateWriteObjectMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1430
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_37

    .line 1433
    new-instance v5, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v5, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_57

    .line 1435
    const/4 v5, 0x1

    :try_start_2e
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_36} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_36} :catch_69

    .line 1436
    const/4 v2, 0x1

    .line 1450
    :cond_37
    if-eqz v2, :cond_75

    .line 1451
    :try_start_39
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1452
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_57

    .line 1461
    :goto_43
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1462
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1463
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1465
    return-void

    .line 1437
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 1438
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_4c
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1439
    .local v1, ex:Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_5f

    .line 1440
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_57

    .line 1461
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catchall_57
    move-exception v5

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1462
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1463
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v5

    .line 1441
    .restart local v0       #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v1       #ex:Ljava/lang/Throwable;
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_5f
    :try_start_5f
    instance-of v5, v1, Ljava/lang/Error;

    if-eqz v5, :cond_66

    .line 1442
    check-cast v1, Ljava/lang/Error;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1444
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_66
    check-cast v1, Ljava/io/IOException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1445
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_69
    move-exception v5

    move-object v0, v5

    .line 1446
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1456
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_75
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_57

    goto :goto_43
.end method

.method private writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/Integer;
    .registers 24
    .parameter "array"
    .parameter
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    .local p2, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    const/16 v17, 0x75

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1517
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;->writeClassDescForClass(Ljava/lang/Class;)Ljava/lang/Integer;

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1520
    .local v14, previousHandle:Ljava/lang/Integer;
    invoke-direct/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v9

    .line 1521
    .local v9, handle:Ljava/lang/Integer;
    if-eqz p4, :cond_30

    .line 1523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 1531
    :cond_30
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v16

    if-eqz v16, :cond_1e5

    .line 1532
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_6a

    .line 1533
    check-cast p1, [I

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v11, v0

    .line 1534
    .local v11, intArray:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v11

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1535
    const/4 v10, 0x0

    .local v10, i:I
    :goto_53
    move-object v0, v11

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    aget v17, v11, v10

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1535
    add-int/lit8 v10, v10, 0x1

    goto :goto_53

    .line 1538
    .end local v10           #i:I
    .end local v11           #intArray:[I
    .restart local p1
    :cond_6a
    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_9d

    .line 1539
    check-cast p1, [B

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v5, v0

    .line 1540
    .local v5, byteArray:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1591
    .end local v5           #byteArray:[B
    :cond_9c
    return-object v9

    .line 1542
    .restart local p1
    :cond_9d
    sget-object v16, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d1

    .line 1543
    check-cast p1, [C

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [C

    move-object v6, v0

    .line 1544
    .local v6, charArray:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1545
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_ba
    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    aget-char v17, v6, v10

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 1545
    add-int/lit8 v10, v10, 0x1

    goto :goto_ba

    .line 1548
    .end local v6           #charArray:[C
    .end local v10           #i:I
    .restart local p1
    :cond_d1
    sget-object v16, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_105

    .line 1549
    check-cast p1, [S

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [S

    move-object v15, v0

    .line 1550
    .local v15, shortArray:[S
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v15

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1551
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_ee
    move-object v0, v15

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    aget-short v17, v15, v10

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1551
    add-int/lit8 v10, v10, 0x1

    goto :goto_ee

    .line 1554
    .end local v10           #i:I
    .end local v15           #shortArray:[S
    .restart local p1
    :cond_105
    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_139

    .line 1555
    check-cast p1, [Z

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [Z

    move-object v4, v0

    .line 1556
    .local v4, booleanArray:[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v4

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1557
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_122
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    aget-boolean v17, v4, v10

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1557
    add-int/lit8 v10, v10, 0x1

    goto :goto_122

    .line 1560
    .end local v4           #booleanArray:[Z
    .end local v10           #i:I
    .restart local p1
    :cond_139
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_16d

    .line 1561
    check-cast p1, [J

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [J

    move-object v12, v0

    .line 1562
    .local v12, longArray:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1563
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_156
    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    aget-wide v17, v12, v10

    invoke-virtual/range {v16 .. v18}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1563
    add-int/lit8 v10, v10, 0x1

    goto :goto_156

    .line 1566
    .end local v10           #i:I
    .end local v12           #longArray:[J
    .restart local p1
    :cond_16d
    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1a1

    .line 1567
    check-cast p1, [F

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [F

    move-object v8, v0

    .line 1568
    .local v8, floatArray:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1569
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_18a
    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    aget v17, v8, v10

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1569
    add-int/lit8 v10, v10, 0x1

    goto :goto_18a

    .line 1572
    .end local v8           #floatArray:[F
    .end local v10           #i:I
    .restart local p1
    :cond_1a1
    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1d5

    .line 1573
    check-cast p1, [D

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [D

    move-object v7, v0

    .line 1574
    .local v7, doubleArray:[D
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1575
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1be
    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    aget-wide v17, v7, v10

    invoke-virtual/range {v16 .. v18}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1575
    add-int/lit8 v10, v10, 0x1

    goto :goto_1be

    .line 1579
    .end local v7           #doubleArray:[D
    .end local v10           #i:I
    .restart local p1
    :cond_1d5
    new-instance v16, Ljava/io/InvalidClassException;

    const-string v17, "K00d7"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1585
    :cond_1e5
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 1586
    .local v13, objectArray:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    move-object/from16 v16, v0

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1587
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1fa
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1588
    aget-object v16, v13, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1587
    add-int/lit8 v10, v10, 0x1

    goto :goto_1fa
.end method

.method private writeNewClass(Ljava/lang/Class;Z)Ljava/lang/Integer;
    .registers 7
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1610
    .local p1, object:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1620
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1621
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    .line 1627
    :goto_10
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1628
    .local v1, previousHandle:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 1629
    .local v0, handle:Ljava/lang/Integer;
    if-eqz p2, :cond_21

    .line 1631
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 1634
    :cond_21
    return-object v0

    .line 1623
    .end local v0           #handle:Ljava/lang/Integer;
    .end local v1           #previousHandle:Ljava/lang/Integer;
    :cond_22
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)Ljava/lang/Integer;

    goto :goto_10
.end method

.method private writeNewClassDesc(Ljava/io/ObjectStreamClass;)V
    .registers 7
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1653
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1654
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1655
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v1

    .line 1656
    .local v1, flags:B
    const/4 v0, 0x0

    .line 1657
    .local v0, externalizable:Z
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v0

    .line 1659
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    .line 1664
    if-eqz v0, :cond_29

    .line 1665
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    .line 1668
    :cond_29
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1669
    const/16 v2, 0x12

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v3

    if-eq v2, v3, :cond_3a

    .line 1670
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V

    .line 1675
    :goto_39
    return-void

    .line 1673
    :cond_3a
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_39
.end method

.method private writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Integer;
    .registers 15
    .parameter "object"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    .line 2131
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 2133
    .local v4, originalCurrentPutField:Ljava/io/EmulatedFieldsForDumping;
    const/4 v8, 0x0

    iput-object v8, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 2135
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x7e

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2136
    :goto_d
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 2138
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_d

    .line 2140
    :cond_1a
    invoke-direct {p0, p2, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 2142
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2143
    .local v5, previousHandle:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    .line 2145
    .local v3, handle:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 2146
    .local v2, fields:[Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2149
    .local v1, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_5d

    array-length v8, v2

    if-le v8, v10, :cond_5d

    .line 2150
    aget-object v8, v2, v10

    invoke-virtual {v8}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v2, v10

    invoke-virtual {v9}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v1, v8, v9}, Ljava/io/ObjectOutputStream;->getFieldObj(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2152
    .local v6, str:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2153
    .local v7, strhandle:Ljava/lang/Integer;
    if-nez p3, :cond_58

    .line 2154
    invoke-direct {p0, v6}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    .line 2156
    :cond_58
    if-nez v7, :cond_5d

    .line 2157
    invoke-direct {p0, v6, p3}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)Ljava/lang/Integer;

    .line 2161
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #strhandle:Ljava/lang/Integer;
    :cond_5d
    if-eqz p3, :cond_62

    .line 2163
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 2165
    :cond_62
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 2166
    return-object v3
.end method

.method private writeNewException(Ljava/lang/Exception;)V
    .registers 5
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1711
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1712
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1713
    invoke-direct {p0, p1, v2, v2, v2}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)Ljava/lang/Integer;

    .line 1714
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    .line 1715
    return-void
.end method

.method private writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Integer;
    .registers 15
    .parameter "object"
    .parameter
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1745
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1746
    .local v4, originalCurrentPutField:Ljava/io/EmulatedFieldsForDumping;
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1749
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    .line 1750
    .local v1, externalizable:Z
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v6

    .line 1751
    .local v6, serializable:Z
    if-nez v1, :cond_1c

    if-nez v6, :cond_1c

    .line 1753
    new-instance v7, Ljava/io/NotSerializableException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1757
    :cond_1c
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v8, 0x73

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1758
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->writeClassDescForClass(Ljava/lang/Class;)Ljava/lang/Integer;

    .line 1759
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v7, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1760
    .local v5, previousHandle:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    .line 1766
    .local v2, handle:Ljava/lang/Integer;
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1767
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v7

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1769
    if-eqz v1, :cond_7a

    .line 1770
    :try_start_3c
    iget v7, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    if-ne v7, v10, :cond_5f

    move v3, v10

    .line 1771
    .local v3, noBlockData:Z
    :goto_41
    if-eqz v3, :cond_47

    .line 1772
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1775
    :cond_47
    move-object v0, p1

    check-cast v0, Ljava/io/Externalizable;

    move-object v7, v0

    invoke-interface {v7, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1776
    if-eqz v3, :cond_62

    .line 1777
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_6d

    .line 1794
    .end local v3           #noBlockData:Z
    :goto_53
    if-eqz p3, :cond_58

    .line 1796
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 1798
    :cond_58
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1799
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1800
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    .line 1803
    return-object v2

    .line 1770
    :cond_5f
    const/4 v7, 0x0

    move v3, v7

    goto :goto_41

    .line 1783
    .restart local v3       #noBlockData:Z
    :cond_62
    :try_start_62
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1784
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6d

    goto :goto_53

    .line 1794
    .end local v3           #noBlockData:Z
    :catchall_6d
    move-exception v7

    if-eqz p3, :cond_73

    .line 1796
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 1798
    :cond_73
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    .line 1799
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1800
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v7

    .line 1789
    :cond_7a
    :try_start_7a
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v7}, Ljava/io/ObjectOutputStream;->writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_6d

    goto :goto_53
.end method

.method private writeNewString(Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 9
    .parameter "object"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1821
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->countUTFBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 1822
    .local v0, count:J
    const-wide/32 v4, 0xffff

    cmp-long v4, v0, v4

    if-gtz v4, :cond_32

    .line 1823
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x74

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1824
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    long-to-int v5, v0

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1829
    :goto_1b
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, p1, v0, v1}, Ljava/io/DataOutputStream;->writeUTFBytes(Ljava/lang/String;J)V

    .line 1831
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1832
    .local v3, previousHandle:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    .line 1833
    .local v2, handle:Ljava/lang/Integer;
    if-eqz p2, :cond_31

    .line 1835
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 1837
    :cond_31
    return-object v2

    .line 1826
    .end local v2           #handle:Ljava/lang/Integer;
    .end local v3           #previousHandle:Ljava/lang/Integer;
    :cond_32
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1827
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1b
.end method

.method private writeNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1849
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1850
    return-void
.end method

.method private writeObject(Ljava/lang/Object;Z)V
    .registers 9
    .parameter "object"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1885
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-ne v3, v4, :cond_17

    move v2, v5

    .line 1886
    .local v2, setOutput:Z
    :goto_8
    if-eqz v2, :cond_d

    .line 1887
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 1891
    :cond_d
    iget-boolean v3, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-eqz v3, :cond_1a

    if-nez p2, :cond_1a

    .line 1892
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    .line 1918
    :cond_16
    :goto_16
    return-void

    .line 1885
    .end local v2           #setOutput:Z
    :cond_17
    const/4 v3, 0x0

    move v2, v3

    goto :goto_8

    .line 1897
    .restart local v2       #setOutput:Z
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 1900
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)Ljava/lang/Integer;

    .line 1901
    if-eqz v2, :cond_16

    .line 1902
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_29

    goto :goto_16

    .line 1904
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 1907
    .local v0, ioEx1:Ljava/io/IOException;
    iget v3, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    if-nez v3, :cond_36

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    if-eq v0, v3, :cond_36

    .line 1909
    :try_start_33
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeNewException(Ljava/lang/Exception;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1915
    :cond_36
    throw v0

    .line 1910
    :catch_37
    move-exception v1

    .line 1911
    .local v1, ioEx2:Ljava/io/IOException;
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    invoke-virtual {v3}, Ljava/io/StreamCorruptedException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1912
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    throw v3
.end method

.method private writeObjectInternal(Ljava/lang/Object;ZZZ)Ljava/lang/Integer;
    .registers 23
    .parameter "object"
    .parameter "unshared"
    .parameter "computeClassBasedReplacement"
    .parameter "computeStreamReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1944
    if-nez p1, :cond_7

    .line 1945
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1946
    const/4 v15, 0x0

    .line 2075
    .end local p1
    :goto_6
    return-object v15

    .line 1948
    .restart local p1
    :cond_7
    const/4 v6, 0x0

    .line 1949
    .local v6, handle:Ljava/lang/Integer;
    if-nez p2, :cond_12

    .line 1950
    invoke-direct/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    .line 1951
    if-eqz v6, :cond_12

    move-object v15, v6

    .line 1952
    goto :goto_6

    .line 1957
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 1958
    .local v9, objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    .line 1961
    :try_start_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    move v15, v0

    if-eqz v15, :cond_2b

    if-nez p4, :cond_61

    .line 1963
    :cond_2b
    sget-object v15, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v9, v15, :cond_46

    .line 1964
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)Ljava/lang/Integer;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_6

    .line 1967
    .restart local p1
    :cond_46
    :try_start_46
    sget-object v15, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v9, v15, :cond_61

    .line 1968
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)Ljava/lang/Integer;
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_6

    .line 1972
    .restart local p1
    :cond_61
    :try_start_61
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_10e

    if-eqz p3, :cond_10e

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->writeReplaceCache:Ljava/util/IdentityHashMap;

    move-object v15, v0

    invoke-virtual {v15, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1975
    .local v14, writeReplaceMethod:Ljava/lang/Object;
    move-object v0, v14

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_10e

    .line 1976
    if-nez v14, :cond_90

    .line 1977
    invoke-static {v9}, Ljava/io/ObjectStreamClass;->methodWriteReplace(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1979
    .local v13, writeReplace:Ljava/lang/reflect/Method;
    if-nez v13, :cond_ce

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->writeReplaceCache:Ljava/util/IdentityHashMap;

    move-object v15, v0

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_61 .. :try_end_8f} :catchall_f2

    .line 1981
    const/4 v14, 0x0

    .line 1991
    .end local v13           #writeReplace:Ljava/lang/reflect/Method;
    .end local v14           #writeReplaceMethod:Ljava/lang/Object;
    :cond_90
    :goto_90
    if-eqz v14, :cond_10e

    .line 1994
    :try_start_92
    check-cast v14, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_f2
    .catch Ljava/lang/IllegalAccessException; {:try_start_92 .. :try_end_9e} :catch_e0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_92 .. :try_end_9e} :catch_e5

    move-result-object v5

    .line 2010
    .local v5, classBasedReplacement:Ljava/lang/Object;
    :goto_9f
    move-object v0, v5

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_10e

    .line 2012
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_a7
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)Ljava/lang/Integer;

    move-result-object v10

    .line 2017
    .local v10, replacementHandle:Ljava/lang/Integer;
    if-eqz v10, :cond_bd

    .line 2018
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;Ljava/lang/Integer;)V
    :try_end_bd
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_f2

    .line 2075
    :cond_bd
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move-object v15, v10

    goto/16 :goto_6

    .line 1984
    .end local v5           #classBasedReplacement:Ljava/lang/Object;
    .end local v10           #replacementHandle:Ljava/lang/Integer;
    .restart local v13       #writeReplace:Ljava/lang/reflect/Method;
    .restart local v14       #writeReplaceMethod:Ljava/lang/Object;
    :cond_ce
    :try_start_ce
    new-instance v15, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v15, v13}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v15}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectOutputStream;->writeReplaceCache:Ljava/util/IdentityHashMap;

    move-object v15, v0

    invoke-virtual {v15, v9, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    move-object v14, v13

    .local v14, writeReplaceMethod:Ljava/lang/reflect/Method;
    goto :goto_90

    .line 1996
    .end local v13           #writeReplace:Ljava/lang/reflect/Method;
    .end local v14           #writeReplaceMethod:Ljava/lang/reflect/Method;
    :catch_e0
    move-exception v15

    move-object v7, v15

    .line 1997
    .local v7, iae:Ljava/lang/IllegalAccessException;
    move-object/from16 v5, p1

    .line 2009
    .restart local v5       #classBasedReplacement:Ljava/lang/Object;
    goto :goto_9f

    .line 1998
    .end local v5           #classBasedReplacement:Ljava/lang/Object;
    .end local v7           #iae:Ljava/lang/IllegalAccessException;
    :catch_e5
    move-exception v15

    move-object v8, v15

    .line 2001
    .local v8, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v12

    .line 2002
    .local v12, target:Ljava/lang/Throwable;
    instance-of v15, v12, Ljava/io/ObjectStreamException;

    if-eqz v15, :cond_104

    .line 2003
    check-cast v12, Ljava/io/ObjectStreamException;

    .end local v12           #target:Ljava/lang/Throwable;
    throw v12
    :try_end_f2
    .catchall {:try_start_ce .. :try_end_f2} :catchall_f2

    .line 2075
    .end local v8           #ite:Ljava/lang/reflect/InvocationTargetException;
    .end local p1
    :catchall_f2
    move-exception v15

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    throw v15

    .line 2004
    .restart local v8       #ite:Ljava/lang/reflect/InvocationTargetException;
    .restart local v12       #target:Ljava/lang/Throwable;
    .restart local p1
    :cond_104
    :try_start_104
    instance-of v15, v12, Ljava/lang/Error;

    if-eqz v15, :cond_10b

    .line 2005
    check-cast v12, Ljava/lang/Error;

    .end local v12           #target:Ljava/lang/Throwable;
    throw v12

    .line 2007
    .restart local v12       #target:Ljava/lang/Throwable;
    :cond_10b
    check-cast v12, Ljava/lang/RuntimeException;

    .end local v12           #target:Ljava/lang/Throwable;
    throw v12

    .line 2029
    .end local v8           #ite:Ljava/lang/reflect/InvocationTargetException;
    :cond_10e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    move v15, v0

    if-eqz v15, :cond_14a

    if-eqz p4, :cond_14a

    .line 2031
    invoke-virtual/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2032
    .local v11, streamReplacement:Ljava/lang/Object;
    move-object v0, v11

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_14a

    .line 2034
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v15

    move/from16 v3, p3

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)Ljava/lang/Integer;

    move-result-object v10

    .line 2038
    .restart local v10       #replacementHandle:Ljava/lang/Integer;
    if-eqz v10, :cond_139

    .line 2039
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;Ljava/lang/Integer;)V
    :try_end_139
    .catchall {:try_start_104 .. :try_end_139} :catchall_f2

    .line 2075
    :cond_139
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move v15, v0

    const/16 v16, 0x1

    sub-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move-object v15, v10

    goto/16 :goto_6

    .line 2048
    .end local v10           #replacementHandle:Ljava/lang/Integer;
    .end local v11           #streamReplacement:Ljava/lang/Object;
    :cond_14a
    :try_start_14a
    sget-object v15, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v9, v15, :cond_166

    .line 2049
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)Ljava/lang/Integer;
    :try_end_153
    .catchall {:try_start_14a .. :try_end_153} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 2053
    .restart local p1
    :cond_166
    :try_start_166
    sget-object v15, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v9, v15, :cond_182

    .line 2054
    check-cast p1, Ljava/io/ObjectStreamClass;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)Ljava/lang/Integer;
    :try_end_16f
    .catchall {:try_start_166 .. :try_end_16f} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 2058
    .restart local p1
    :cond_182
    :try_start_182
    sget-object v15, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-ne v9, v15, :cond_19e

    .line 2059
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)Ljava/lang/Integer;
    :try_end_18b
    .catchall {:try_start_182 .. :try_end_18b} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 2063
    .restart local p1
    :cond_19e
    :try_start_19e
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_1c6

    .line 2064
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v15

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/io/ObjectOutputStream;->writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/Integer;
    :try_end_1b3
    .catchall {:try_start_19e .. :try_end_1b3} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 2068
    :cond_1c6
    :try_start_1c6
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Enum;

    move v15, v0

    if-eqz v15, :cond_1ea

    .line 2069
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Integer;
    :try_end_1d7
    .catchall {:try_start_1c6 .. :try_end_1d7} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6

    .line 2073
    :cond_1ea
    :try_start_1ea
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream;->writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Integer;
    :try_end_1f4
    .catchall {:try_start_1ea .. :try_end_1f4} :catchall_f2

    move-result-object v15

    .line 2075
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_6
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    .local p1, aClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 389
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 390
    return-void
.end method

.method public defaultWriteObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 419
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 421
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 422
    return-void
.end method

.method protected drain()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x400

    .line 433
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-nez v3, :cond_8

    .line 460
    :goto_7
    return-void

    .line 438
    :cond_8
    const/4 v0, 0x0

    .line 439
    .local v0, offset:I
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 441
    .local v2, written:[B
    :goto_f
    array-length v3, v2

    if-ge v0, v3, :cond_40

    .line 442
    array-length v3, v2

    sub-int/2addr v3, v0

    if-le v3, v5, :cond_2f

    move v1, v5

    .line 444
    .local v1, toWrite:I
    :goto_17
    const/16 v3, 0x100

    if-ge v1, v3, :cond_33

    .line 445
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    int-to-byte v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 453
    :goto_28
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 454
    add-int/2addr v0, v1

    .line 455
    goto :goto_f

    .line 442
    .end local v1           #toWrite:I
    :cond_2f
    array-length v3, v2

    sub-int/2addr v3, v0

    move v1, v3

    goto :goto_17

    .line 448
    .restart local v1       #toWrite:I
    :cond_33
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v4, 0x7a

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 449
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_28

    .line 458
    .end local v1           #toWrite:I
    :cond_40
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    .line 459
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    goto :goto_7
.end method

.method protected enableReplaceObject(Z)Z
    .registers 5
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 506
    if-eqz p1, :cond_d

    .line 509
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 510
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 511
    sget-object v2, Ljava/io/ObjectOutputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 514
    .end local v0           #currentManager:Ljava/lang/SecurityManager;
    :cond_d
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 515
    .local v1, originalValue:Z
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 516
    return v1
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 531
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 532
    return-void
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 752
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 754
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_11

    .line 755
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->computePutField()V

    .line 757
    :cond_11
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return-object v0
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    return-object p1
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    .line 863
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 865
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    .line 866
    return-void
.end method

.method public useProtocolVersion(I)V
    .registers 4
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    .line 908
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00b3"

    invoke-static {v1, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_12
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    .line 912
    return-void
.end method

.method public write(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 966
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 967
    return-void
.end method

.method public write([B)V
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 927
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 928
    return-void
.end method

.method public write([BII)V
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
    .line 948
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 949
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 950
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 980
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 981
    return-void
.end method

.method public writeByte(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 994
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 995
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1010
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method public writeChar(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1024
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 1025
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1039
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .registers 2
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1688
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    .line 1689
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1160
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1161
    return-void
.end method

.method public writeFields()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1220
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_a

    .line 1221
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    .line 1223
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V

    .line 1224
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1377
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1378
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1379
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1478
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1479
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1491
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 1492
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1493
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .registers 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1863
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1864
    return-void
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .registers 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2182
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-nez v0, :cond_a

    .line 2184
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 2187
    :cond_a
    return-void
.end method

.method public writeShort(I)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2199
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 2200
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2201
    return-void
.end method

.method protected writeStreamHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2211
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2212
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2213
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2226
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    .line 2227
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2228
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .registers 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1880
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    .line 1881
    return-void
.end method
