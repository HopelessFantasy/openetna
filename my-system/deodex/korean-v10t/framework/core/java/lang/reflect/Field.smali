.class public final Ljava/lang/reflect/Field;
.super Ljava/lang/reflect/AccessibleObject;
.source "Field.java"

# interfaces
.implements Ljava/lang/reflect/Member;


# static fields
.field private static final TYPE_BOOLEAN:I = 0x1

.field private static final TYPE_BYTE:I = 0x2

.field private static final TYPE_CHAR:I = 0x3

.field private static final TYPE_DOUBLE:I = 0x8

.field private static final TYPE_FLOAT:I = 0x6

.field private static final TYPE_INTEGER:I = 0x5

.field private static final TYPE_LONG:I = 0x7

.field private static final TYPE_SHORT:I = 0x4


# instance fields
.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private genericType:Ljava/lang/reflect/Type;

.field private volatile genericTypesAreInitialized:Z

.field private name:Ljava/lang/String;

.field private slot:I

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter "name"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z

    .line 94
    iput-object p1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    .line 95
    iput-object p2, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    .line 96
    iput-object p3, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    .line 97
    iput p4, p0, Ljava/lang/reflect/Field;->slot:I

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 6
    .parameter "orig"

    .prologue
    .line 85
    iget-object v0, p1, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget-object v2, p1, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    iget v3, p1, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V

    .line 88
    iget-boolean v0, p1, Ljava/lang/reflect/Field;->flag:Z

    if-eqz v0, :cond_12

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/reflect/Field;->flag:Z

    .line 91
    :cond_12
    return-void
.end method

.method private native getBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)C"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;
.end method

.method private native getFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)F"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getFieldModifiers(Ljava/lang/Class;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation
.end method

.method private native getIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)S"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;
.end method

.method private native getZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZI)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private declared-synchronized initGenericType()V
    .registers 4

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z

    if-nez v2, :cond_28

    .line 102
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, signatureAttribute:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader2()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 105
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 106
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    iput-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    .line 107
    iget-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    if-nez v2, :cond_25

    .line 108
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    .line 110
    :cond_25
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 112
    .end local v0           #parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    .end local v1           #signatureAttribute:Ljava/lang/String;
    :cond_28
    monitor-exit p0

    return-void

    .line 101
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native setBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIB)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZIB)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIC)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZIC)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZID)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZID)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZIF)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZIJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIS)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZIS)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 215
    instance-of v0, p1, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/reflect/Field;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)Z

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)B

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/Object;)C
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)C

    move-result v0

    return v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDouble(Ljava/lang/Object;)D
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/16 v6, 0x8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)F

    move-result v0

    return v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/reflect/Field;->initGenericType()V

    .line 191
    iget-object v0, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/Object;)J
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getModifiers()I
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZI)S

    move-result v0

    return v0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_c

    .line 120
    const/4 v1, 0x0

    .line 123
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 547
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEnumConstant()Z
    .registers 4

    .prologue
    .line 172
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 173
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isSynthetic()Z
    .registers 4

    .prologue
    .line 138
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 139
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZLjava/lang/Object;)V

    .line 584
    return-void
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIZ)V

    .line 618
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIB)V

    .line 651
    return-void
.end method

.method public setChar(Ljava/lang/Object;C)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIC)V

    .line 684
    return-void
.end method

.method public setDouble(Ljava/lang/Object;D)V
    .registers 13
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 716
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/16 v6, 0x8

    move-object v0, p0

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Ljava/lang/reflect/Field;->setDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZID)V

    .line 717
    return-void
.end method

.method public setFloat(Ljava/lang/Object;F)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 749
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIF)V

    .line 750
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZII)V

    .line 783
    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .registers 13
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x7

    move-object v0, p0

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Ljava/lang/reflect/Field;->setJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIJ)V

    .line 816
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/Field;->flag:Z

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZIS)V

    .line 849
    return-void
.end method

.method public toGenericString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 153
    .local v0, modifier:I
    if-eqz v0, :cond_1a

    .line 154
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Field;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 872
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 875
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 876
    :cond_18
    iget-object v1, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 877
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 878
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 880
    iget-object v1, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
