.class public abstract Lorg/apache/harmony/security/asn1/ASN1Choice;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Choice.java"


# instance fields
.field private final identifiers:[[I

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 14
    .parameter "type"

    .prologue
    const/4 v11, 0x0

    .line 230
    invoke-direct {p0, v11}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    .line 232
    array-length v9, p1

    if-nez v9, :cond_1b

    .line 233
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "security.10E"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 238
    :cond_1b
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 239
    .local v6, map:Ljava/util/TreeMap;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_21
    array-length v9, p1

    if-ge v3, v9, :cond_73

    .line 241
    aget-object v8, p1, v3

    .line 243
    .local v8, t:Lorg/apache/harmony/security/asn1/ASN1Type;
    instance-of v9, v8, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v9, :cond_3e

    .line 246
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "security.10F"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 248
    :cond_3e
    instance-of v9, v8, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-eqz v9, :cond_56

    .line 251
    check-cast v8, Lorg/apache/harmony/security/asn1/ASN1Choice;

    .end local v8           #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-object v0, v8, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    .line 252
    .local v0, choiceToAdd:[[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_47
    aget-object v9, v0, v11

    array-length v9, v9

    if-ge v5, v9, :cond_70

    .line 253
    aget-object v9, v0, v11

    aget v9, v9, v5

    invoke-direct {p0, v6, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 259
    .end local v0           #choiceToAdd:[[I
    .end local v5           #j:I
    .restart local v8       #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    :cond_56
    iget v9, v8, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {v8, v9}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 260
    iget v9, v8, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-direct {p0, v6, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 264
    :cond_63
    iget v9, v8, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {v8, v9}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 265
    iget v9, v8, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-direct {p0, v6, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Choice;->addIdentifier(Ljava/util/TreeMap;II)V

    .line 239
    .end local v8           #t:Lorg/apache/harmony/security/asn1/ASN1Type;
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 270
    :cond_73
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v7

    .line 271
    .local v7, size:I
    const/4 v9, 0x2

    filled-new-array {v9, v7}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    iput-object v9, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    .line 272
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 273
    .local v4, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8f
    if-ge v1, v7, :cond_b5

    .line 274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 276
    .local v2, identifier:Ljava/math/BigInteger;
    iget-object v9, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v9, v9, v11

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    aput v10, v9, v1

    .line 277
    iget-object v9, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {v6, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    aput v9, v10, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 280
    .end local v2           #identifier:Ljava/math/BigInteger;
    :cond_b5
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 281
    return-void
.end method

.method private addIdentifier(Ljava/util/TreeMap;II)V
    .registers 7
    .parameter "map"
    .parameter "identifier"
    .parameter "index"

    .prologue
    .line 284
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.10F"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_24
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .registers 4
    .parameter "identifier"

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 311
    .local v0, index:I
    if-gez v0, :cond_21

    .line 312
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.110"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_21
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->identifiers:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 318
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Choice;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 321
    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    .line 323
    iget-boolean v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v1, :cond_3a

    .line 324
    const/4 v1, 0x0

    .line 326
    :goto_39
    return-object v1

    :cond_3a
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_39
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 337
    return-void
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 340
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    .line 341
    return-void
.end method

.method public abstract getIndex(Ljava/lang/Object;)I
.end method

.method public abstract getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 354
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V

    .line 355
    return-void
.end method
