.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ARRAY_OF_FIELDS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final CLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final CLASS_MODIFIERS_MASK:I = 0x0

.field private static final CLINIT_MODIFIERS:I = 0x8

.field private static final CLINIT_NAME:Ljava/lang/String; = "<clinit>"

.field private static final CLINIT_SIGNATURE:Ljava/lang/String; = "()V"

.field static final EMPTY_CONSTRUCTOR_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EXTERNALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Externalizable;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final FIELD_MODIFIERS_MASK:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final METHOD_MODIFIERS_MASK:I = 0x0

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField; = null

.field static final OBJECTSTREAMCLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SERIALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field static final STRINGCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"

.field static final UNSHARED_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final VOID_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final WRITE_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final classesAndDescriptors:Ljava/util/WeakHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x54f190e511018478L


# instance fields
.field private transient className:Ljava/lang/String;

.field private transient fields:[Ljava/io/ObjectStreamField;

.field private transient flags:B

.field private transient loadFields:[Ljava/io/ObjectStreamField;

.field private transient resolvedClass:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private transient superclass:Ljava/io/ObjectStreamClass;

.field private transient svUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-static {}, Ljava/io/ObjectStreamClass;->oneTimeInitialization()V

    .line 79
    const/16 v1, 0x611

    sput v1, Ljava/io/ObjectStreamClass;->CLASS_MODIFIERS_MASK:I

    .line 81
    const/16 v1, 0xdf

    sput v1, Ljava/io/ObjectStreamClass;->FIELD_MODIFIERS_MASK:I

    .line 84
    const/16 v1, 0xd3f

    sput v1, Ljava/io/ObjectStreamClass;->METHOD_MODIFIERS_MASK:I

    .line 89
    new-array v1, v4, [Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    .line 90
    new-array v1, v4, [Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    .line 91
    sget-object v1, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectInputStream;

    aput-object v2, v1, v3

    .line 92
    sget-object v1, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectOutputStream;

    aput-object v2, v1, v3

    .line 93
    new-array v1, v3, [Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->EMPTY_CONSTRUCTOR_PARAM_TYPES:[Ljava/lang/Class;

    .line 94
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->VOID_CLASS:Ljava/lang/Class;

    .line 95
    new-array v1, v4, [Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->UNSHARED_PARAM_TYPES:[Ljava/lang/Class;

    .line 96
    sget-object v1, Ljava/io/ObjectStreamClass;->UNSHARED_PARAM_TYPES:[Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 104
    new-array v1, v3, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 113
    :try_start_3b
    const-string v1, "[Ljava.io.ObjectStreamField;"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_43} :catch_5f

    .line 127
    const-class v1, Ljava/io/Serializable;

    sput-object v1, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    .line 129
    const-class v1, Ljava/io/Externalizable;

    sput-object v1, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    .line 132
    const-class v1, Ljava/lang/String;

    sput-object v1, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    .line 134
    const-class v1, Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    .line 136
    const-class v1, Ljava/io/ObjectStreamClass;

    sput-object v1, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    .line 140
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Ljava/io/ObjectStreamClass;->classesAndDescriptors:Ljava/util/WeakHashMap;

    return-void

    .line 114
    :catch_5f
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method private static addToCache(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .registers 10
    .parameter
    .parameter "computeSUID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Ljava/io/ObjectStreamClass;

    invoke-direct {v3}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 203
    .local v3, result:Ljava/io/ObjectStreamClass;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, p0}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 206
    .local v5, superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v5, :cond_1c

    .line 207
    invoke-static {v5}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 210
    :cond_1c
    const/4 v0, 0x0

    .line 211
    .local v0, declaredFields:[Ljava/lang/reflect/Field;
    if-eqz p1, :cond_32

    .line 213
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-nez v6, :cond_2d

    const-class v6, Ljava/lang/Enum;

    if-ne p0, v6, :cond_63

    :cond_2d
    const-wide/16 v6, 0x0

    :goto_2f
    invoke-virtual {v3, v6, v7}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 218
    :cond_32
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v4

    .line 220
    .local v4, serializable:Z
    if-eqz v4, :cond_68

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-nez v6, :cond_68

    .line 221
    if-nez v0, :cond_44

    .line 223
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 225
    :cond_44
    invoke-virtual {v3, v0}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 231
    :goto_47
    const/4 v2, 0x0

    .line 232
    .local v2, flags:B
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    .line 233
    .local v1, externalizable:Z
    if-eqz v1, :cond_6f

    .line 234
    or-int/lit8 v6, v2, 0x4

    int-to-byte v2, v6

    .line 238
    :cond_51
    :goto_51
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getPrivateWriteObjectMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_5a

    .line 239
    or-int/lit8 v6, v2, 0x1

    int-to-byte v2, v6

    .line 241
    :cond_5a
    invoke-virtual {v3, v2}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 242
    sget-object v6, Ljava/io/ObjectStreamClass;->classesAndDescriptors:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-object v3

    .line 214
    .end local v1           #externalizable:Z
    .end local v2           #flags:B
    .end local v4           #serializable:Z
    :cond_63
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J

    move-result-wide v6

    goto :goto_2f

    .line 228
    .restart local v4       #serializable:Z
    :cond_68
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/io/ObjectStreamField;

    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_47

    .line 235
    .restart local v1       #externalizable:Z
    .restart local v2       #flags:B
    :cond_6f
    if-eqz v4, :cond_51

    .line 236
    or-int/lit8 v6, v2, 0x2

    int-to-byte v2, v6

    goto :goto_51
.end method

.method private static computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J
    .registers 9
    .parameter
    .parameter "fields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")J"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_4a

    .line 337
    aget-object v0, p1, v1

    .line 338
    .local v0, field:Ljava/lang/reflect/Field;
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_46

    .line 339
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 340
    .local v2, modifiers:I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    .end local v2           #modifiers:I
    if-eqz v2, :cond_46

    .line 341
    const-string v2, "serialVersionUID"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 347
    new-instance p0, Lorg/apache/harmony/luni/util/PriviAction;

    .end local p0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 351
    const/4 p0, 0x0

    :try_start_34
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_37} :catch_39

    move-result-wide p0

    .line 531
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v1           #i:I
    .end local p1
    :goto_38
    return-wide p0

    .line 352
    .restart local v0       #field:Ljava/lang/reflect/Field;
    .restart local v1       #i:I
    .restart local p1
    :catch_39
    move-exception p0

    .line 353
    .local p0, iae:Ljava/lang/IllegalAccessException;
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1
    const-string v0, "K0071"

    .end local v0           #field:Ljava/lang/reflect/Field;
    invoke-static {v0, p0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #iae:Ljava/lang/IllegalAccessException;
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    .restart local v0       #field:Ljava/lang/reflect/Field;
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p1
    :cond_46
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 363
    :cond_4a
    :try_start_4a
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_4f} :catch_a3

    move-result-object v1

    .line 367
    .local v1, digest:Ljava/security/MessageDigest;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 369
    .local v6, sha:Ljava/io/ByteArrayOutputStream;
    :try_start_55
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 370
    .local v5, output:Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 371
    sget v0, Ljava/io/ObjectStreamClass;->CLASS_MODIFIERS_MASK:I

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/2addr v0, v2

    .line 377
    .local v0, classModifiers:I
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    .line 378
    .local v2, isArray:Z
    if-eqz v2, :cond_70

    .line 379
    or-int/lit16 v0, v0, 0x400

    .line 382
    :cond_70
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 383
    and-int/lit16 v0, v0, -0x401

    .line 385
    :cond_7e
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 392
    if-nez v2, :cond_aa

    .line 394
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 395
    .local v2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v0, v2

    .end local v0           #classModifiers:I
    const/4 v3, 0x1

    if-le v0, v3, :cond_93

    .line 398
    new-instance v0, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass$1;-><init>()V

    .line 403
    .local v0, interfaceComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 407
    .end local v0           #interfaceComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Class<*>;>;"
    :cond_93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_94
    array-length v3, v2

    if-ge v0, v3, :cond_aa

    .line 408
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_a0} :catch_18f

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 364
    .end local v0           #i:I
    .end local v2           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v5           #output:Ljava/io/DataOutputStream;
    .end local v6           #sha:Ljava/io/ByteArrayOutputStream;
    .local v1, i:I
    :catch_a3
    move-exception p0

    .line 365
    .local p0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance p1, Ljava/lang/Error;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 413
    .local v1, digest:Ljava/security/MessageDigest;
    .restart local v5       #output:Ljava/io/DataOutputStream;
    .restart local v6       #sha:Ljava/io/ByteArrayOutputStream;
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p1
    :cond_aa
    :try_start_aa
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_b6

    .line 416
    new-instance v0, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass$2;-><init>()V

    .line 421
    .local v0, fieldComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 425
    .end local v0           #fieldComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Field;>;"
    :cond_b6
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_b8
    array-length v0, p1

    if-ge v2, v0, :cond_f4

    .line 426
    aget-object v0, p1, v2

    .line 427
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    sget v4, Ljava/io/ObjectStreamClass;->FIELD_MODIFIERS_MASK:I

    and-int/2addr v3, v4

    .line 429
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_f2

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_d6

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_f2

    :cond_d6
    const/4 v4, 0x1

    .line 432
    .local v4, skip:Z
    :goto_d7
    if-nez v4, :cond_ee

    .line 435
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .end local v4           #skip:Z
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #field:Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 425
    :cond_ee
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_b8

    .line 429
    .local v0, field:Ljava/lang/reflect/Field;
    :cond_f2
    const/4 v4, 0x0

    goto :goto_d7

    .line 447
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v3           #modifiers:I
    :cond_f4
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->hasClinit(Ljava/lang/Class;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_109

    .line 449
    const-string p1, "<clinit>"

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 450
    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 451
    const-string p1, "()V"

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 455
    :cond_109
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 456
    .local v0, constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    array-length p1, v0

    const/4 v2, 0x1

    if-le p1, v2, :cond_119

    .line 459
    .end local v2           #i:I
    new-instance p1, Ljava/io/ObjectStreamClass$3;

    invoke-direct {p1}, Ljava/io/ObjectStreamClass$3;-><init>()V

    .line 467
    .local p1, constructorComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 471
    .end local p1           #constructorComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Constructor<*>;>;"
    :cond_119
    const/4 p1, 0x0

    .local p1, i:I
    move v2, p1

    .end local p1           #i:I
    .restart local v2       #i:I
    :goto_11b
    array-length p1, v0

    if-ge v2, p1, :cond_14c

    .line 472
    aget-object p1, v0, v2

    .line 473
    .local p1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    sget v4, Ljava/io/ObjectStreamClass;->METHOD_MODIFIERS_MASK:I

    and-int/2addr v4, v3

    .line 475
    .local v4, modifiers:I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    .line 476
    .local v3, isPrivate:Z
    if-nez v3, :cond_148

    .line 484
    const-string v3, "<init>"

    .end local v3           #isPrivate:Z
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 486
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .end local v4           #modifiers:I
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 471
    :cond_148
    add-int/lit8 p1, v2, 0x1

    .end local v2           #i:I
    .local p1, i:I
    move v2, p1

    .end local p1           #i:I
    .restart local v2       #i:I
    goto :goto_11b

    .line 493
    :cond_14c
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 494
    .local v2, methods:[Ljava/lang/reflect/Method;
    array-length p0, v2

    .end local p0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 p1, 0x1

    if-le p0, p1, :cond_15c

    .line 495
    new-instance p0, Ljava/io/ObjectStreamClass$4;

    invoke-direct {p0}, Ljava/io/ObjectStreamClass$4;-><init>()V

    .line 507
    .local p0, methodComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    invoke-static {v2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 511
    .end local p0           #methodComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    :cond_15c
    const/4 p0, 0x0

    .end local v0           #constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .local p0, i:I
    :goto_15d
    array-length p1, v2

    if-ge p0, p1, :cond_19c

    .line 512
    aget-object v0, v2, p0

    .line 513
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    sget v3, Ljava/io/ObjectStreamClass;->METHOD_MODIFIERS_MASK:I

    and-int/2addr v3, p1

    .line 514
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result p1

    .line 515
    .local p1, isPrivate:Z
    if-nez p1, :cond_18c

    .line 518
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1           #isPrivate:Z
    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 520
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v3           #modifiers:I
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_18c} :catch_18f

    .line 511
    :cond_18c
    add-int/lit8 p0, p0, 0x1

    goto :goto_15d

    .line 524
    .end local v2           #methods:[Ljava/lang/reflect/Method;
    .end local v5           #output:Ljava/io/DataOutputStream;
    .end local p0           #i:I
    :catch_18f
    move-exception p0

    .line 525
    .local p0, e:Ljava/io/IOException;
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "K0072"

    invoke-static {v0, p0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    .restart local v2       #methods:[Ljava/lang/reflect/Method;
    .restart local v5       #output:Ljava/io/DataOutputStream;
    .local p0, i:I
    :cond_19c
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #i:I
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 531
    .local p0, hash:[B
    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->littleEndianLongAt([BI)J

    move-result-wide p0

    goto/16 :goto_38
.end method

.method private copyFieldAttributes()V
    .registers 7

    .prologue
    .line 672
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-eqz v5, :cond_8

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v5, :cond_9

    .line 688
    :cond_8
    return-void

    .line 676
    :cond_9
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 677
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    aget-object v3, v5, v1

    .line 678
    .local v3, loadField:Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_18
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v2, v5, :cond_39

    .line 680
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v5, v2

    .line 681
    .local v0, field:Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 682
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setUnshared(Z)V

    .line 683
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 676
    .end local v0           #field:Ljava/io/ObjectStreamField;
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 679
    .restart local v0       #field:Ljava/io/ObjectStreamField;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method private static descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "signature"

    .prologue
    .line 543
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "signature"

    .prologue
    .line 555
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;
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
    .line 570
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "serialPersistentFields"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 571
    .local v0, f:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 572
    .local v1, modifiers:I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 574
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_22} :catch_26

    if-ne v2, v3, :cond_27

    move-object v2, v0

    .line 581
    .end local v0           #f:Ljava/lang/reflect/Field;
    .end local v1           #modifiers:I
    :goto_25
    return-object v2

    .line 578
    :catch_26
    move-exception v2

    .line 581
    :cond_27
    const/4 v2, 0x0

    goto :goto_25
.end method

.method static native getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method

.method static native getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method static getPrivateReadObjectMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
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
    .line 789
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "readObject"

    sget-object v2, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 791
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/io/ObjectStreamClass;->VOID_CLASS:Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_1c

    if-ne v1, v2, :cond_1d

    move-object v1, v0

    .line 798
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1b
    return-object v1

    .line 795
    :catch_1c
    move-exception v1

    .line 798
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method static getPrivateReadObjectNoDataMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
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
    .line 812
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "readObjectNoData"

    sget-object v2, Ljava/io/ObjectStreamClass;->EMPTY_CONSTRUCTOR_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 814
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/io/ObjectStreamClass;->VOID_CLASS:Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_1c

    if-ne v1, v2, :cond_1d

    move-object v1, v0

    .line 821
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1b
    return-object v1

    .line 818
    :catch_1c
    move-exception v1

    .line 821
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method static getPrivateWriteObjectMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
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
    .line 835
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "writeObject"

    sget-object v2, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 837
    .local v0, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/io/ObjectStreamClass;->VOID_CLASS:Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_1c

    if-ne v1, v2, :cond_1d

    move-object v1, v0

    .line 844
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1b
    return-object v1

    .line 841
    :catch_1c
    move-exception v1

    .line 844
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static native hasClinit(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method static isExternalizable(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 860
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPrimitiveType(C)Z
    .registers 2
    .parameter "typecode"

    .prologue
    .line 874
    const/16 v0, 0x5b

    if-eq p0, v0, :cond_a

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isSerializable(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 890
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static littleEndianLongAt([BI)J
    .registers 9
    .parameter "buffer"
    .parameter "position"

    .prologue
    .line 903
    const-wide/16 v1, 0x0

    .line 904
    .local v1, result:J
    add-int/lit8 v0, p1, 0x7

    .local v0, i:I
    :goto_4
    if-lt v0, p1, :cond_14

    .line 905
    const/16 v3, 0x8

    shl-long v3, v1, v3

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 904
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 907
    :cond_14
    return-wide v1
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v1

    .line 924
    .local v1, serializable:Z
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v0

    .line 927
    .local v0, externalizable:Z
    if-nez v1, :cond_e

    if-nez v0, :cond_e

    .line 928
    const/4 v2, 0x0

    .line 931
    :goto_d
    return-object v2

    :cond_e
    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    goto :goto_d
.end method

.method static lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static declared-synchronized lookupStreamClass(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .registers 5
    .parameter
    .parameter "computeSUID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/io/ObjectStreamClass;

    monitor-enter v1

    :try_start_3
    sget-object v2, Ljava/io/ObjectStreamClass;->classesAndDescriptors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectStreamClass;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    .line 964
    .local v0, cachedValue:Ljava/io/ObjectStreamClass;
    if-eqz v0, :cond_10

    move-object v2, v0

    .line 967
    :goto_e
    monitor-exit v1

    return-object v2

    :cond_10
    :try_start_10
    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->addToCache(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    move-result-object v2

    goto :goto_e

    .line 963
    .end local v0           #cachedValue:Ljava/io/ObjectStreamClass;
    :catchall_15
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static methodReadResolve(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
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
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 981
    move-object v1, p0

    .line 982
    .local v1, search:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v1, :cond_21

    .line 984
    :try_start_4
    const-string v3, "readResolve"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 986
    .local v0, method:Ljava/lang/reflect/Method;
    if-eq v1, p0, :cond_17

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_12} :catch_1b

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_19

    :cond_17
    move-object v2, v0

    .line 995
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_18
    return-object v2

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_19
    move-object v2, v4

    .line 990
    goto :goto_18

    .line 991
    .end local v0           #method:Ljava/lang/reflect/Method;
    :catch_1b
    move-exception v2

    .line 993
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_21
    move-object v2, v4

    .line 995
    goto :goto_18
.end method

.method static methodWriteReplace(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
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
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1009
    move-object v1, p0

    .line 1010
    .local v1, search:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v1, :cond_21

    .line 1012
    :try_start_4
    const-string v3, "writeReplace"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1014
    .local v0, method:Ljava/lang/reflect/Method;
    if-eq v1, p0, :cond_17

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_12} :catch_1b

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_19

    :cond_17
    move-object v2, v0

    .line 1024
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_18
    return-object v2

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_19
    move-object v2, v4

    .line 1018
    goto :goto_18

    .line 1019
    .end local v0           #method:Ljava/lang/reflect/Method;
    :catch_1b
    move-exception v2

    .line 1022
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_21
    move-object v2, v4

    .line 1024
    goto :goto_18
.end method

.method private static native oneTimeInitialization()V
.end method

.method private primitiveSize(Ljava/lang/Class;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1109
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1110
    :cond_8
    const/4 v0, 0x1

    .line 1121
    :goto_9
    return v0

    .line 1112
    :cond_a
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_12

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1113
    :cond_12
    const/4 v0, 0x2

    goto :goto_9

    .line 1115
    :cond_14
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1116
    :cond_1c
    const/4 v0, 0x4

    goto :goto_9

    .line 1118
    :cond_1e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_26

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_29

    .line 1119
    :cond_26
    const/16 v0, 0x8

    goto :goto_9

    .line 1121
    :cond_29
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method buildFieldDescriptors([Ljava/lang/reflect/Field;)V
    .registers 21
    .parameter "declaredFields"

    .prologue
    .line 257
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/io/ObjectStreamClass;->fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 261
    .local v6, f:Ljava/lang/reflect/Field;
    if-nez v6, :cond_5a

    const/16 v17, 0x1

    move/from16 v16, v17

    .line 265
    .local v16, useReflectFields:Z
    :goto_e
    const/4 v3, 0x0

    .line 266
    .local v3, _fields:[Ljava/io/ObjectStreamField;
    if-nez v16, :cond_6b

    .line 269
    new-instance v17, Lorg/apache/harmony/luni/util/PriviAction;

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static/range {v17 .. v17}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 272
    const/16 v17, 0x0

    :try_start_1e
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/io/ObjectStreamField;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object v3, v0
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_2c} :catch_5f

    .line 304
    :goto_2c
    invoke-static {v3}, Ljava/io/ObjectStreamField;->sortFields([Ljava/io/ObjectStreamField;)V

    .line 306
    const/4 v12, 0x0

    .local v12, primOffset:I
    const/4 v10, 0x0

    .line 307
    .local v10, objectOffset:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_32
    move-object v0, v3

    array-length v0, v0

    move/from16 v17, v0

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_df

    .line 308
    aget-object v17, v3, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 309
    .local v15, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-eqz v17, :cond_d3

    .line 310
    aget-object v17, v3, v8

    move v0, v12

    move-object/from16 v1, v17

    iput v0, v1, Ljava/io/ObjectStreamField;->offset:I

    .line 311
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/ObjectStreamClass;->primitiveSize(Ljava/lang/Class;)I

    move-result v17

    add-int v12, v12, v17

    .line 307
    :goto_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 261
    .end local v3           #_fields:[Ljava/io/ObjectStreamField;
    .end local v8           #i:I
    .end local v10           #objectOffset:I
    .end local v12           #primOffset:I
    .end local v15           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #useReflectFields:Z
    .restart local p1
    :cond_5a
    const/16 v17, 0x0

    move/from16 v16, v17

    goto :goto_e

    .line 273
    .end local p1
    .restart local v3       #_fields:[Ljava/io/ObjectStreamField;
    .restart local v16       #useReflectFields:Z
    :catch_5f
    move-exception v17

    move-object/from16 v5, v17

    .line 276
    .local v5, ex:Ljava/lang/IllegalAccessException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 280
    .end local v5           #ex:Ljava/lang/IllegalAccessException;
    .restart local p1
    :cond_6b
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v13

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v13, serializableFields:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_79
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_b8

    .line 284
    aget-object v4, p1, v8

    .line 285
    .local v4, declaredField:Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    .line 286
    .local v9, modifiers:I
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v17

    if-nez v17, :cond_b3

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v17

    if-nez v17, :cond_b3

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 288
    .local v14, shouldBeSerialized:Z
    :goto_99
    if-eqz v14, :cond_b0

    .line 289
    new-instance v7, Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 291
    .local v7, field:Ljava/io/ObjectStreamField;
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v7           #field:Ljava/io/ObjectStreamField;
    :cond_b0
    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    .line 286
    .end local v14           #shouldBeSerialized:Z
    :cond_b3
    const/16 v17, 0x0

    move/from16 v14, v17

    goto :goto_99

    .line 295
    .end local v4           #declaredField:Ljava/lang/reflect/Field;
    .end local v9           #modifiers:I
    :cond_b8
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_c2

    .line 296
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto/16 :goto_2c

    .line 300
    :cond_c2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    move-object v3, v0

    .line 301
    invoke-interface {v13, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #_fields:[Ljava/io/ObjectStreamField;
    check-cast v3, [Ljava/io/ObjectStreamField;

    .restart local v3       #_fields:[Ljava/io/ObjectStreamField;
    goto/16 :goto_2c

    .line 313
    .end local v13           #serializableFields:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamField;>;"
    .end local p1
    .restart local v10       #objectOffset:I
    .restart local v12       #primOffset:I
    .restart local v15       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_d3
    aget-object v17, v3, v8

    add-int/lit8 v11, v10, 0x1

    .end local v10           #objectOffset:I
    .local v11, objectOffset:I
    move v0, v10

    move-object/from16 v1, v17

    iput v0, v1, Ljava/io/ObjectStreamField;->offset:I

    move v10, v11

    .end local v11           #objectOffset:I
    .restart local v10       #objectOffset:I
    goto/16 :goto_57

    .line 316
    .end local v15           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_df
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 317
    return-void
.end method

.method fields()[Ljava/io/ObjectStreamField;
    .registers 3

    .prologue
    .line 637
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v1, :cond_1f

    .line 638
    monitor-enter p0

    .line 639
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 640
    .local v0, forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_22

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_22

    .line 641
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    .line 646
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_29

    .line 648
    .end local v0           #forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1f
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-object v1

    .line 644
    .restart local v0       #forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_22
    const/4 v1, 0x0

    :try_start_23
    new-array v1, v1, [Ljava/io/ObjectStreamField;

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_1e

    .line 646
    .end local v0           #forCl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public forClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    .line 593
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    .line 595
    :goto_d
    return-object v0

    .restart local p0
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .registers 6
    .parameter "name"

    .prologue
    .line 619
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 620
    .local v0, allFields:[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 621
    aget-object v1, v0, v2

    .line 622
    .local v1, f:Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v3, v1

    .line 626
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :goto_15
    return-object v3

    .line 620
    .restart local v1       #f:Ljava/io/ObjectStreamField;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 626
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :cond_19
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->copyFieldAttributes()V

    .line 661
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/io/ObjectStreamField;

    move-object v0, p0

    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/io/ObjectStreamField;

    move-object v0, p0

    goto :goto_12
.end method

.method getFlags()B
    .registers 2

    .prologue
    .line 720
    iget-byte v0, p0, Ljava/io/ObjectStreamClass;->flags:B

    return v0
.end method

.method getLoadFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .prologue
    .line 698
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialVersionUID()J
    .registers 3

    .prologue
    .line 750
    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->svUID:J

    return-wide v0
.end method

.method getSuperclass()Ljava/io/ObjectStreamClass;
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method setClass(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/ref/WeakReference;

    .line 1035
    return-void
.end method

.method setFields([Ljava/io/ObjectStreamField;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 1046
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 1047
    return-void
.end method

.method setFlags(B)V
    .registers 2
    .parameter "b"

    .prologue
    .line 1072
    iput-byte p1, p0, Ljava/io/ObjectStreamClass;->flags:B

    .line 1073
    return-void
.end method

.method setLoadFields([Ljava/io/ObjectStreamField;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 1058
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    .line 1059
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 2
    .parameter "newName"

    .prologue
    .line 1083
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    .line 1084
    return-void
.end method

.method setSerialVersionUID(J)V
    .registers 3
    .parameter "l"

    .prologue
    .line 1093
    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->svUID:J

    .line 1094
    return-void
.end method

.method setSuperclass(Ljava/io/ObjectStreamClass;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 1105
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    .line 1106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": static final long serialVersionUID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
