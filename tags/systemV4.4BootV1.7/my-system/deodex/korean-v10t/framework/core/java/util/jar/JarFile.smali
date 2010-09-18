.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileInputStream;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private closed:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private manifestEntry:Ljava/util/zip/ZipEntry;

.field verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 5
    .parameter "file"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 173
    if-eqz p2, :cond_13

    .line 174
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 176
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .registers 6
    .parameter "file"
    .parameter "verify"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 195
    if-eqz p2, :cond_13

    .line 196
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 198
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "filename"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 230
    if-eqz p2, :cond_f

    .line 231
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-direct {v0, p1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 233
    :cond_f
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 234
    return-void
.end method

.method private getAllBytesFromStreamAndClose(Ljava/io/InputStream;)[B
    .registers 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    .local v0, bs:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x29a

    :try_start_7
    new-array v1, v3, [B

    .line 290
    .local v1, buf:[B
    :cond_9
    :goto_9
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_21

    .line 291
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 292
    .local v2, iRead:I
    if-lez v2, :cond_9

    .line 293
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_9

    .line 296
    .end local v1           #buf:[B
    .end local v2           #iRead:I
    :catchall_1c
    move-exception v3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1       #buf:[B
    :cond_21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 298
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private getMetaEntriesImpl([B)[Ljava/util/zip/ZipEntry;
    .registers 9
    .parameter "buf"

    .prologue
    .line 441
    const/4 v2, 0x0

    .line 443
    .local v2, n:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 446
    .local v0, allEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 447
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 448
    .local v4, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "META-INF/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-le v5, v6, :cond_a

    .line 449
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 452
    .end local v4           #ze:Ljava/util/zip/ZipEntry;
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_43

    .line 453
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/util/zip/ZipEntry;

    .line 454
    .local v3, result:[Ljava/util/zip/ZipEntry;
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v5, v3

    .line 458
    .end local v3           #result:[Ljava/util/zip/ZipEntry;
    :goto_42
    return-object v5

    :cond_43
    const/4 v5, 0x0

    goto :goto_42
.end method

.method private readMetaEntries()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Ljava/util/jar/JarFile;->getMetaEntriesImpl([B)[Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 345
    .local v8, metaEntries:[Ljava/util/zip/ZipEntry;
    const-string v10, "META-INF/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    .line 347
    .local v2, dirLength:I
    const/4 v9, 0x0

    .line 349
    .local v9, signed:Z
    if-eqz v8, :cond_36

    .line 350
    move-object v0, v8

    .local v0, arr$:[Ljava/util/zip/ZipEntry;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_11
    if-ge v5, v7, :cond_36

    aget-object v3, v0, v5

    .line 351
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, entryName:Ljava/lang/String;
    iget-object v10, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-nez v10, :cond_3c

    iget-object v10, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-nez v10, :cond_3c

    const-string v10, "META-INF/MANIFEST.MF"

    const-string v11, "META-INF/MANIFEST.MF"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v4, v2, v10, v2, v11}, Lorg/apache/harmony/archive/util/Util;->ASCIIIgnoreCaseRegionMatches(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 357
    iput-object v3, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    .line 358
    iget-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-nez v10, :cond_84

    .line 374
    .end local v0           #arr$:[Ljava/util/zip/ZipEntry;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #entryName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_36
    if-nez v9, :cond_3b

    .line 375
    const/4 v10, 0x0

    iput-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 377
    :cond_3b
    return-void

    .line 361
    .restart local v0       #arr$:[Ljava/util/zip/ZipEntry;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #entryName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    :cond_3c
    iget-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v10, :cond_84

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v2, :cond_84

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    sub-int/2addr v10, v11

    const-string v11, ".SF"

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v4, v10, v11, v12, v13}, Lorg/apache/harmony/archive/util/Util;->ASCIIIgnoreCaseRegionMatches(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_76

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    sub-int/2addr v10, v11

    const-string v11, ".DSA"

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v4, v10, v11, v12, v13}, Lorg/apache/harmony/archive/util/Util;->ASCIIIgnoreCaseRegionMatches(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_76

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    sub-int/2addr v10, v11

    const-string v11, ".RSA"

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v4, v10, v11, v12, v13}, Lorg/apache/harmony/archive/util/Util;->ASCIIIgnoreCaseRegionMatches(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 365
    :cond_76
    const/4 v9, 0x1

    .line 366
    invoke-super {p0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 368
    .local v6, is:Ljava/io/InputStream;
    invoke-direct {p0, v6}, Ljava/util/jar/JarFile;->getAllBytesFromStreamAndClose(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 370
    .local v1, buf:[B
    iget-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v10, v4, v1}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 350
    .end local v1           #buf:[B
    .end local v6           #is:Ljava/io/InputStream;
    :cond_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_11
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 475
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/util/jar/JarFile$1JarFileEnumerator;

    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Ljava/util/jar/JarFile$1JarFileEnumerator;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 5
    .parameter "name"

    .prologue
    .line 430
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 431
    .local v1, ze:Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_8

    move-object v2, v1

    .line 436
    :goto_7
    return-object v2

    .line 434
    :cond_8
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 435
    .local v0, je:Ljava/util/jar/JarEntry;
    iput-object p0, v0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    move-object v2, v0

    .line 436
    goto :goto_7
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 9
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 392
    iget-object v1, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_8

    .line 393
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 395
    :cond_8
    iget-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_43

    .line 396
    iget-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/jar/JarVerifier;->setManifest(Ljava/util/jar/Manifest;)V

    .line 397
    iget-object v1, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_23

    .line 398
    iget-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributesChunk()[B

    move-result-object v2

    iput-object v2, v1, Ljava/util/jar/JarVerifier;->mainAttributesChunk:[B

    .line 401
    :cond_23
    iget-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 402
    iget-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->removeMetaEntries()V

    .line 403
    iget-object v1, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_39

    .line 404
    iget-object v1, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v1}, Ljava/util/jar/Manifest;->removeChunks()V

    .line 406
    :cond_39
    iget-object v1, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    move-result v1

    if-nez v1, :cond_43

    .line 407
    iput-object v6, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 411
    :cond_43
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 412
    .local v0, in:Ljava/io/InputStream;
    if-nez v0, :cond_4b

    move-object v1, v6

    .line 415
    :goto_4a
    return-object v1

    :cond_4b
    new-instance v1, Ljava/util/jar/JarFile$JarFileInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5d

    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    :goto_59
    invoke-direct {v1, v0, p1, v2}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier;)V

    goto :goto_4a

    :cond_5d
    move-object v2, v6

    goto :goto_59
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .registers 2
    .parameter "name"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/jar/JarEntry;

    return-object p0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz v2, :cond_d

    .line 317
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "JarFile has been closed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_d
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v2, :cond_14

    .line 321
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 340
    :goto_13
    return-object v2

    .line 325
    :cond_14
    :try_start_14
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 326
    .local v1, is:Ljava/io/InputStream;
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_33

    .line 327
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Ljava/util/jar/JarFile;->getAllBytesFromStreamAndClose(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 328
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_32} :catch_4f

    move-result-object v1

    .line 332
    :cond_33
    :try_start_33
    new-instance v2, Ljava/util/jar/Manifest;

    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_48

    const/4 v3, 0x1

    :goto_3a
    invoke-direct {v2, v1, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;Z)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_4a

    .line 334
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 336
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_45} :catch_4f

    .line 340
    .end local v1           #is:Ljava/io/InputStream;
    :goto_45
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    goto :goto_13

    .line 332
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_48
    const/4 v3, 0x0

    goto :goto_3a

    .line 334
    :catchall_4a
    move-exception v2

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_4b .. :try_end_4f} :catch_4f

    .line 337
    .end local v1           #is:Ljava/io/InputStream;
    :catch_4f
    move-exception v2

    move-object v0, v2

    .line 338
    .local v0, e:Ljava/lang/NullPointerException;
    iput-object v5, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    goto :goto_45
.end method
