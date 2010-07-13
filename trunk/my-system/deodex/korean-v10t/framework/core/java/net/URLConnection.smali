.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URLConnection$DefaultContentHandler;
    }
.end annotation


# static fields
.field private static contentHandlerFactory:Ljava/net/ContentHandlerFactory;

.field static contentHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field private static fileNameMap:Ljava/net/FileNameMap;


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field private contentType:Ljava/lang/String;

.field defaultHandler:Ljava/net/ContentHandler;

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private lastModified:J

.field private readTimeout:I

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 119
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/net/URLConnection$DefaultContentHandler;

    invoke-direct {v0}, Ljava/net/URLConnection$DefaultContentHandler;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 77
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 108
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 112
    iput v2, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 114
    iput v2, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 137
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 138
    return-void
.end method

.method private getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    .registers 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljava/net/URLConnection;->parseTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, typeString:Ljava/lang/String;
    sget-object v5, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, cHandler:Ljava/lang/Object;
    if-eqz v0, :cond_18

    .line 252
    check-cast v0, Ljava/net/ContentHandler;

    .end local v0           #cHandler:Ljava/lang/Object;
    move-object v5, v0

    .line 309
    :goto_17
    return-object v5

    .line 255
    .restart local v0       #cHandler:Ljava/lang/Object;
    :cond_18
    sget-object v5, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v5, :cond_35

    .line 256
    sget-object v5, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v5, p1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    .line 257
    .local v0, cHandler:Ljava/net/ContentHandler;
    instance-of v5, v0, Ljava/net/ContentHandler;

    if-nez v5, :cond_2c

    .line 258
    new-instance v5, Ljava/net/UnknownServiceException;

    invoke-direct {v5}, Ljava/net/UnknownServiceException;-><init>()V

    throw v5

    .line 260
    :cond_2c
    sget-object v5, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    check-cast v0, Ljava/net/ContentHandler;

    .end local v0           #cHandler:Ljava/net/ContentHandler;
    move-object v5, v0

    goto :goto_17

    .line 266
    .local v0, cHandler:Ljava/lang/Object;
    :cond_35
    new-instance v5, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v6, "java.content.handler.pkgs"

    invoke-direct {v5, v6}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    .local v2, packageList:Ljava/lang/String;
    if-eqz v2, :cond_7a

    .line 270
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_4b
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_7a

    .line 273
    :try_start_51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 276
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_78} :catch_a3
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_78} :catch_a1
    .catch Ljava/lang/InstantiationException; {:try_start_51 .. :try_end_78} :catch_9f

    move-result-object v0

    goto :goto_4b

    .line 284
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #st:Ljava/util/StringTokenizer;
    :cond_7a
    if-nez v0, :cond_85

    .line 285
    new-instance v5, Ljava/net/URLConnection$1;

    invoke-direct {v5, p0, v4}, Ljava/net/URLConnection$1;-><init>(Ljava/net/URLConnection;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 300
    :cond_85
    if-eqz v0, :cond_9b

    .line 301
    instance-of v5, v0, Ljava/net/ContentHandler;

    if-nez v5, :cond_91

    .line 302
    new-instance v5, Ljava/net/UnknownServiceException;

    invoke-direct {v5}, Ljava/net/UnknownServiceException;-><init>()V

    throw v5

    .line 304
    :cond_91
    sget-object v5, Ljava/net/URLConnection;->contentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    check-cast v0, Ljava/net/ContentHandler;

    .end local v0           #cHandler:Ljava/lang/Object;
    move-object v5, v0

    goto/16 :goto_17

    .line 309
    .restart local v0       #cHandler:Ljava/lang/Object;
    :cond_9b
    iget-object v5, p0, Ljava/net/URLConnection;->defaultHandler:Ljava/net/ContentHandler;

    goto/16 :goto_17

    .line 279
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :catch_9f
    move-exception v5

    goto :goto_4b

    .line 278
    :catch_a1
    move-exception v5

    goto :goto_4b

    .line 277
    :catch_a3
    move-exception v5

    goto :goto_4b
.end method

.method public static getDefaultAllowUserInteraction()Z
    .registers 1

    .prologue
    .line 355
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "field"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileNameMap()Ljava/net/FileNameMap;
    .registers 1

    .prologue
    .line 433
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v0, :cond_b

    .line 434
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/MimeTable;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/MimeTable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 436
    :cond_b
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    return-object v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "url"

    .prologue
    .line 697
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 715
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_c

    move-object v2, v6

    .line 733
    :goto_b
    return-object v2

    .line 718
    :cond_c
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 719
    new-array v0, v3, [C

    .line 720
    .local v0, chars:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 721
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 723
    :cond_1f
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 724
    aget-char v2, v0, v4

    const/16 v3, 0x50

    if-ne v2, v3, :cond_31

    aget-char v2, v0, v5

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_31

    .line 725
    const-string v2, "application/zip"

    goto :goto_b

    .line 727
    :cond_31
    aget-char v2, v0, v4

    const/16 v3, 0x47

    if-ne v2, v3, :cond_40

    aget-char v2, v0, v5

    const/16 v3, 0x49

    if-ne v2, v3, :cond_40

    .line 728
    const-string v2, "image/gif"

    goto :goto_b

    .line 730
    :cond_40
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 731
    const-string v2, "text/html"

    goto :goto_b

    :cond_54
    move-object v2, v6

    .line 733
    goto :goto_b
.end method

.method private parseTypeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "typeString"

    .prologue
    .line 745
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 746
    .local v2, typeStringBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 748
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 749
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_25

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_25

    .line 750
    const/16 v3, 0x5f

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 746
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 753
    .end local v0           #c:C
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .registers 5
    .parameter "contentFactory"

    .prologue
    .line 790
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    :try_start_3
    sget-object v2, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;

    if-eqz v2, :cond_16

    .line 791
    new-instance v2, Ljava/lang/Error;

    const-string v3, "K004e"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 790
    :catchall_13
    move-exception v2

    monitor-exit v1

    throw v2

    .line 793
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 794
    .local v0, sManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1f

    .line 795
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 797
    :cond_1f
    sput-object p0, Ljava/net/URLConnection;->contentHandlerFactory:Ljava/net/ContentHandlerFactory;
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_13

    .line 798
    monitor-exit v1

    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .registers 1
    .parameter "allows"

    .prologue
    .line 812
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 813
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "field"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .registers 2
    .parameter "map"

    .prologue
    .line 899
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 900
    .local v0, manager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 901
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 903
    :cond_9
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 904
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 495
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_10
    if-nez p1, :cond_1e

    .line 499
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "KA007"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1e
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 997
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 177
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 180
    :cond_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 181
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 182
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 185
    :cond_27
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 186
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 212
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 215
    :cond_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 216
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 217
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    .line 220
    :cond_27
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 221
    iget-object v0, p0, Ljava/net/URLConnection;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->getContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    :goto_35
    return-object v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 3

    .prologue
    .line 320
    const-string v0, "Content-Length"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 4

    .prologue
    .line 343
    const-string v0, "Date"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 382
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 395
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 408
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public getExpiration()J
    .registers 4

    .prologue
    .line 419
    const-string v0, "Expires"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 7
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, date:Ljava/lang/String;
    if-nez v0, :cond_8

    move-wide v1, p2

    .line 535
    :goto_7
    return-wide v1

    :cond_8
    invoke-static {v0}, Lorg/apache/harmony/luni/util/Util;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_7
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 5
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 552
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 554
    :goto_8
    return v1

    .line 553
    :catch_9
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p2

    .line 554
    goto :goto_8
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "posn"

    .prologue
    .line 569
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 582
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "K004d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModified()J
    .registers 5

    .prologue
    .line 607
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 608
    iget-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    .line 610
    :goto_a
    return-wide v0

    :cond_b
    const-string v0, "Last-Modified"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/URLConnection;->lastModified:J

    goto :goto_a
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "K005f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    new-instance v0, Ljava/security/AllPermission;

    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 1028
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 474
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "field"

    .prologue
    .line 658
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 659
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 682
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 770
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_10
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 774
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 4
    .parameter "timeout"

    .prologue
    .line 984
    if-gez p1, :cond_e

    .line 985
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0036"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_e
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 988
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 849
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 850
    return-void
.end method

.method public setDoInput(Z)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 865
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 866
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_10
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 869
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 884
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 885
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_10
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 888
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 5
    .parameter "newValue"

    .prologue
    .line 920
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 921
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_10
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 924
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 4
    .parameter "timeout"

    .prologue
    .line 1014
    if-gez p1, :cond_e

    .line 1015
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0036"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_e
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 1018
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 942
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 943
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_10
    if-nez p1, :cond_1e

    .line 946
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "KA007"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_1e
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 964
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 965
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0037"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_10
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 968
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
