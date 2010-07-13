.class public Ljava/net/URLClassLoader;
.super Ljava/security/SecureClassLoader;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLClassLoader$SubURLClassLoader;
    }
.end annotation


# static fields
.field private static NO_PATH:[Ljava/net/URL;


# instance fields
.field private currentContext:Ljava/security/AccessControlContext;

.field extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "[",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Ljava/net/URLStreamHandlerFactory;

.field indexes:[Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field invalidUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field orgUrls:[Ljava/net/URL;

.field private resCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field

.field urls:[Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    sput-object v0, Ljava/net/URLClassLoader;->NO_PATH:[Ljava/net/URL;

    return-void
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .registers 4
    .parameter "urls"

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 152
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "urls"
    .parameter "parent"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 172
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V
    .registers 10
    .parameter "searchUrls"
    .parameter "parent"
    .parameter "factory"

    .prologue
    .line 585
    invoke-direct {p0, p2}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 75
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    .line 77
    new-instance v3, Ljava/util/IdentityHashMap;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    .line 80
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Ljava/net/URLClassLoader;->lock:Ljava/lang/Object;

    .line 587
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 588
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2b

    .line 589
    invoke-virtual {v2}, Ljava/lang/SecurityManager;->checkCreateClassLoader()V

    .line 591
    :cond_2b
    iput-object p3, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 593
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    .line 594
    array-length v1, p1

    .line 595
    .local v1, nbUrls:I
    new-array v3, v1, [Ljava/net/URL;

    iput-object v3, p0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    .line 596
    new-array v3, v1, [Ljava/net/URL;

    iput-object v3, p0, Ljava/net/URLClassLoader;->orgUrls:[Ljava/net/URL;

    .line 598
    new-instance v3, Ljava/util/HashMap;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    .line 599
    const/4 v0, 0x0

    .local v0, i:I
    :goto_46
    if-ge v0, v1, :cond_65

    .line 601
    :try_start_48
    iget-object v3, p0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    aget-object v4, p1, v0

    invoke-direct {p0, v4}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v4

    aput-object v4, v3, v0

    .line 602
    iget-object v3, p0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    iget-object v4, p0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/net/MalformedURLException; {:try_start_48 .. :try_end_5c} :catch_6c

    .line 605
    :goto_5c
    iget-object v3, p0, Ljava/net/URLClassLoader;->orgUrls:[Ljava/net/URL;

    aget-object v4, p1, v0

    aput-object v4, v3, v0

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 608
    :cond_65
    invoke-static {v1}, Ljava/net/URLClassLoader;->newHashtableArray(I)[Ljava/util/Hashtable;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    .line 609
    return-void

    .line 603
    :catch_6c
    move-exception v3

    goto :goto_5c
.end method

.method private createSearchURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const-string v7, "!/"

    const-string v2, ""

    const-string v1, "jar"

    .line 646
    if-nez p1, :cond_b

    move-object v0, p1

    .line 659
    :goto_a
    return-object v0

    .line 650
    :cond_b
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, protocol:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "jar"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    move-object v0, p1

    .line 653
    goto :goto_a

    .line 655
    :cond_1f
    iget-object v0, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    if-nez v0, :cond_44

    .line 656
    new-instance v0, Ljava/net/URL;

    const-string v4, "jar"

    const-string v4, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a

    .line 659
    :cond_44
    new-instance v0, Ljava/net/URL;

    const-string v4, "jar"

    const-string v4, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URLClassLoader;->factory:Ljava/net/URLStreamHandlerFactory;

    invoke-interface {v5, v6}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_a
.end method

.method private static getBytes(Ljava/io/InputStream;Z)[B
    .registers 8
    .parameter "is"
    .parameter "readAvailable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 425
    if-eqz p1, :cond_12

    .line 426
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v1, v4, [B

    .line 427
    .local v1, buf:[B
    array-length v4, v1

    invoke-virtual {p0, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    .line 428
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    move-object v4, v1

    .line 441
    :goto_11
    return-object v4

    .line 431
    .end local v1           #buf:[B
    :cond_12
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 432
    .restart local v1       #buf:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 433
    .local v3, size:I
    const/16 v4, 0x400

    if-ge v3, v4, :cond_20

    .line 434
    const/16 v3, 0x400

    .line 436
    :cond_20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 438
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :goto_25
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_2f

    .line 439
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_25

    .line 441
    :cond_2f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_11
.end method

.method private getInternalURLs(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .registers 19
    .parameter "root"
    .parameter "classpath"

    .prologue
    .line 953
    new-instance v12, Ljava/util/StringTokenizer;

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 954
    .local v12, tokenizer:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 955
    .local v2, addedURLs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    .line 956
    .local v4, file:Ljava/lang/String;
    const-string v13, "!/"

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    sub-int v7, v13, v14

    .line 957
    .local v7, jarIndex:I
    const-string v13, "/"

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v6, v13, 0x1

    .line 958
    .local v6, index:I
    if-nez v6, :cond_30

    .line 959
    const-string v13, "file.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v6, v13, 0x1

    .line 962
    :cond_30
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 963
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    .line 964
    .local v11, protocol:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 965
    .local v5, host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v10

    .line 966
    .local v10, port:I
    :cond_41
    :goto_41
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_93

    .line 967
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, element:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_41

    .line 970
    :try_start_53
    new-instance v8, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "!/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v11, v5, v10, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 972
    .local v8, newURL:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13
    :try_end_75
    .catch Ljava/net/MalformedURLException; {:try_start_53 .. :try_end_75} :catch_91

    .line 973
    :try_start_75
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8c

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_8c
    monitor-exit v13

    goto :goto_41

    :catchall_8e
    move-exception v14

    monitor-exit v13
    :try_end_90
    .catchall {:try_start_75 .. :try_end_90} :catchall_8e

    :try_start_90
    throw v14
    :try_end_91
    .catch Ljava/net/MalformedURLException; {:try_start_90 .. :try_end_91} :catch_91

    .line 978
    .end local v8           #newURL:Ljava/net/URL;
    :catch_91
    move-exception v13

    goto :goto_41

    .line 983
    .end local v3           #element:Ljava/lang/String;
    :cond_93
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/net/URL;

    invoke-virtual {v2, v13}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/net/URL;

    .line 984
    .local v9, newURLs:[Ljava/net/URL;
    return-object v9
.end method

.method private static isDirectory(Ljava/net/URL;)Z
    .registers 5
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 509
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, file:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1a

    move v1, v3

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    .registers 10
    .parameter "manifest"
    .parameter "dirName"

    .prologue
    const-string v6, "true"

    .line 928
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 929
    .local v1, mainAttributes:Ljava/util/jar/Attributes;
    sget-object v4, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    move v2, v4

    .line 931
    .local v2, sealed:Z
    :goto_1c
    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v0

    .line 932
    .local v0, attributes:Ljava/util/jar/Attributes;
    if-eqz v0, :cond_34

    .line 933
    sget-object v4, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 934
    if-eqz v3, :cond_34

    .line 935
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 938
    :cond_34
    return v2

    .line 930
    .end local v0           #attributes:Ljava/util/jar/Attributes;
    .end local v2           #sealed:Z
    :cond_35
    const/4 v4, 0x0

    move v2, v4

    goto :goto_1c
.end method

.method private static newHashtableArray(I)[Ljava/util/Hashtable;
    .registers 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/Hashtable",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-array v0, p0, [Ljava/util/Hashtable;

    return-object v0
.end method

.method public static newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
    .registers 3
    .parameter "urls"

    .prologue
    .line 526
    new-instance v1, Ljava/net/URLClassLoader$2;

    invoke-direct {v1, p0}, Ljava/net/URLClassLoader$2;-><init>([Ljava/net/URL;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader;

    .line 532
    .local v0, sub:Ljava/net/URLClassLoader;
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    .line 533
    return-object v0
.end method

.method public static newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
    .registers 4
    .parameter "urls"
    .parameter "parentCl"

    .prologue
    .line 552
    new-instance v1, Ljava/net/URLClassLoader$3;

    invoke-direct {v1, p0, p1}, Ljava/net/URLClassLoader$3;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader;

    .line 558
    .local v0, sub:Ljava/net/URLClassLoader;
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    .line 559
    return-object v0
.end method

.method private readLines(Ljava/io/InputStream;)Ljava/util/List;
    .registers 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v8, 0x0

    const-string v9, "UTF8"

    .line 993
    const/16 v6, 0x90

    new-array v0, v6, [B

    .line 994
    .local v0, buff:[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v1, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 997
    .local v4, pos:I
    :cond_f
    :goto_f
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, next:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_4d

    .line 998
    if-ne v3, v10, :cond_24

    .line 999
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF8"

    invoke-direct {v6, v0, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    const/4 v4, 0x0

    .line 1001
    goto :goto_f

    .line 1003
    :cond_24
    const/16 v6, 0xd

    if-ne v3, v6, :cond_39

    .line 1004
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF8"

    invoke-direct {v6, v0, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    const/4 v4, 0x0

    .line 1006
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v10, :cond_f

    .line 1010
    :cond_39
    array-length v6, v0

    if-ne v4, v6, :cond_46

    .line 1011
    array-length v6, v0

    mul-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 1012
    .local v2, newBuf:[B
    array-length v6, v0

    invoke-static {v0, v8, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    move-object v0, v2

    .line 1015
    .end local v2           #newBuf:[B
    :cond_46
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .local v5, pos:I
    int-to-byte v6, v3

    aput-byte v6, v0, v4

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_f

    .line 1017
    :cond_4d
    if-lez v4, :cond_59

    .line 1018
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF8"

    invoke-direct {v6, v0, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_59
    return-object v1
.end method

.method private targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 11
    .parameter "base"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1025
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-static {p2, v1}, Ljava/net/URIEncoderDecoder;->quoteIllegal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1028
    .local v4, file:Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object v0

    .line 1030
    .end local v4           #file:Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object v6, v0

    .line 1031
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/net/MalformedURLException;

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v7, e2:Ljava/net/MalformedURLException;
    invoke-virtual {v7, v6}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1034
    throw v7
.end method


# virtual methods
.method protected addURL(Ljava/net/URL;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader;->createSearchURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    .line 184
    .local v0, search:Ljava/net/URL;
    iget-object v1, p0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    invoke-virtual {p0, v1, v0}, Ljava/net/URLClassLoader;->addURL([Ljava/net/URL;Ljava/net/URL;)[Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    .line 185
    iget-object v1, p0, Ljava/net/URLClassLoader;->orgUrls:[Ljava/net/URL;

    invoke-virtual {p0, v1, p1}, Ljava/net/URLClassLoader;->addURL([Ljava/net/URL;Ljava/net/URL;)[Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URLClassLoader;->orgUrls:[Ljava/net/URL;

    .line 186
    iget-object v1, p0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_17} :catch_22

    .line 187
    :try_start_17
    iget-object v2, p0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v1

    .line 191
    .end local v0           #search:Ljava/net/URL;
    :goto_1e
    return-void

    .line 188
    .restart local v0       #search:Ljava/net/URL;
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v2
    :try_end_22
    .catch Ljava/net/MalformedURLException; {:try_start_21 .. :try_end_22} :catch_22

    .line 189
    .end local v0           #search:Ljava/net/URL;
    :catch_22
    move-exception v1

    goto :goto_1e
.end method

.method addURL([Ljava/net/URL;Ljava/net/URL;)[Ljava/net/URL;
    .registers 8
    .parameter "urlArray"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 203
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/net/URL;

    .line 204
    .local v1, newPath:[Ljava/net/URL;
    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    array-length v2, p1

    aput-object p2, v1, v2

    .line 206
    iget-object v2, p0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/net/URLClassLoader;->newHashtableArray(I)[Ljava/util/Hashtable;

    move-result-object v0

    .line 207
    .local v0, newIndexes:[Ljava/util/Hashtable;,"[Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    iget-object v2, p0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    iget-object v3, p0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iput-object v0, p0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    .line 209
    return-object v1
.end method

.method protected definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;
    .registers 17
    .parameter "packageName"
    .parameter "manifest"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v10

    .line 877
    .local v10, mainAttributes:Ljava/util/jar/Attributes;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 878
    .local v9, dirName:Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v12

    .line 879
    .local v12, packageAttributes:Ljava/util/jar/Attributes;
    const/4 v11, 0x0

    .line 880
    .local v11, noEntry:Z
    if-nez v12, :cond_28

    .line 881
    const/4 v11, 0x1

    .line 882
    move-object v12, v10

    .line 884
    :cond_28
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, specificationTitle:Ljava/lang/String;
    if-nez v2, :cond_38

    if-nez v11, :cond_38

    .line 887
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 890
    :cond_38
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, specificationVersion:Ljava/lang/String;
    if-nez v3, :cond_48

    if-nez v11, :cond_48

    .line 893
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 896
    :cond_48
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 898
    .local v4, specificationVendor:Ljava/lang/String;
    if-nez v4, :cond_58

    if-nez v11, :cond_58

    .line 899
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 902
    :cond_58
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 904
    .local v5, implementationTitle:Ljava/lang/String;
    if-nez v5, :cond_68

    if-nez v11, :cond_68

    .line 905
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 908
    :cond_68
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 910
    .local v6, implementationVersion:Ljava/lang/String;
    if-nez v6, :cond_78

    if-nez v11, :cond_78

    .line 911
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    .line 914
    :cond_78
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v12, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 916
    .local v7, implementationVendor:Ljava/lang/String;
    if-nez v7, :cond_88

    if-nez v11, :cond_88

    .line 917
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 921
    :cond_88
    invoke-direct {p0, p2, v9}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    move-object/from16 v8, p3

    :goto_90
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    return-object v0

    :cond_97
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_90
.end method

.method explore(Ljava/net/URL;I)[Ljava/net/URL;
    .registers 28
    .parameter "url"
    .parameter "indexNumber"

    .prologue
    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1259
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/net/URL;

    .line 1260
    .local v10, internal:[Ljava/net/URL;
    monitor-exit v22

    .line 1261
    if-eqz v10, :cond_20

    move-object/from16 v22, v10

    .line 1347
    .end local p1
    :goto_1c
    return-object v22

    .line 1260
    .end local v10           #internal:[Ljava/net/URL;
    .restart local p1
    :catchall_1d
    move-exception v23

    monitor-exit v22
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v23

    .line 1264
    .restart local v10       #internal:[Ljava/net/URL;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    move-object/from16 v22, v0

    aget-object v22, v22, p2

    if-eqz v22, :cond_2d

    .line 1265
    const/16 v22, 0x0

    goto :goto_1c

    .line 1268
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    const-string v23, "jar"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3c

    .line 1269
    const/16 v22, 0x0

    goto :goto_1c

    .line 1272
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/jar/JarFile;

    .line 1274
    .local v14, jf:Ljava/util/jar/JarFile;
    const-string v22, "META-INF/INDEX.LIST"

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v21

    .line 1275
    .local v21, ze:Ljava/util/zip/ZipEntry;
    if-eqz v21, :cond_1b7

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    move-object/from16 v22, v0

    aget-object v22, v22, p2

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_195

    .line 1278
    :try_start_69
    new-instance v8, Ljava/util/Hashtable;

    const/16 v22, 0xf

    move-object v0, v8

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 1280
    .local v8, index:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 1281
    .local v9, indexIS:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/net/URLClassLoader;->readLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v15

    .line 1282
    .local v15, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1283
    invoke-interface {v15}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v11

    .line 1285
    .local v11, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1286
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1288
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/net/JarURLConnection;

    invoke-virtual/range {p1 .. p1}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v7

    .line 1290
    .local v7, fileURL:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 1291
    .local v6, file:Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v18

    .line 1292
    .local v18, parentFile:Ljava/lang/String;
    sget-char v22, Ljava/io/File;->separatorChar:C

    const/16 v23, 0x2f

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    .line 1293
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x2f

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_df

    .line 1294
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1296
    :cond_df
    new-instance v19, Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1298
    .local v19, parentURL:Ljava/net/URL;
    :cond_fa
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1ae

    .line 1299
    new-instance v12, Ljava/net/URL;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "jar:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "!/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v12, jar:Ljava/net/URL;
    const/16 v20, 0x0

    .line 1304
    .local v20, resource:Ljava/lang/String;
    :goto_13b
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_fa

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v20

    .end local v20           #resource:Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .restart local v20       #resource:Ljava/lang/String;
    const-string v22, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_fa

    .line 1305
    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_199

    .line 1306
    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/net/URL;

    .line 1307
    .local v13, jars:[Ljava/net/URL;
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/net/URL;

    move-object/from16 v17, v0

    .line 1308
    .local v17, newJars:[Ljava/net/URL;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v13

    array-length v0, v0

    move/from16 v24, v0

    move-object v0, v13

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1310
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    aput-object v12, v17, v22

    .line 1311
    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13b

    .line 1319
    .end local v6           #file:Ljava/lang/String;
    .end local v7           #fileURL:Ljava/net/URL;
    .end local v8           #index:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    .end local v9           #indexIS:Ljava/io/InputStream;
    .end local v11           #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v12           #jar:Ljava/net/URL;
    .end local v13           #jars:[Ljava/net/URL;
    .end local v15           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #newJars:[Ljava/net/URL;
    .end local v18           #parentFile:Ljava/lang/String;
    .end local v19           #parentURL:Ljava/net/URL;
    .end local v20           #resource:Ljava/lang/String;
    :catch_194
    move-exception v22

    .line 1325
    :cond_195
    :goto_195
    const/16 v22, 0x0

    goto/16 :goto_1c

    .line 1313
    .restart local v6       #file:Ljava/lang/String;
    .restart local v7       #fileURL:Ljava/net/URL;
    .restart local v8       #index:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    .restart local v9       #indexIS:Ljava/io/InputStream;
    .restart local v11       #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    .restart local v12       #jar:Ljava/net/URL;
    .restart local v15       #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18       #parentFile:Ljava/lang/String;
    .restart local v19       #parentURL:Ljava/net/URL;
    .restart local v20       #resource:Ljava/lang/String;
    :cond_199
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/net/URL;

    move-object v13, v0

    const/16 v22, 0x0

    aput-object v12, v13, v22

    .line 1314
    .restart local v13       #jars:[Ljava/net/URL;
    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13b

    .line 1321
    .end local v6           #file:Ljava/lang/String;
    .end local v7           #fileURL:Ljava/net/URL;
    .end local v8           #index:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    .end local v9           #indexIS:Ljava/io/InputStream;
    .end local v11           #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v12           #jar:Ljava/net/URL;
    .end local v13           #jars:[Ljava/net/URL;
    .end local v15           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v18           #parentFile:Ljava/lang/String;
    .end local v19           #parentURL:Ljava/net/URL;
    .end local v20           #resource:Ljava/lang/String;
    :catch_1ac
    move-exception v22

    goto :goto_195

    .line 1318
    .restart local v6       #file:Ljava/lang/String;
    .restart local v7       #fileURL:Ljava/net/URL;
    .restart local v8       #index:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    .restart local v9       #indexIS:Ljava/io/InputStream;
    .restart local v11       #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    .restart local v15       #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18       #parentFile:Ljava/lang/String;
    .restart local v19       #parentURL:Ljava/net/URL;
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    move-object/from16 v22, v0

    aput-object v8, v22, p2
    :try_end_1b6
    .catch Ljava/net/MalformedURLException; {:try_start_69 .. :try_end_1b6} :catch_194
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_1b6} :catch_1ac

    goto :goto_195

    .line 1329
    .end local v6           #file:Ljava/lang/String;
    .end local v7           #fileURL:Ljava/net/URL;
    .end local v8           #index:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    .end local v9           #indexIS:Ljava/io/InputStream;
    .end local v11           #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v15           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v18           #parentFile:Ljava/lang/String;
    .end local v19           #parentURL:Ljava/net/URL;
    .restart local p1
    :cond_1b7
    const/16 v16, 0x0

    .line 1331
    .local v16, manifest:Ljava/util/jar/Manifest;
    :try_start_1b9
    invoke-virtual {v14}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_20d

    move-result-object v16

    .line 1334
    :goto_1bd
    const/4 v5, 0x0

    .line 1335
    .local v5, classpath:Ljava/lang/String;
    if-eqz v16, :cond_1ca

    .line 1336
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v22

    sget-object v23, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual/range {v22 .. v23}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    .line 1339
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1340
    :try_start_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Ljava/net/URL;

    move-object v10, v0

    .line 1341
    if-nez v10, :cond_200

    .line 1342
    if-eqz v5, :cond_205

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;->getInternalURLs(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v23

    move-object/from16 v10, v23

    .line 1344
    :goto_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->extensions:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    :cond_200
    monitor-exit v22

    move-object/from16 v22, v10

    .line 1347
    goto/16 :goto_1c

    .line 1342
    :cond_205
    sget-object v23, Ljava/net/URLClassLoader;->NO_PATH:[Ljava/net/URL;

    move-object/from16 v10, v23

    goto :goto_1f2

    .line 1346
    :catchall_20a
    move-exception v23

    monitor-exit v22
    :try_end_20c
    .catchall {:try_start_1d1 .. :try_end_20c} :catchall_20a

    throw v23

    .line 1332
    .end local v5           #classpath:Ljava/lang/String;
    :catch_20d
    move-exception v22

    goto :goto_1bd
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 626
    new-instance v1, Ljava/net/URLClassLoader$4;

    invoke-direct {v1, p0, p1}, Ljava/net/URLClassLoader$4;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v2, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 632
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_10

    .line 633
    return-object v0

    .line 635
    :cond_10
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findClassImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Class;
    .registers 45
    .parameter "searchURLs"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1047
    const/16 v39, 0x0

    .line 1048
    .local v39, readAvailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    if-ne v0, v1, :cond_41

    const/4 v5, 0x1

    move/from16 v27, v5

    .line 1049
    .local v27, findInExtensions:Z
    :goto_f
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    move-object/from16 v0, p2

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1051
    .local v36, name:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2b
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    if-ge v10, v5, :cond_36f

    .line 1052
    aget-object v5, p1, v10

    if-nez v5, :cond_45

    .line 1054
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "KA024"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1048
    .end local v10           #i:I
    .end local v27           #findInExtensions:Z
    .end local v36           #name:Ljava/lang/String;
    :cond_41
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_f

    .line 1055
    .restart local v10       #i:I
    .restart local v27       #findInExtensions:Z
    .restart local v36       #name:Ljava/lang/String;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    aget-object v6, p1, v10

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8

    .line 1056
    const/16 v35, 0x0

    .line 1057
    .local v35, manifest:Ljava/util/jar/Manifest;
    const/16 v29, 0x0

    .line 1058
    .local v29, is:Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 1059
    .local v22, entry:Ljava/util/jar/JarEntry;
    const/16 v32, 0x0

    .line 1060
    .local v32, jf:Ljava/util/jar/JarFile;
    const/16 v16, 0x0

    .line 1062
    .local v16, clBuf:[B
    :try_start_5c
    aget-object v41, p1, v10

    .line 1063
    .local v41, thisURL:Ljava/net/URL;
    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v38

    .line 1064
    .local v38, protocol:Ljava/lang/String;
    const-string v5, "jar"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20d

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/util/jar/JarFile;

    move-object/from16 v32, v0

    .line 1066
    if-nez v32, :cond_fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fe

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->lock:Ljava/lang/Object;

    move-object v6, v0

    monitor-enter v6
    :try_end_95
    .catch Ljava/net/MalformedURLException; {:try_start_5c .. :try_end_95} :catch_13f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_95} :catch_1d1

    .line 1070
    :try_start_95
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/util/jar/JarFile;

    move-object/from16 v32, v0

    .line 1071
    if-nez v32, :cond_fd

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 1073
    monitor-exit v6

    .line 1051
    .end local v16           #clBuf:[B
    .end local v22           #entry:Ljava/util/jar/JarEntry;
    .end local v29           #is:Ljava/io/InputStream;
    .end local v32           #jf:Ljava/util/jar/JarFile;
    .end local v35           #manifest:Ljava/util/jar/Manifest;
    .end local v38           #protocol:Ljava/lang/String;
    .end local v41           #thisURL:Ljava/net/URL;
    :cond_b8
    :goto_b8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2b

    .line 1078
    .restart local v16       #clBuf:[B
    .restart local v22       #entry:Ljava/util/jar/JarEntry;
    .restart local v29       #is:Ljava/io/InputStream;
    .restart local v32       #jf:Ljava/util/jar/JarFile;
    .restart local v35       #manifest:Ljava/util/jar/Manifest;
    .restart local v38       #protocol:Ljava/lang/String;
    .restart local v41       #thisURL:Ljava/net/URL;
    :cond_bc
    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/JarURLConnection;

    invoke-virtual {v5}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_c5
    .catchall {:try_start_95 .. :try_end_c5} :catchall_13c

    move-result-object v31

    .line 1081
    .local v31, jarURL:Ljava/net/URL;
    :try_start_c6
    new-instance v5, Ljava/net/URL;

    const-string v7, "jar"

    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "!/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v33

    check-cast v33, Ljava/net/JarURLConnection;

    .line 1084
    .local v33, juc:Ljava/net/JarURLConnection;
    invoke-virtual/range {v33 .. v33}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v32

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v41

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fd
    .catchall {:try_start_c6 .. :try_end_fd} :catchall_13c
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_fd} :catch_12e

    .line 1092
    .end local v31           #jarURL:Ljava/net/URL;
    .end local v33           #juc:Ljava/net/JarURLConnection;
    :cond_fd
    :try_start_fd
    monitor-exit v6
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_13c

    .line 1094
    :cond_fe
    :try_start_fe
    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b2

    .line 1095
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v22

    .line 1111
    :goto_112
    if-eqz v22, :cond_140

    .line 1112
    const/16 v39, 0x1

    .line 1113
    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v29

    .line 1119
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/URLClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v34

    .line 1120
    .local v34, loadedClass:Ljava/lang/Class;
    if-eqz v34, :cond_207

    .line 1121
    invoke-virtual/range {v29 .. v29}, Ljava/io/InputStream;->close()V
    :try_end_12b
    .catch Ljava/net/MalformedURLException; {:try_start_fe .. :try_end_12b} :catch_13f
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_12b} :catch_1d1

    move-object/from16 v5, v34

    .line 1243
    .end local v10           #i:I
    .end local v16           #clBuf:[B
    .end local v22           #entry:Ljava/util/jar/JarEntry;
    .end local v29           #is:Ljava/io/InputStream;
    .end local v32           #jf:Ljava/util/jar/JarFile;
    .end local v34           #loadedClass:Ljava/lang/Class;
    .end local v35           #manifest:Ljava/util/jar/Manifest;
    .end local v38           #protocol:Ljava/lang/String;
    .end local v41           #thisURL:Ljava/net/URL;
    :goto_12d
    return-object v5

    .line 1086
    .restart local v10       #i:I
    .restart local v16       #clBuf:[B
    .restart local v22       #entry:Ljava/util/jar/JarEntry;
    .restart local v29       #is:Ljava/io/InputStream;
    .restart local v31       #jarURL:Ljava/net/URL;
    .restart local v32       #jf:Ljava/util/jar/JarFile;
    .restart local v35       #manifest:Ljava/util/jar/Manifest;
    .restart local v38       #protocol:Ljava/lang/String;
    .restart local v41       #thisURL:Ljava/net/URL;
    :catch_12e
    move-exception v5

    move-object/from16 v21, v5

    .line 1088
    .local v21, e:Ljava/io/IOException;
    :try_start_131
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    aget-object v7, p1, v10

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1089
    throw v21

    .line 1092
    .end local v21           #e:Ljava/io/IOException;
    .end local v31           #jarURL:Ljava/net/URL;
    :catchall_13c
    move-exception v5

    monitor-exit v6
    :try_end_13e
    .catchall {:try_start_131 .. :try_end_13e} :catchall_13c

    :try_start_13e
    throw v5
    :try_end_13f
    .catch Ljava/net/MalformedURLException; {:try_start_13e .. :try_end_13f} :catch_13f
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_13f} :catch_1d1

    .line 1159
    .end local v38           #protocol:Ljava/lang/String;
    .end local v41           #thisURL:Ljava/net/URL;
    :catch_13f
    move-exception v5

    .line 1163
    :cond_140
    :goto_140
    if-eqz v29, :cond_333

    .line 1164
    const/16 v18, 0x0

    .line 1165
    .local v18, codeSourceURL:Ljava/net/URL;
    const/4 v15, 0x0

    .line 1166
    .local v15, certificates:[Ljava/security/cert/Certificate;
    const/16 v17, 0x0

    .line 1168
    .local v17, codeS:Ljava/security/CodeSource;
    if-eqz v27, :cond_2b6

    :try_start_149
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->orgUrls:[Ljava/net/URL;

    move-object v5, v0

    aget-object v5, v5, v10
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_150} :catch_2c6

    move-object/from16 v18, v5

    .line 1174
    :goto_152
    if-eqz v29, :cond_15f

    .line 1176
    :try_start_154
    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/net/URLClassLoader;->getBytes(Ljava/io/InputStream;Z)[B

    move-result-object v16

    .line 1177
    invoke-virtual/range {v29 .. v29}, Ljava/io/InputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_15f} :catch_2cd

    .line 1182
    :cond_15f
    if-eqz v22, :cond_165

    .line 1183
    invoke-virtual/range {v22 .. v22}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v15

    .line 1186
    :cond_165
    new-instance v17, Ljava/security/CodeSource;

    .end local v17           #codeS:Ljava/security/CodeSource;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 1187
    .restart local v17       #codeS:Ljava/security/CodeSource;
    const-string v5, "."

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    .line 1188
    .local v20, dotIndex:I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_19f

    .line 1189
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1190
    .local v6, packageName:Ljava/lang/String;
    monitor-enter p0

    .line 1191
    :try_start_189
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v37

    .line 1192
    .local v37, packageObj:Ljava/lang/Package;
    if-nez v37, :cond_2e4

    .line 1193
    if-eqz v35, :cond_2d3

    .line 1194
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v35

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    .line 1218
    .end local v6           #packageName:Ljava/lang/String;
    .end local v10           #i:I
    :cond_19e
    :goto_19e
    monitor-exit p0
    :try_end_19f
    .catchall {:try_start_189 .. :try_end_19f} :catchall_2e1

    .line 1220
    .end local v37           #packageObj:Ljava/lang/Package;
    :cond_19f
    const/4 v10, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, v16

    move-object/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_12d

    .line 1097
    .end local v15           #certificates:[Ljava/security/cert/Certificate;
    .end local v17           #codeS:Ljava/security/CodeSource;
    .end local v18           #codeSourceURL:Ljava/net/URL;
    .end local v20           #dotIndex:I
    .restart local v10       #i:I
    .restart local v38       #protocol:Ljava/lang/String;
    .restart local v41       #thisURL:Ljava/net/URL;
    :cond_1b2
    :try_start_1b2
    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v25

    .line 1098
    .local v25, file:Ljava/lang/String;
    const-string v5, "!/"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    .line 1099
    .local v40, sepIdx:I
    const/4 v5, -0x1

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_1d4

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    aget-object v6, p1, v10

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b8

    .line 1161
    .end local v25           #file:Ljava/lang/String;
    .end local v38           #protocol:Ljava/lang/String;
    .end local v40           #sepIdx:I
    .end local v41           #thisURL:Ljava/net/URL;
    :catch_1d1
    move-exception v5

    goto/16 :goto_140

    .line 1104
    .restart local v25       #file:Ljava/lang/String;
    .restart local v38       #protocol:Ljava/lang/String;
    .restart local v40       #sepIdx:I
    .restart local v41       #thisURL:Ljava/net/URL;
    :cond_1d4
    add-int/lit8 v40, v40, 0x2

    .line 1105
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v6, v40

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1109
    .local v23, entryName:Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v22

    goto/16 :goto_112

    .line 1124
    .end local v23           #entryName:Ljava/lang/String;
    .end local v25           #file:Ljava/lang/String;
    .end local v40           #sepIdx:I
    .restart local v34       #loadedClass:Ljava/lang/Class;
    :cond_207
    invoke-virtual/range {v32 .. v32}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v35

    .line 1125
    goto/16 :goto_140

    .line 1126
    .end local v34           #loadedClass:Ljava/lang/Class;
    :cond_20d
    const-string v5, "file"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a6

    .line 1127
    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v26

    .line 1128
    .local v26, filename:Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v28

    .line 1129
    .local v28, host:Ljava/lang/String;
    if-eqz v28, :cond_27f

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_27f

    .line 1130
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_25b
    .catch Ljava/net/MalformedURLException; {:try_start_1b2 .. :try_end_25b} :catch_13f
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_25b} :catch_1d1

    move-result-object v26

    .line 1143
    :goto_25c
    :try_start_25c
    const-string v5, "UTF-8"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_264
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25c .. :try_end_264} :catch_2a0
    .catch Ljava/net/MalformedURLException; {:try_start_25c .. :try_end_264} :catch_13f
    .catch Ljava/io/IOException; {:try_start_25c .. :try_end_264} :catch_1d1

    move-result-object v26

    .line 1148
    :try_start_265
    new-instance v25, Ljava/io/File;

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v25, file:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 1151
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1152
    .end local v29           #is:Ljava/io/InputStream;
    .local v30, is:Ljava/io/InputStream;
    const/16 v39, 0x1

    move-object/from16 v29, v30

    .line 1156
    .end local v30           #is:Ljava/io/InputStream;
    .restart local v29       #is:Ljava/io/InputStream;
    goto/16 :goto_140

    .line 1135
    .end local v25           #file:Ljava/io/File;
    :cond_27f
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_25c

    .line 1144
    :catch_2a0
    move-exception v5

    move-object/from16 v21, v5

    .line 1145
    .local v21, e:Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    goto/16 :goto_12d

    .line 1157
    .end local v21           #e:Ljava/lang/IllegalArgumentException;
    .end local v26           #filename:Ljava/lang/String;
    .end local v28           #host:Ljava/lang/String;
    :cond_2a6
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_2b3
    .catch Ljava/net/MalformedURLException; {:try_start_265 .. :try_end_2b3} :catch_13f
    .catch Ljava/io/IOException; {:try_start_265 .. :try_end_2b3} :catch_1d1

    move-result-object v29

    goto/16 :goto_140

    .line 1168
    .end local v38           #protocol:Ljava/lang/String;
    .end local v41           #thisURL:Ljava/net/URL;
    .restart local v15       #certificates:[Ljava/security/cert/Certificate;
    .restart local v17       #codeS:Ljava/security/CodeSource;
    .restart local v18       #codeSourceURL:Ljava/net/URL;
    :cond_2b6
    :try_start_2b6
    aget-object v5, p1, v10

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/JarURLConnection;

    invoke-virtual {v5}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_2c1
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2c1} :catch_2c6

    move-result-object v5

    move-object/from16 v18, v5

    goto/16 :goto_152

    .line 1171
    :catch_2c6
    move-exception v5

    move-object/from16 v21, v5

    .line 1172
    .local v21, e:Ljava/io/IOException;
    aget-object v18, p1, v10

    goto/16 :goto_152

    .line 1178
    .end local v21           #e:Ljava/io/IOException;
    :catch_2cd
    move-exception v5

    move-object/from16 v21, v5

    .line 1179
    .restart local v21       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto/16 :goto_12d

    .line 1197
    .end local v21           #e:Ljava/io/IOException;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v20       #dotIndex:I
    .restart local v37       #packageObj:Ljava/lang/Package;
    :cond_2d3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    :try_start_2dc
    invoke-virtual/range {v5 .. v13}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto/16 :goto_19e

    .line 1218
    .end local v6           #packageName:Ljava/lang/String;
    .end local v10           #i:I
    .end local v37           #packageObj:Ljava/lang/Package;
    :catchall_2e1
    move-exception v5

    monitor-exit p0
    :try_end_2e3
    .catchall {:try_start_2dc .. :try_end_2e3} :catchall_2e1

    throw v5

    .line 1201
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v37       #packageObj:Ljava/lang/Package;
    :cond_2e4
    const/16 v24, 0x0

    .line 1202
    .local v24, exception:Z
    if-eqz v35, :cond_32e

    .line 1203
    :try_start_2e8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .end local v6           #packageName:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1206
    .local v19, dirName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31c

    .line 1207
    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v5

    if-nez v5, :cond_32a

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 1213
    .end local v19           #dirName:Ljava/lang/String;
    :cond_31c
    :goto_31c
    if-eqz v24, :cond_19e

    .line 1214
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "K004c"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1207
    .restart local v19       #dirName:Ljava/lang/String;
    :cond_32a
    const/4 v5, 0x0

    move/from16 v24, v5

    goto :goto_31c

    .line 1211
    .end local v19           #dirName:Ljava/lang/String;
    .restart local v6       #packageName:Ljava/lang/String;
    :cond_32e
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Package;->isSealed()Z
    :try_end_331
    .catchall {:try_start_2e8 .. :try_end_331} :catchall_2e1

    move-result v24

    goto :goto_31c

    .line 1222
    .end local v6           #packageName:Ljava/lang/String;
    .end local v15           #certificates:[Ljava/security/cert/Certificate;
    .end local v17           #codeS:Ljava/security/CodeSource;
    .end local v18           #codeSourceURL:Ljava/net/URL;
    .end local v20           #dotIndex:I
    .end local v24           #exception:Z
    .end local v37           #packageObj:Ljava/lang/Package;
    :cond_333
    if-eqz v32, :cond_b8

    if-eqz v27, :cond_b8

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    move-object v5, v0

    aget-object v5, v5, v10

    if-eqz v5, :cond_354

    .line 1225
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_342
    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/net/URLClassLoader;->findInIndex(ILjava/lang/String;Ljava/util/Vector;Z)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Class;
    :try_end_34f
    .catch Lorg/apache/harmony/luni/util/InvalidJarIndexException; {:try_start_342 .. :try_end_34f} :catch_372

    .line 1227
    .local v14, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v14, :cond_b8

    move-object v5, v14

    .line 1228
    goto/16 :goto_12d

    .line 1234
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_354
    aget-object v5, p1, v10

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->explore(Ljava/net/URL;I)[Ljava/net/URL;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v12}, Ljava/net/URLClassLoader;->findInExtensions([Ljava/net/URL;Ljava/lang/String;ILjava/util/Vector;Z)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Class;

    .line 1236
    .restart local v14       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v14, :cond_b8

    move-object v5, v14

    .line 1237
    goto/16 :goto_12d

    .line 1243
    .end local v14           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #clBuf:[B
    .end local v22           #entry:Ljava/util/jar/JarEntry;
    .end local v29           #is:Ljava/io/InputStream;
    .end local v32           #jf:Ljava/util/jar/JarFile;
    .end local v35           #manifest:Ljava/util/jar/Manifest;
    :cond_36f
    const/4 v5, 0x0

    goto/16 :goto_12d

    .line 1230
    .restart local v16       #clBuf:[B
    .restart local v22       #entry:Ljava/util/jar/JarEntry;
    .restart local v29       #is:Ljava/io/InputStream;
    .restart local v32       #jf:Ljava/util/jar/JarFile;
    .restart local v35       #manifest:Ljava/util/jar/Manifest;
    :catch_372
    move-exception v5

    goto/16 :goto_b8
.end method

.method findInExtensions([Ljava/net/URL;Ljava/lang/String;ILjava/util/Vector;Z)Ljava/lang/Object;
    .registers 22
    .parameter "newExtensions"
    .parameter "name"
    .parameter "i"
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/URL;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 370
    .local p4, resources:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    if-eqz p1, :cond_9d

    .line 371
    const/4 v12, 0x0

    .local v12, k:I
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    if-ge v12, v5, :cond_af

    .line 372
    aget-object v5, p1, v12

    if-eqz v5, :cond_57

    .line 373
    const/4 v5, 0x1

    new-array v15, v5, [Ljava/net/URL;

    const/4 v5, 0x0

    aget-object v6, p1, v12

    aput-object v6, v15, v5

    .line 374
    .local v15, search:[Ljava/net/URL;
    if-eqz p4, :cond_5a

    .line 375
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->findResourceImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    .line 376
    .local v13, res:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 378
    if-eqz v13, :cond_3f

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 379
    move-object/from16 v0, p4

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 381
    :cond_3f
    aget-object v5, p1, v12

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->explore(Ljava/net/URL;I)[Ljava/net/URL;

    move-result-object v6

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Ljava/net/URLClassLoader;->findInExtensions([Ljava/net/URL;Ljava/lang/String;ILjava/util/Vector;Z)Ljava/lang/Object;

    .line 371
    .end local v13           #res:Ljava/net/URL;
    .end local v15           #search:[Ljava/net/URL;
    :cond_57
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 386
    .restart local v15       #search:[Ljava/net/URL;
    :cond_5a
    if-eqz p5, :cond_69

    .line 387
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->findResourceImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v14

    .line 391
    :goto_65
    if-eqz v14, :cond_73

    move-object v5, v14

    .line 413
    .end local v12           #k:I
    .end local v15           #search:[Ljava/net/URL;
    :goto_68
    return-object v5

    .line 389
    .restart local v12       #k:I
    .restart local v15       #search:[Ljava/net/URL;
    :cond_69
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->findClassImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .local v14, result:Ljava/lang/Class;
    goto :goto_65

    .line 394
    .end local v14           #result:Ljava/lang/Class;
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 396
    aget-object v5, p1, v12

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->explore(Ljava/net/URL;I)[Ljava/net/URL;

    move-result-object v6

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Ljava/net/URLClassLoader;->findInExtensions([Ljava/net/URL;Ljava/lang/String;ILjava/util/Vector;Z)Ljava/lang/Object;

    move-result-object v14

    .line 398
    .local v14, result:Ljava/lang/Object;
    if-eqz v14, :cond_57

    move-object v5, v14

    .line 399
    goto :goto_68

    .line 407
    .end local v12           #k:I
    .end local v14           #result:Ljava/lang/Object;
    .end local v15           #search:[Ljava/net/URL;
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/net/URLClassLoader;->findInIndex(ILjava/lang/String;Ljava/util/Vector;Z)Ljava/lang/Object;
    :try_end_aa
    .catch Lorg/apache/harmony/luni/util/InvalidJarIndexException; {:try_start_9d .. :try_end_aa} :catch_ac

    move-result-object v5

    goto :goto_68

    .line 408
    :catch_ac
    move-exception v11

    .line 410
    .local v11, ex:Lorg/apache/harmony/luni/util/InvalidJarIndexException;
    const/4 v5, 0x0

    goto :goto_68

    .line 413
    .end local v11           #ex:Lorg/apache/harmony/luni/util/InvalidJarIndexException;
    .restart local v12       #k:I
    :cond_af
    const/4 v5, 0x0

    goto :goto_68
.end method

.method findInIndex(ILjava/lang/String;Ljava/util/Vector;Z)Ljava/lang/Object;
    .registers 22
    .parameter "i"
    .parameter "name"
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/URL;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 302
    .local p3, resources:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    move-object v14, v0

    aget-object v7, v14, p1

    .line 303
    .local v7, index:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[Ljava/net/URL;>;"
    if-eqz v7, :cond_32

    .line 304
    const-string v14, "/"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 307
    .local v12, pos:I
    if-lez v12, :cond_34

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move v1, v14

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 309
    .local v8, indexedName:Ljava/lang/String;
    :goto_1e
    if-eqz p3, :cond_37

    .line 310
    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/net/URL;

    .line 311
    .local v9, jarURLs:[Ljava/net/URL;
    if-eqz v9, :cond_32

    .line 312
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/URLClassLoader;->findResources([Ljava/net/URL;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    .line 344
    .end local v8           #indexedName:Ljava/lang/String;
    .end local v9           #jarURLs:[Ljava/net/URL;
    .end local v12           #pos:I
    :cond_32
    const/4 v14, 0x0

    :goto_33
    return-object v14

    .restart local v12       #pos:I
    :cond_34
    move-object/from16 v8, p2

    .line 307
    goto :goto_1e

    .line 314
    .restart local v8       #indexedName:Ljava/lang/String;
    :cond_37
    if-eqz p4, :cond_4b

    .line 315
    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/net/URL;

    .line 316
    .restart local v9       #jarURLs:[Ljava/net/URL;
    if-eqz v9, :cond_32

    .line 317
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->findResourceImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v14

    goto :goto_33

    .line 320
    .end local v9           #jarURLs:[Ljava/net/URL;
    :cond_4b
    move-object/from16 v6, p2

    .line 321
    .local v6, clsName:Ljava/lang/String;
    const/16 v14, 0x2e

    const/16 v15, 0x2f

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 323
    .local v11, partialName:Ljava/lang/String;
    const/16 v14, 0x2f

    invoke-virtual {v11, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .local v13, position:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_7b

    .line 324
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, packageName:Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/net/URL;

    .line 332
    .end local v10           #packageName:Ljava/lang/String;
    .restart local v9       #jarURLs:[Ljava/net/URL;
    :goto_69
    if-eqz v9, :cond_32

    .line 333
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->findClassImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 337
    .local v4, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v4, :cond_a2

    .line 338
    new-instance v14, Lorg/apache/harmony/luni/util/InvalidJarIndexException;

    invoke-direct {v14}, Lorg/apache/harmony/luni/util/InvalidJarIndexException;-><init>()V

    throw v14

    .line 327
    .end local v4           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #jarURLs:[Ljava/net/URL;
    :cond_7b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".class"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, className:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/net/URL;

    .restart local v9       #jarURLs:[Ljava/net/URL;
    goto :goto_69

    .end local v5           #className:Ljava/lang/String;
    .restart local v4       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a2
    move-object v14, v4

    .line 340
    goto :goto_33
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 8
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 675
    if-nez p1, :cond_5

    move-object v3, v5

    .line 693
    :goto_4
    return-object v3

    .line 678
    :cond_5
    new-instance v3, Ljava/net/URLClassLoader$5;

    invoke-direct {v3, p0, p1}, Ljava/net/URLClassLoader$5;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v4, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 684
    .local v1, result:Ljava/net/URL;
    if-eqz v1, :cond_25

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .local v2, sm:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_25

    .line 686
    :try_start_1a
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_25} :catch_2b

    .end local v2           #sm:Ljava/lang/SecurityManager;
    :cond_25
    move-object v3, v1

    .line 693
    goto :goto_4

    .line 687
    .restart local v2       #sm:Ljava/lang/SecurityManager;
    :catch_27
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    move-object v3, v5

    .line 688
    goto :goto_4

    .line 689
    .end local v0           #e:Ljava/io/IOException;
    :catch_2b
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/SecurityException;
    move-object v3, v5

    .line 690
    goto :goto_4
.end method

.method findResourceImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 34
    .parameter "searchList"
    .parameter "resName"

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    if-ne v0, v1, :cond_24

    const/4 v5, 0x1

    move/from16 v19, v5

    .line 708
    .local v19, findInExtensions:Z
    :goto_d
    const/4 v8, 0x0

    .line 709
    .local v8, i:I
    :cond_e
    :goto_e
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_254

    .line 710
    aget-object v5, p1, v8

    if-nez v5, :cond_28

    .line 712
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "KA024"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 707
    .end local v8           #i:I
    .end local v19           #findInExtensions:Z
    :cond_24
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_d

    .line 713
    .restart local v8       #i:I
    .restart local v19       #findInExtensions:Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    aget-object v6, p1, v8

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_250

    .line 714
    const/16 v24, 0x0

    .line 716
    .local v24, jf:Ljava/util/jar/JarFile;
    :try_start_37
    aget-object v14, p1, v8

    .line 717
    .local v14, currentUrl:Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v26

    .line 719
    .local v26, protocol:Ljava/lang/String;
    const-string v5, "jar"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/util/jar/JarFile;

    move-object/from16 v24, v0

    .line 721
    if-nez v24, :cond_ee

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->lock:Ljava/lang/Object;

    move-object v6, v0

    monitor-enter v6
    :try_end_6a
    .catch Ljava/net/MalformedURLException; {:try_start_37 .. :try_end_6a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_6a} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_6a} :catch_257

    .line 730
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/util/jar/JarFile;

    move-object/from16 v24, v0

    .line 731
    if-nez v24, :cond_ed

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 733
    monitor-exit v6

    goto :goto_e

    .line 754
    :catchall_88
    move-exception v5

    monitor-exit v6
    :try_end_8a
    .catchall {:try_start_6a .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v5
    :try_end_8b
    .catch Ljava/net/MalformedURLException; {:try_start_8a .. :try_end_8b} :catch_8b
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8b} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_8a .. :try_end_8b} :catch_257

    .line 828
    .end local v14           #currentUrl:Ljava/net/URL;
    .end local v26           #protocol:Ljava/lang/String;
    :catch_8b
    move-exception v5

    .line 833
    :cond_8c
    :goto_8c
    if-eqz v24, :cond_250

    if-eqz v19, :cond_250

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->indexes:[Ljava/util/Hashtable;

    move-object v5, v0

    aget-object v5, v5, v8

    if-eqz v5, :cond_233

    .line 836
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_9b
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/net/URLClassLoader;->findInIndex(ILjava/lang/String;Ljava/util/Vector;Z)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/net/URL;
    :try_end_a8
    .catch Lorg/apache/harmony/luni/util/InvalidJarIndexException; {:try_start_9b .. :try_end_a8} :catch_24f

    .line 838
    .local v28, result:Ljava/net/URL;
    if-eqz v28, :cond_250

    move-object/from16 v5, v28

    .line 855
    .end local v24           #jf:Ljava/util/jar/JarFile;
    .end local v28           #result:Ljava/net/URL;
    :goto_ac
    return-object v5

    .line 740
    .restart local v14       #currentUrl:Ljava/net/URL;
    .restart local v24       #jf:Ljava/util/jar/JarFile;
    .restart local v26       #protocol:Ljava/lang/String;
    :cond_ad
    :try_start_ad
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/JarURLConnection;

    invoke-virtual {v5}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_88

    move-result-object v23

    .line 743
    .local v23, jarURL:Ljava/net/URL;
    :try_start_b7
    new-instance v5, Ljava/net/URL;

    const-string v7, "jar"

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v25

    check-cast v25, Ljava/net/JarURLConnection;

    .line 746
    .local v25, juc:Ljava/net/JarURLConnection;
    invoke-virtual/range {v25 .. v25}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v24

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->resCache:Ljava/util/Map;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v14

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ed
    .catchall {:try_start_b7 .. :try_end_ed} :catchall_88
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ed} :catch_110

    .line 754
    .end local v23           #jarURL:Ljava/net/URL;
    .end local v25           #juc:Ljava/net/JarURLConnection;
    :cond_ed
    :try_start_ed
    monitor-exit v6
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_88

    .line 757
    :cond_ee
    :try_start_ee
    invoke-virtual {v14}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 758
    move-object/from16 v16, p2

    .line 773
    .local v16, entryName:Ljava/lang/String;
    :goto_fc
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_8c

    .line 774
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    :try_end_10e
    .catch Ljava/net/MalformedURLException; {:try_start_ee .. :try_end_10e} :catch_8b
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_10e} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_ee .. :try_end_10e} :catch_257

    move-result-object v5

    goto :goto_ac

    .line 748
    .end local v16           #entryName:Ljava/lang/String;
    .restart local v23       #jarURL:Ljava/net/URL;
    :catch_110
    move-exception v5

    move-object v15, v5

    .line 750
    .local v15, e:Ljava/io/IOException;
    :try_start_112
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    aget-object v7, p1, v8

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    throw v15
    :try_end_11d
    .catchall {:try_start_112 .. :try_end_11d} :catchall_88

    .line 760
    .end local v15           #e:Ljava/io/IOException;
    .end local v23           #jarURL:Ljava/net/URL;
    :cond_11d
    :try_start_11d
    invoke-virtual {v14}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v17

    .line 761
    .local v17, file:Ljava/lang/String;
    const-string v5, "!/"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v29

    .line 762
    .local v29, sepIdx:I
    const/4 v5, -0x1

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_13f

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    move-object v5, v0

    aget-object v6, p1, v8

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 830
    .end local v14           #currentUrl:Ljava/net/URL;
    .end local v17           #file:Ljava/lang/String;
    .end local v26           #protocol:Ljava/lang/String;
    .end local v29           #sepIdx:I
    :catch_13c
    move-exception v5

    goto/16 :goto_8c

    .line 767
    .restart local v14       #currentUrl:Ljava/net/URL;
    .restart local v17       #file:Ljava/lang/String;
    .restart local v26       #protocol:Ljava/lang/String;
    .restart local v29       #sepIdx:I
    :cond_13f
    add-int/lit8 v29, v29, 0x2

    .line 768
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v6, v29

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #entryName:Ljava/lang/String;
    goto :goto_fc

    .line 776
    .end local v16           #entryName:Ljava/lang/String;
    .end local v17           #file:Ljava/lang/String;
    .end local v29           #sepIdx:I
    :cond_169
    const-string v5, "file"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f8

    .line 777
    invoke-virtual {v14}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v11

    .line 778
    .local v11, baseFile:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v21

    .line 779
    .local v21, host:Ljava/lang/String;
    const/16 v22, 0x0

    .line 780
    .local v22, hostLength:I
    if-eqz v21, :cond_184

    .line 781
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    .line 783
    :cond_184
    new-instance v12, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v22, 0x2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v12, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 785
    .local v12, buf:Ljava/lang/StringBuffer;
    if-lez v22, :cond_1a3

    .line 786
    const-string v5, "//"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    :cond_1a3
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    move-object/from16 v20, p2

    .line 793
    .local v20, fixedResName:Ljava/lang/String;
    :goto_1a8
    const-string v5, "/"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1be

    const-string v5, "\\"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c7

    .line 794
    :cond_1be
    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_1a8

    .line 796
    :cond_1c7
    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1d0
    .catch Ljava/net/MalformedURLException; {:try_start_11d .. :try_end_1d0} :catch_8b
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_1d0} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_11d .. :try_end_1d0} :catch_257

    move-result-object v18

    .line 801
    .local v18, filename:Ljava/lang/String;
    :try_start_1d1
    const-string v5, "UTF-8"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d1 .. :try_end_1d9} :catch_1f3
    .catch Ljava/net/MalformedURLException; {:try_start_1d1 .. :try_end_1d9} :catch_8b
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1d9} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_1d1 .. :try_end_1d9} :catch_257

    move-result-object v18

    .line 806
    :try_start_1da
    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 807
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    goto/16 :goto_ac

    .line 802
    :catch_1f3
    move-exception v5

    move-object v15, v5

    .line 803
    .local v15, e:Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    goto/16 :goto_ac

    .line 810
    .end local v11           #baseFile:Ljava/lang/String;
    .end local v12           #buf:Ljava/lang/StringBuffer;
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .end local v18           #filename:Ljava/lang/String;
    .end local v20           #fixedResName:Ljava/lang/String;
    .end local v21           #host:Ljava/lang/String;
    .end local v22           #hostLength:I
    :cond_1f8
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/net/URLClassLoader;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v27

    .line 811
    .local v27, resURL:Ljava/net/URL;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_204
    .catch Ljava/net/MalformedURLException; {:try_start_1da .. :try_end_204} :catch_8b
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_204} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_1da .. :try_end_204} :catch_257

    move-result-object v30

    .line 813
    .local v30, uc:Ljava/net/URLConnection;
    :try_start_205
    invoke-virtual/range {v30 .. v30}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_20c
    .catch Ljava/lang/SecurityException; {:try_start_205 .. :try_end_20c} :catch_21c
    .catch Ljava/net/MalformedURLException; {:try_start_205 .. :try_end_20c} :catch_8b
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_20c} :catch_13c

    .line 819
    :try_start_20c
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_221

    move-object/from16 v5, v27

    .line 820
    goto/16 :goto_ac

    .line 814
    :catch_21c
    move-exception v5

    move-object v15, v5

    .line 815
    .local v15, e:Ljava/lang/SecurityException;
    const/4 v5, 0x0

    goto/16 :goto_ac

    .line 823
    .end local v15           #e:Ljava/lang/SecurityException;
    :cond_221
    check-cast v30, Ljava/net/HttpURLConnection;

    .end local v30           #uc:Ljava/net/URLConnection;
    invoke-virtual/range {v30 .. v30}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_226
    .catch Ljava/net/MalformedURLException; {:try_start_20c .. :try_end_226} :catch_8b
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_226} :catch_13c
    .catch Ljava/lang/SecurityException; {:try_start_20c .. :try_end_226} :catch_257

    move-result v13

    .local v13, code:I
    const/16 v5, 0xc8

    if-lt v13, v5, :cond_8c

    const/16 v5, 0x12c

    if-ge v13, v5, :cond_8c

    move-object/from16 v5, v27

    .line 825
    goto/16 :goto_ac

    .line 845
    .end local v13           #code:I
    .end local v14           #currentUrl:Ljava/net/URL;
    .end local v26           #protocol:Ljava/lang/String;
    .end local v27           #resURL:Ljava/net/URL;
    :cond_233
    aget-object v5, p1, v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/net/URLClassLoader;->explore(Ljava/net/URL;I)[Ljava/net/URL;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Ljava/net/URLClassLoader;->findInExtensions([Ljava/net/URL;Ljava/lang/String;ILjava/util/Vector;Z)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/net/URL;

    .line 847
    .restart local v28       #result:Ljava/net/URL;
    if-eqz v28, :cond_250

    move-object/from16 v5, v28

    .line 848
    goto/16 :goto_ac

    .line 841
    .end local v28           #result:Ljava/net/URL;
    :catch_24f
    move-exception v5

    .line 853
    .end local v24           #jf:Ljava/util/jar/JarFile;
    :cond_250
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    .line 855
    :cond_254
    const/4 v5, 0x0

    goto/16 :goto_ac

    .line 831
    .restart local v24       #jf:Ljava/util/jar/JarFile;
    :catch_257
    move-exception v5

    goto/16 :goto_8c
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 10
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_4

    .line 225
    const/4 v6, 0x0

    .line 248
    :goto_3
    return-object v6

    .line 227
    :cond_4
    new-instance v6, Ljava/net/URLClassLoader$1;

    invoke-direct {v6, p0, p1}, Ljava/net/URLClassLoader$1;-><init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V

    iget-object v7, p0, Ljava/net/URLClassLoader;->currentContext:Ljava/security/AccessControlContext;

    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 234
    .local v3, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 235
    .local v1, length:I
    if-lez v1, :cond_3d

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .local v4, sm:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_3d

    .line 236
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    .line 237
    .local v2, reduced:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    if-ge v0, v1, :cond_3c

    .line 238
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 240
    .local v5, url:Ljava/net/URL;
    :try_start_2b
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 241
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_39} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_39} :catch_42

    .line 237
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 246
    .end local v5           #url:Ljava/net/URL;
    :cond_3c
    move-object v3, v2

    .line 248
    .end local v0           #i:I
    .end local v2           #reduced:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    .end local v4           #sm:Ljava/lang/SecurityManager;
    :cond_3d
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    goto :goto_3

    .line 243
    .restart local v0       #i:I
    .restart local v2       #reduced:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    .restart local v4       #sm:Ljava/lang/SecurityManager;
    .restart local v5       #url:Ljava/net/URL;
    :catch_42
    move-exception v6

    goto :goto_39

    .line 242
    :catch_44
    move-exception v6

    goto :goto_39
.end method

.method findResources([Ljava/net/URL;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 14
    .parameter "searchURLs"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/net/URL;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 263
    iget-object v0, p0, Ljava/net/URLClassLoader;->urls:[Ljava/net/URL;

    if-ne p1, v0, :cond_45

    move v6, v9

    .line 264
    .local v6, findInExtensions:Z
    :goto_7
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    array-length v0, p1

    if-ge v3, v0, :cond_47

    .line 265
    iget-object v0, p0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    aget-object v1, p1, v3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 266
    new-array v8, v9, [Ljava/net/URL;

    aget-object v0, p1, v3

    aput-object v0, v8, v5

    .line 267
    .local v8, search:[Ljava/net/URL;
    invoke-virtual {p0, v8, p2}, Ljava/net/URLClassLoader;->findResourceImpl([Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 268
    .local v7, res:Ljava/net/URL;
    iget-object v0, p0, Ljava/net/URLClassLoader;->invalidUrls:Ljava/util/Set;

    aget-object v1, v8, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 269
    if-eqz v7, :cond_34

    invoke-virtual {p3, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 270
    invoke-virtual {p3, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 272
    :cond_34
    if-eqz v6, :cond_42

    .line 273
    aget-object v0, p1, v3

    invoke-virtual {p0, v0, v3}, Ljava/net/URLClassLoader;->explore(Ljava/net/URL;I)[Ljava/net/URL;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/net/URLClassLoader;->findInExtensions([Ljava/net/URL;Ljava/lang/String;ILjava/util/Vector;Z)Ljava/lang/Object;

    .line 264
    .end local v7           #res:Ljava/net/URL;
    .end local v8           #search:[Ljava/net/URL;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v3           #i:I
    .end local v6           #findInExtensions:Z
    :cond_45
    move v6, v5

    .line 263
    goto :goto_7

    .line 279
    .restart local v3       #i:I
    .restart local v6       #findInExtensions:Z
    :cond_47
    return-object p3
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 10
    .parameter "codesource"

    .prologue
    const/16 v6, 0x2f

    const-string v7, "read"

    .line 459
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v2

    .line 460
    .local v2, pc:Ljava/security/PermissionCollection;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    .line 461
    .local v3, u:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 464
    :try_start_18
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/JarURLConnection;

    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_a5

    move-result-object v3

    .line 470
    :cond_22
    :goto_22
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 471
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, path:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_55

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    :cond_55
    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v4, v6, :cond_5f

    .line 478
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 480
    :cond_5f
    invoke-static {v3}, Ljava/net/URLClassLoader;->isDirectory(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 481
    new-instance v4, Ljava/io/FilePermission;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "read"

    invoke-direct {v4, v5, v7}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 492
    .end local v1           #path:Ljava/lang/String;
    :goto_82
    return-object v2

    .line 483
    .restart local v1       #path:Ljava/lang/String;
    :cond_83
    new-instance v4, Ljava/io/FilePermission;

    const-string v5, "read"

    invoke-direct {v4, v1, v7}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_82

    .line 486
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :cond_8e
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 487
    .restart local v0       #host:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9a

    .line 488
    const-string v0, "localhost"

    .line 490
    :cond_9a
    new-instance v4, Ljava/net/SocketPermission;

    const-string v5, "connect, accept"

    invoke-direct {v4, v0, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    goto :goto_82

    .line 465
    .end local v0           #host:Ljava/lang/String;
    :catch_a5
    move-exception v4

    goto/16 :goto_22
.end method

.method public getURLs()[Ljava/net/URL;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Ljava/net/URLClassLoader;->orgUrls:[Ljava/net/URL;

    invoke-virtual {v0}, [Ljava/net/URL;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/net/URL;

    return-object p0
.end method
