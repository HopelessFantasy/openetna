.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierEntry;
    }
.end annotation


# static fields
.field private static averageTime:J

.field private static measureCount:J


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field mainAttributesChunk:[B

.field private man:Ljava/util/jar/Manifest;

.field private metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 80
    sput-wide v0, Ljava/util/jar/JarVerifier;->measureCount:J

    .line 82
    sput-wide v0, Ljava/util/jar/JarVerifier;->averageTime:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x5

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    .line 131
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;
    .registers 8
    .parameter "signatureFileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, certificates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/security/cert/Certificate;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 502
    .local v5, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 503
    .local v1, certChain:[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_1a

    .line 504
    move-object v0, v1

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_10
    if-ge v3, v4, :cond_1a

    aget-object v2, v0, v3

    .line 505
    .local v2, element:Ljava/security/cert/Certificate;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 508
    .end local v0           #arr$:[Ljava/security/cert/Certificate;
    .end local v2           #element:Ljava/security/cert/Certificate;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1a
    return-object v5
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BZZ)Z
    .registers 17
    .parameter "attributes"
    .parameter "entry"
    .parameter "data"
    .parameter "ignoreSecondEndline"
    .parameter "ignorable"

    .prologue
    .line 417
    const-string v8, "Digest-Algorithms"

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, algorithms:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 419
    const-string v1, "SHA SHA1"

    .line 421
    :cond_a
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 422
    .local v7, tokens:Ljava/util/StringTokenizer;
    :cond_f
    :goto_f
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 423
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, algorithm:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, hash:Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 432
    :try_start_30
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_33} :catch_62

    move-result-object v6

    .line 437
    .local v6, md:Ljava/security/MessageDigest;
    if-eqz p4, :cond_64

    array-length v8, p3

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_64

    array-length v8, p3

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_64

    .line 439
    const/4 v8, 0x0

    array-length v9, p3

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v6, p3, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 443
    :goto_4f
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 446
    .local v2, b:[B
    :try_start_53
    const-string v8, "ISO8859_1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_53 .. :try_end_58} :catch_6a

    move-result-object v5

    .line 450
    .local v5, hashBytes:[B
    invoke-static {v5}, Lorg/apache/harmony/luni/util/Base64;->decode([B)[B

    move-result-object v8

    invoke-static {v2, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v8

    .line 452
    .end local v0           #algorithm:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v4           #hash:Ljava/lang/String;
    .end local v5           #hashBytes:[B
    .end local v6           #md:Ljava/security/MessageDigest;
    :goto_61
    return v8

    .line 434
    .restart local v0       #algorithm:Ljava/lang/String;
    .restart local v4       #hash:Ljava/lang/String;
    :catch_62
    move-exception v3

    .line 435
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_f

    .line 441
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v6       #md:Ljava/security/MessageDigest;
    :cond_64
    const/4 v8, 0x0

    array-length v9, p3

    invoke-virtual {v6, p3, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4f

    .line 447
    .restart local v2       #b:[B
    :catch_6a
    move-exception v8

    move-object v3, v8

    .line 448
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0           #algorithm:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #hash:Ljava/lang/String;
    .end local v6           #md:Ljava/security/MessageDigest;
    :cond_76
    move/from16 v8, p5

    .line 452
    goto :goto_61
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .registers 27
    .parameter "certFile"

    .prologue
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x2e

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".SF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 279
    .local v23, signatureFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    .line 280
    .local v22, sfBytes:[B
    if-nez v22, :cond_36

    .line 365
    .end local p1
    :cond_35
    :goto_35
    return-void

    .line 284
    .restart local p1
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    .line 286
    .local v21, sBlockBytes:[B
    :try_start_44
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3, v4}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v24

    .line 293
    .local v24, signerCertChain:[Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v3, v0

    if-eqz v3, :cond_35

    .line 296
    if-eqz v24, :cond_6e

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_6e} :catch_cf
    .catch Ljava/security/GeneralSecurityException; {:try_start_44 .. :try_end_6e} :catch_d4

    .line 308
    :cond_6e
    new-instance v5, Ljava/util/jar/Attributes;

    invoke-direct {v5}, Ljava/util/jar/Attributes;-><init>()V

    .line 309
    .local v5, attributes:Ljava/util/jar/Attributes;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v6, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_78
    new-instance v3, Ljava/util/jar/InitManifest;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v7, 0x0

    const-string v8, "Signature-Version"

    invoke-direct/range {v3 .. v8}, Ljava/util/jar/InitManifest;-><init>(Ljava/io/InputStream;Ljava/util/jar/Attributes;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_88} :catch_ec

    .line 317
    const/4 v15, 0x0

    .line 318
    .local v15, createdBySigntool:Z
    const-string v3, "Created-By"

    invoke-virtual {v5, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 319
    .local v17, createdByValue:Ljava/lang/String;
    if-eqz v17, :cond_9f

    .line 320
    const-string v3, "signtool"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f1

    const/4 v3, 0x1

    move v15, v3

    .line 328
    :cond_9f
    :goto_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->mainAttributesChunk:[B

    move-object v3, v0

    if-eqz v3, :cond_f4

    if-nez v15, :cond_f4

    .line 329
    const-string v9, "-Digest-Manifest-Main-Attributes"

    .line 330
    .local v9, digestAttribute:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->mainAttributesChunk:[B

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object v8, v5

    invoke-direct/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BZZ)Z

    move-result v3

    if-nez v3, :cond_f4

    .line 333
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "archive.30"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object v5, v0

    .end local v5           #attributes:Ljava/util/jar/Attributes;
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    .end local v6           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v9           #digestAttribute:Ljava/lang/String;
    .end local v15           #createdBySigntool:Z
    .end local v17           #createdByValue:Ljava/lang/String;
    .end local v24           #signerCertChain:[Ljava/security/cert/Certificate;
    :catch_cf
    move-exception v3

    move-object/from16 v18, v3

    .line 300
    .local v18, e:Ljava/io/IOException;
    goto/16 :goto_35

    .line 301
    .end local v18           #e:Ljava/io/IOException;
    :catch_d4
    move-exception v3

    move-object/from16 v18, v3

    .line 303
    .local v18, e:Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "archive.30"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    .end local v18           #e:Ljava/security/GeneralSecurityException;
    .restart local v5       #attributes:Ljava/util/jar/Attributes;
    .restart local v6       #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v24       #signerCertChain:[Ljava/security/cert/Certificate;
    :catch_ec
    move-exception v3

    move-object/from16 v18, v3

    .line 314
    .local v18, e:Ljava/io/IOException;
    goto/16 :goto_35

    .line 320
    .end local v18           #e:Ljava/io/IOException;
    .restart local v15       #createdBySigntool:Z
    .restart local v17       #createdByValue:Ljava/lang/String;
    :cond_f1
    const/4 v3, 0x0

    move v15, v3

    goto :goto_9f

    .line 338
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v3, v0

    const-string v4, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 339
    .local v10, manifest:[B
    if-eqz v10, :cond_35

    .line 343
    if-eqz v15, :cond_16e

    const-string v3, "-Digest"

    move-object v9, v3

    .line 345
    .restart local v9       #digestAttribute:Ljava/lang/String;
    :goto_108
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v5

    invoke-direct/range {v7 .. v12}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BZZ)Z

    move-result v3

    if-nez v3, :cond_172

    .line 346
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 348
    .end local p1
    .local v20, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_11b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_172

    .line 349
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 350
    .local v19, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object v3, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getChunk(Ljava/lang/String;)[B

    move-result-object v14

    .line 351
    .local v14, chunk:[B
    if-eqz v14, :cond_35

    .line 354
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/jar/Attributes;

    const-string v13, "-Digest"

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BZZ)Z

    move-result v3

    if-nez v3, :cond_11b

    .line 357
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "archive.31"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .end local v5           #attributes:Ljava/util/jar/Attributes;
    const/4 v6, 0x0

    aput-object v23, v5, v6

    .end local v6           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    const/4 v6, 0x1

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    .end local v9           #digestAttribute:Ljava/lang/String;
    .end local v14           #chunk:[B
    .end local v19           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v20           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .restart local v5       #attributes:Ljava/util/jar/Attributes;
    .restart local v6       #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local p1
    :cond_16e
    const-string v3, "-Digest-Manifest"

    move-object v9, v3

    goto :goto_108

    .line 363
    .end local p1
    .restart local v9       #digestAttribute:Ljava/lang/String;
    :cond_172
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object v3, v0

    const/4 v4, 0x0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .registers 5
    .parameter "name"
    .parameter "buf"

    .prologue
    .line 231
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/apache/harmony/archive/util/Util;->toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .parameter "name"

    .prologue
    .line 465
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 466
    .local v0, verifiedCerts:[Ljava/security/cert/Certificate;
    if-nez v0, :cond_c

    .line 467
    const/4 v1, 0x0

    .line 469
    .end local p0
    :goto_b
    return-object v1

    .restart local p0
    :cond_c
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    move-object v1, p0

    goto :goto_b
.end method

.method initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;
    .registers 23
    .parameter "name"

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Hashtable;->size()I

    move-result v19

    if-nez v19, :cond_17

    .line 152
    :cond_14
    const/16 v19, 0x0

    .line 214
    :goto_16
    return-object v19

    .line 155
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v6

    .line 157
    .local v6, attributes:Ljava/util/jar/Attributes;
    if-nez v6, :cond_2a

    .line 158
    const/16 v19, 0x0

    goto :goto_16

    .line 161
    :cond_2a
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 162
    .local v8, certs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 164
    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :cond_3d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_81

    .line 165
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 166
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 167
    .local v13, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3d

    .line 169
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 171
    .local v17, signatureFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/jar/JarVerifier;->getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v16

    .line 173
    .local v16, newCerts:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 174
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    :goto_70
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3d

    .line 175
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 181
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v13           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    .end local v16           #newCerts:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    .end local v17           #signatureFile:Ljava/lang/String;
    :cond_81
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v19

    if-nez v19, :cond_8a

    .line 182
    const/16 v19, 0x0

    goto :goto_16

    .line 184
    :cond_8a
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object v7, v0

    .line 185
    .local v7, certificatesArray:[Ljava/security/cert/Certificate;
    invoke-virtual {v8, v7}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 187
    const-string v19, "Digest-Algorithms"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, algorithms:Ljava/lang/String;
    if-nez v5, :cond_a3

    .line 189
    const-string v5, "SHA SHA1"

    .line 191
    :cond_a3
    new-instance v18, Ljava/util/StringTokenizer;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 192
    .local v18, tokens:Ljava/util/StringTokenizer;
    :cond_ab
    :goto_ab
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_fd

    .line 193
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, algorithm:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-Digest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, hash:Ljava/lang/String;
    if-eqz v11, :cond_ab

    .line 200
    :try_start_d4
    const-string v19, "ISO8859_1"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_dc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d4 .. :try_end_dc} :catch_f0

    move-result-object v12

    .line 207
    .local v12, hashBytes:[B
    :try_start_dd
    new-instance v19, Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v12

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/util/jar/JarVerifier$VerifierEntry;-><init>(Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    :try_end_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_dd .. :try_end_ec} :catch_ee

    goto/16 :goto_16

    .line 210
    :catch_ee
    move-exception v19

    goto :goto_ab

    .line 201
    .end local v12           #hashBytes:[B
    :catch_f0
    move-exception v19

    move-object/from16 v9, v19

    .line 202
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    new-instance v19, Ljava/lang/RuntimeException;

    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 214
    .end local v4           #algorithm:Ljava/lang/String;
    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    .end local v11           #hash:Ljava/lang/String;
    :cond_fd
    const/16 v19, 0x0

    goto/16 :goto_16
.end method

.method isSignedJar()Z
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method declared-synchronized readCertificates()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 254
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3c

    if-nez v2, :cond_9

    move v2, v3

    .line 269
    :goto_7
    monitor-exit p0

    return v2

    .line 257
    :cond_9
    :try_start_9
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    .local v1, key:Ljava/lang/String;
    const-string v2, ".DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, ".RSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 261
    :cond_2f
    invoke-direct {p0, v1}, Ljava/util/jar/JarVerifier;->verifyCertificate(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-nez v2, :cond_38

    move v2, v3

    .line 264
    goto :goto_7

    .line 266
    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_3c

    goto :goto_13

    .line 254
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #key:Ljava/lang/String;
    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 269
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3f
    const/4 v2, 0x1

    goto :goto_7
.end method

.method removeMetaEntries()V
    .registers 2

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 480
    return-void
.end method

.method setManifest(Ljava/util/jar/Manifest;)V
    .registers 2
    .parameter "mf"

    .prologue
    .line 374
    iput-object p1, p0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    .line 375
    return-void
.end method

.method verifySignatures(Ljava/util/jar/JarVerifier$VerifierEntry;Ljava/util/zip/ZipEntry;)V
    .registers 9
    .parameter "entry"
    .parameter "zipEntry"

    .prologue
    .line 395
    iget-object v1, p1, Ljava/util/jar/JarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 396
    .local v0, digest:[B
    iget-object v1, p1, Ljava/util/jar/JarVerifier$VerifierEntry;->hash:[B

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Base64;->decode([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_32

    .line 398
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "archive.31"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "META-INF/MANIFEST.MF"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_32
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Ljava/util/jar/JarVerifier$VerifierEntry;->certificates:[Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method
