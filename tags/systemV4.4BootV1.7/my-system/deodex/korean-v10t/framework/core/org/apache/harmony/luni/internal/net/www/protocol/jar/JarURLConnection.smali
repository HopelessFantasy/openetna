.class public Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;
.super Ljava/net/JarURLConnection;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;
    }
.end annotation


# static fields
.field static Limit:I

.field static jarCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry",
            "<+",
            "Ljava/util/jar/JarFile;",
            ">;>;"
        }
    .end annotation
.end field

.field static lru:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cacheQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field jarInput:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarCache:Ljava/util/Hashtable;

    .line 71
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;

    invoke-direct {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->lru:Ljava/util/TreeSet;

    .line 77
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$1;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->Limit:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 69
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->cacheQueue:Ljava/lang/ref/ReferenceQueue;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->closed:Z

    return p1
.end method

.method public static closeCachedFiles()V
    .registers 3

    .prologue
    .line 453
    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarCache:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 455
    .local v0, elemEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<+Ljava/util/jar/JarFile;>;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 457
    :try_start_c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    .line 458
    .local v1, zip:Ljava/util/zip/ZipFile;
    if-eqz v1, :cond_6

    .line 459
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_6

    .line 461
    .end local v1           #zip:Ljava/util/zip/ZipFile;
    :catch_1e
    move-exception v2

    goto :goto_6

    .line 465
    :cond_20
    return-void
.end method

.method private findJarEntry()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 333
    :cond_6
    return-void

    .line 329
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    .line 330
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_6

    .line 331
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findJarFile()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 195
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v4

    .line 196
    .local v4, jarFileURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 197
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, fileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-static {v1, v7}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_34

    .line 200
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "KA026"

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_34
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, host:Ljava/lang/String;
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_57

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_57
    invoke-virtual {p0, v1, v1, v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->openJarFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/jar/JarFile;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 257
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    :cond_5d
    return-void

    .line 211
    :cond_5e
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, externalForm:Ljava/lang/String;
    new-instance v5, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;

    invoke-direct {v5, p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$2;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarFile;

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 223
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    if-nez v5, :cond_5d

    .line 228
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 230
    .local v3, is:Ljava/io/InputStream;
    :try_start_7f
    new-instance v5, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;

    invoke-direct {v5, p0, v3, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$3;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarFile;

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_99

    .line 252
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 254
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    if-nez v5, :cond_5d

    .line 255
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 252
    :catchall_99
    move-exception v5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v5
.end method


# virtual methods
.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 166
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->findJarFile()V

    .line 167
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->findJarEntry()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connected:Z

    .line 169
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 421
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 424
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_e

    .line 425
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 427
    :goto_d
    return-object v0

    :cond_e
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public getContentLength()I
    .registers 3

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 394
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v0

    .line 399
    :goto_1a
    return v0

    .line 396
    :catch_1b
    move-exception v0

    .line 399
    :cond_1c
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 373
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 374
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 380
    :goto_1a
    return-object v0

    .line 376
    :catch_1b
    move-exception v0

    .line 380
    :cond_1c
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->closed:Z

    if-eqz v0, :cond_10

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KA027"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_10
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connected:Z

    if-nez v0, :cond_17

    .line 349
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 351
    :cond_17
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_1e

    .line 352
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarInput:Ljava/io/InputStream;

    .line 357
    :goto_1d
    return-object v0

    .line 354
    :cond_1e
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_2e

    .line 355
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K00fc"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_2e
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$JarURLConnectionInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarInput:Ljava/io/InputStream;

    goto :goto_1d
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 315
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 317
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 183
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 185
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    if-eqz v0, :cond_b

    .line 444
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    .line 446
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    goto :goto_a
.end method

.method openJarFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/jar/JarFile;
    .registers 13
    .parameter "fileString"
    .parameter "key"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, jar:Ljava/util/jar/JarFile;
    iget-boolean v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->useCaches:Z

    if-eqz v4, :cond_96

    .line 265
    :goto_8
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->cacheQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;

    .local v0, entry:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<+Ljava/util/jar/JarFile;>;"
    if-eqz v0, :cond_1a

    .line 266
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarCache:Ljava/util/Hashtable;

    iget-object v5, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 268
    :cond_1a
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<+Ljava/util/jar/JarFile;>;"
    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;

    .line 269
    .restart local v0       #entry:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<+Ljava/util/jar/JarFile;>;"
    if-eqz v0, :cond_2a

    .line 270
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #jar:Ljava/util/jar/JarFile;
    check-cast v2, Ljava/util/jar/JarFile;

    .line 272
    .restart local v2       #jar:Ljava/util/jar/JarFile;
    :cond_2a
    if-nez v2, :cond_7a

    if-eqz p1, :cond_7a

    .line 273
    if-eqz p3, :cond_78

    move v4, v8

    :goto_31
    add-int/lit8 v1, v4, 0x1

    .line 275
    .local v1, flags:I
    new-instance v2, Ljava/util/jar/JarFile;

    .end local v2           #jar:Ljava/util/jar/JarFile;
    new-instance v4, Ljava/io/File;

    invoke-static {p1, v6}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v7, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 277
    .restart local v2       #jar:Ljava/util/jar/JarFile;
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->jarCache:Ljava/util/Hashtable;

    new-instance v5, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->cacheQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, v2, p2, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;-><init>(Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v4, p2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v0           #entry:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<+Ljava/util/jar/JarFile;>;"
    .end local v1           #flags:I
    :cond_4d
    :goto_4d
    if-eqz p3, :cond_77

    .line 295
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->lru:Ljava/util/TreeSet;

    new-instance v5, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v2, v6, v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;-><init>(Ljava/util/jar/JarFile;J)V

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->lru:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    sget v5, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->Limit:I

    if-le v4, v5, :cond_77

    .line 297
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->lru:Ljava/util/TreeSet;

    sget-object v5, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->lru:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 300
    :cond_77
    return-object v2

    .restart local v0       #entry:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<+Ljava/util/jar/JarFile;>;"
    :cond_78
    move v4, v6

    .line 273
    goto :goto_31

    .line 280
    :cond_7a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 281
    .local v3, security:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_87

    .line 282
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 284
    :cond_87
    if-eqz p3, :cond_4d

    .line 285
    sget-object v4, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;->lru:Ljava/util/TreeSet;

    new-instance v5, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v2, v6, v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$LRUKey;-><init>(Ljava/util/jar/JarFile;J)V

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 288
    .end local v0           #entry:Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry;,"Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$CacheEntry<+Ljava/util/jar/JarFile;>;"
    .end local v3           #security:Ljava/lang/SecurityManager;
    :cond_96
    if-eqz p1, :cond_4d

    .line 289
    if-eqz p3, :cond_ac

    move v4, v8

    :goto_9b
    add-int/lit8 v1, v4, 0x1

    .line 290
    .restart local v1       #flags:I
    new-instance v2, Ljava/util/jar/JarFile;

    .end local v2           #jar:Ljava/util/jar/JarFile;
    new-instance v4, Ljava/io/File;

    invoke-static {p1, v6}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v7, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .restart local v2       #jar:Ljava/util/jar/JarFile;
    goto :goto_4d

    .end local v1           #flags:I
    :cond_ac
    move v4, v6

    .line 289
    goto :goto_9b
.end method
