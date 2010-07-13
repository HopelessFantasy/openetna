.class public final Ljava/security/UnresolvedPermission;
.super Ljava/security/Permission;
.source "UnresolvedPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x42eb170027e50b4eL


# instance fields
.field private transient hash:I

.field private transient targetActions:Ljava/lang/String;

.field private transient targetCerts:[Ljava/security/cert/Certificate;

.field private transient targetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-class v5, Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "type"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "name"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "actions"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/UnresolvedPermission;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .registers 8
    .parameter "type"
    .parameter "name"
    .parameter "actions"
    .parameter "certs"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Ljava/security/UnresolvedPermission;->checkType(Ljava/lang/String;)V

    .line 99
    iput-object p2, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    .line 101
    if-eqz p4, :cond_3a

    array-length v2, p4

    if-eqz v2, :cond_3a

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, tmp:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    array-length v2, p4

    if-ge v0, v2, :cond_24

    .line 105
    aget-object v2, p4, v0

    if-eqz v2, :cond_21

    .line 106
    aget-object v2, p4, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 109
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    check-cast v2, [Ljava/security/cert/Certificate;

    iput-object v2, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    .line 114
    .end local v0           #i:I
    .end local v1           #tmp:Ljava/util/List;
    :cond_3a
    const/4 v2, 0x0

    iput v2, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 115
    return-void
.end method

.method private final checkType(Ljava/lang/String;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 119
    if-nez p1, :cond_e

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.2F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_e
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 387
    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getUnresolvedType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/security/UnresolvedPermission;->checkType(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v3

    .line 389
    .local v3, fields:Ljava/io/ObjectInputStream$GetField;
    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getUnresolvedType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v3, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    .line 390
    new-instance v7, Ljava/io/InvalidObjectException;

    const-string v8, "security.31"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 392
    :cond_28
    const-string v7, "name"

    invoke-virtual {v3, v7, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    .line 393
    const-string v7, "actions"

    invoke-virtual {v3, v7, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 395
    .local v1, certNumber:I
    if-eqz v1, :cond_7f

    .line 396
    new-array v7, v1, [Ljava/security/cert/Certificate;

    iput-object v7, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    .line 397
    const/4 v4, 0x0

    .local v4, i:I
    :goto_47
    if-ge v4, v1, :cond_7f

    .line 399
    :try_start_49
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, type:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 401
    .local v5, length:I
    new-array v2, v5, [B

    .line 402
    .local v2, enc:[B
    const/4 v7, 0x0

    invoke-virtual {p1, v2, v7, v5}, Ljava/io/ObjectInputStream;->readFully([BII)V

    .line 403
    iget-object v7, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    aput-object v8, v7, v4
    :try_end_68
    .catch Ljava/security/cert/CertificateException; {:try_start_49 .. :try_end_68} :catch_6b

    .line 397
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 405
    .end local v2           #enc:[B
    .end local v5           #length:I
    .end local v6           #type:Ljava/lang/String;
    :catch_6b
    move-exception v7

    move-object v0, v7

    .line 406
    .local v0, cee:Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.32"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 411
    .end local v0           #cee:Ljava/security/cert/CertificateException;
    .end local v4           #i:I
    .restart local p0
    :cond_7f
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v2

    .line 357
    .local v2, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v4, "type"

    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getUnresolvedType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string v4, "name"

    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getUnresolvedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v4, "actions"

    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getUnresolvedActions()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 361
    iget-object v4, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    if-nez v4, :cond_2b

    .line 362
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 378
    :cond_2a
    return-void

    .line 364
    :cond_2b
    iget-object v4, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 365
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    iget-object v4, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v4, v4

    if-ge v3, v4, :cond_2a

    .line 367
    :try_start_37
    iget-object v4, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 368
    .local v1, enc:[B
    iget-object v4, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 369
    array-length v4, v1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 370
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->write([B)V
    :try_end_51
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_37 .. :try_end_51} :catch_54

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 371
    .end local v1           #enc:[B
    :catch_54
    move-exception v4

    move-object v0, v4

    .line 372
    .local v0, cee:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/NotSerializableException;

    const-string v5, "security.30"

    iget-object v6, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    aget-object v6, v6, v3

    invoke-static {v5, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/NotSerializableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 148
    if-ne p1, p0, :cond_5

    move v2, v4

    .line 163
    :goto_4
    return v2

    .line 151
    :cond_5
    instance-of v2, p1, Ljava/security/UnresolvedPermission;

    if-eqz v2, :cond_4b

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/security/UnresolvedPermission;

    move-object v1, v0

    .line 153
    .local v1, that:Ljava/security/UnresolvedPermission;
    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    if-nez v2, :cond_41

    iget-object v2, v1, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    if-nez v2, :cond_4b

    :cond_23
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    if-nez v2, :cond_4d

    iget-object v2, v1, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    if-nez v2, :cond_4b

    :goto_2b
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    iget-object v3, v1, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, v1, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    iget-object v3, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    move v2, v4

    .line 160
    goto :goto_4

    .line 153
    :cond_41
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    iget-object v3, v1, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 163
    .end local v1           #that:Ljava/security/UnresolvedPermission;
    :cond_4b
    const/4 v2, 0x0

    goto :goto_4

    .line 153
    .restart local v1       #that:Ljava/security/UnresolvedPermission;
    :cond_4d
    iget-object v2, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    iget-object v3, v1, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_2b
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    const-string v0, ""

    return-object v0
.end method

.method public getUnresolvedActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    return-object v0
.end method

.method public getUnresolvedCerts()[Ljava/security/cert/Certificate;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    if-eqz v1, :cond_12

    .line 248
    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/cert/Certificate;

    .line 249
    .local v0, certs:[Ljava/security/cert/Certificate;
    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 252
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getUnresolvedName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnresolvedType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    invoke-super {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 178
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    if-nez v0, :cond_2c

    .line 179
    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 180
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 181
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 183
    :cond_1d
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 184
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    .line 187
    :cond_2c
    iget v0, p0, Ljava/security/UnresolvedPermission;->hash:I

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 297
    new-instance v0, Ljava/security/UnresolvedPermissionCollection;

    invoke-direct {v0}, Ljava/security/UnresolvedPermissionCollection;-><init>()V

    return-object v0
.end method

.method resolve(Ljava/lang/Class;)Ljava/security/Permission;
    .registers 4
    .parameter "targetType"

    .prologue
    .line 323
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetCerts:[Ljava/security/cert/Certificate;

    invoke-virtual {p1}, Ljava/lang/Class;->getSigners()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 325
    :try_start_c
    iget-object v0, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_15

    move-result-object v0

    .line 332
    :goto_14
    return-object v0

    .line 328
    :catch_15
    move-exception v0

    .line 332
    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, " "

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(unresolved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/UnresolvedPermission;->targetActions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
