.class public Ldalvik/system/PathClassLoader;
.super Ljava/lang/ClassLoader;
.source "PathClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/PathClassLoader$EnumerateListArray;
    }
.end annotation


# instance fields
.field private initialized:Z

.field private final libPath:Ljava/lang/String;

.field private mDexs:[Ldalvik/system/DexFile;

.field private mFiles:[Ljava/io/File;

.field private mLibPaths:[Ljava/lang/String;

.field private mPaths:[Ljava/lang/String;

.field private mZips:[Ljava/util/zip/ZipFile;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "path"
    .parameter "parent"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .parameter "path"
    .parameter "libPath"
    .parameter "parent"

    .prologue
    .line 96
    invoke-direct {p0, p3}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 98
    if-nez p1, :cond_b

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_b
    iput-object p1, p0, Ldalvik/system/PathClassLoader;->path:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Ldalvik/system/PathClassLoader;->libPath:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private declared-synchronized ensureInit()V
    .registers 11

    .prologue
    const-string v7, ":"

    .line 106
    monitor-enter p0

    :try_start_3
    iget-boolean v7, p0, Ldalvik/system/PathClassLoader;->initialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_cc

    if-eqz v7, :cond_9

    .line 175
    :cond_7
    monitor-exit p0

    return-void

    .line 110
    :cond_9
    const/4 v7, 0x1

    :try_start_a
    iput-boolean v7, p0, Ldalvik/system/PathClassLoader;->initialized:Z

    .line 112
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->path:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    .line 113
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v2, v7

    .line 116
    .local v2, length:I
    new-array v7, v2, [Ljava/io/File;

    iput-object v7, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    .line 117
    new-array v7, v2, [Ljava/util/zip/ZipFile;

    iput-object v7, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    .line 118
    new-array v7, v2, [Ldalvik/system/DexFile;

    iput-object v7, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    .line 120
    const-string v7, "android.vm.dexfile"

    const-string v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 124
    .local v6, wantDex:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    if-ge v1, v2, :cond_60

    .line 126
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, pathFile:Ljava/io/File;
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    aput-object v3, v7, v1

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_cc

    move-result v7

    if-eqz v7, :cond_5d

    .line 131
    :try_start_49
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v8, v7, v1
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_52} :catch_d1

    .line 138
    :goto_52
    if-eqz v6, :cond_5d

    .line 141
    :try_start_54
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    new-instance v8, Ldalvik/system/DexFile;

    invoke-direct {v8, v3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    aput-object v8, v7, v1
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5d} :catch_cf

    .line 124
    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 151
    .end local v3           #pathFile:Ljava/io/File;
    :cond_60
    :try_start_60
    const-string v7, "java.library.path"

    const-string v8, "."

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, pathList:Ljava/lang/String;
    const-string v7, "path.separator"

    const-string v8, ":"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, pathSep:Ljava/lang/String;
    const-string v7, "file.separator"

    const-string v8, "/"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, fileSep:Ljava/lang/String;
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->libPath:Ljava/lang/String;

    if-eqz v7, :cond_99

    .line 156
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c9

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ldalvik/system/PathClassLoader;->libPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    :cond_99
    :goto_99
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ldalvik/system/PathClassLoader;->mLibPaths:[Ljava/lang/String;

    .line 165
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v2, v7

    .line 169
    const/4 v1, 0x0

    :goto_a3
    if-ge v1, v2, :cond_7

    .line 170
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v9, v8, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v1

    .line 169
    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 160
    :cond_c9
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->libPath:Ljava/lang/String;
    :try_end_cb
    .catchall {:try_start_60 .. :try_end_cb} :catchall_cc

    goto :goto_99

    .line 106
    .end local v0           #fileSep:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #pathList:Ljava/lang/String;
    .end local v5           #pathSep:Ljava/lang/String;
    .end local v6           #wantDex:Z
    :catchall_cc
    move-exception v7

    monitor-exit p0

    throw v7

    .line 143
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #pathFile:Ljava/io/File;
    .restart local v6       #wantDex:Z
    :catch_cf
    move-exception v7

    goto :goto_5d

    .line 133
    :catch_d1
    move-exception v7

    goto :goto_52
.end method

.method private findResource(Ljava/lang/String;I)Ljava/net/URL;
    .registers 10
    .parameter "name"
    .parameter "i"

    .prologue
    .line 299
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    aget-object v2, v4, p2

    .line 300
    .local v2, pathFile:Ljava/io/File;
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v3, v4, p2

    .line 301
    .local v3, zip:Ljava/util/zip/ZipFile;
    if-eqz v3, :cond_3f

    .line 302
    invoke-direct {p0, v3, p1}, Ldalvik/system/PathClassLoader;->isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 309
    :try_start_10
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jar:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_36} :catch_37

    .line 332
    :goto_36
    return-object v4

    .line 311
    :catch_37
    move-exception v4

    move-object v1, v4

    .line 312
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 315
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_3f
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 316
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, dataFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 321
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;
    :try_end_6e
    .catch Ljava/net/MalformedURLException; {:try_start_6b .. :try_end_6e} :catch_70

    move-result-object v4

    goto :goto_36

    .line 323
    :catch_70
    move-exception v1

    .line 324
    .restart local v1       #e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 327
    .end local v0           #dataFile:Ljava/io/File;
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_77
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 332
    :cond_7d
    :goto_7d
    const/4 v4, 0x0

    goto :goto_36

    .line 329
    :cond_7f
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PathClassLoader: can\'t find \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7d
.end method

.method private isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .registers 4
    .parameter "zip"
    .parameter "name"

    .prologue
    .line 411
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .registers 12
    .parameter "zip"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    .line 376
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 377
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_9

    move-object v6, v8

    .line 404
    :goto_8
    return-object v6

    .line 390
    :cond_9
    :try_start_9
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 391
    .local v5, stream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 392
    .local v1, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 393
    .local v0, buf:[B
    :goto_1b
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_2a

    .line 394
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 398
    .end local v0           #buf:[B
    .end local v1           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #count:I
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_26
    move-exception v6

    move-object v4, v6

    .local v4, ioex:Ljava/io/IOException;
    move-object v6, v8

    .line 400
    goto :goto_8

    .line 396
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v1       #byteStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #count:I
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_2a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2d} :catch_26

    .line 404
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_8
.end method

.method private loadFromDirectory(Ljava/lang/String;)[B
    .registers 9
    .parameter "path"

    .prologue
    .line 346
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_16

    .line 354
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 355
    .local v0, fileData:[B
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 356
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_1a

    :goto_14
    move-object v4, v0

    .line 364
    .end local v0           #fileData:[B
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_15
    return-object v4

    .line 348
    :catch_16
    move-exception v4

    move-object v1, v4

    .line 350
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    goto :goto_15

    .line 358
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_1a
    move-exception v4

    move-object v2, v4

    .line 359
    .local v2, ioe:Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    .restart local v0       #fileData:[B
    goto :goto_14
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 14
    .parameter "name"
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
    const/16 v10, 0x2f

    const/16 v9, 0x2e

    const-string v11, ".class"

    .line 191
    invoke-direct {p0}, Ldalvik/system/PathClassLoader;->ensureInit()V

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, data:[B
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v4, v7

    .line 198
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v4, :cond_81

    .line 201
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v7, v7, v3

    if-eqz v7, :cond_25

    .line 202
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, slashName:Ljava/lang/String;
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v7, v7, v3

    invoke-virtual {v7, v6, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 204
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_4a

    .line 205
    return-object v0

    .line 206
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v6           #slashName:Ljava/lang/String;
    :cond_25
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v7, v7, v3

    if-eqz v7, :cond_4d

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".class"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, fileName:Ljava/lang/String;
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v7, v7, v3

    invoke-direct {p0, v7, v2}, Ldalvik/system/PathClassLoader;->loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object v1

    .line 198
    .end local v2           #fileName:Ljava/lang/String;
    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 210
    :cond_4d
    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    aget-object v5, v7, v3

    .line 211
    .local v5, pathFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".class"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2       #fileName:Ljava/lang/String;
    invoke-direct {p0, v2}, Ldalvik/system/PathClassLoader;->loadFromDirectory(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_4a

    .line 243
    .end local v2           #fileName:Ljava/lang/String;
    .end local v5           #pathFile:Ljava/io/File;
    :cond_81
    new-instance v7, Ljava/lang/ClassNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in loader "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "libname"

    .prologue
    .line 424
    invoke-direct {p0}, Ldalvik/system/PathClassLoader;->ensureInit()V

    .line 426
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_32

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/PathClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, pathName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v3, test:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object v4, v2

    .line 435
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :goto_2e
    return-object v4

    .line 427
    .restart local v2       #pathName:Ljava/lang/String;
    .restart local v3       #test:Ljava/io/File;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 435
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :cond_32
    const/4 v4, 0x0

    goto :goto_2e
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .parameter "name"

    .prologue
    .line 258
    invoke-direct {p0}, Ldalvik/system/PathClassLoader;->ensureInit()V

    .line 262
    iget-object v3, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v1, v3

    .line 264
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_14

    .line 265
    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v2

    .line 266
    .local v2, result:Ljava/net/URL;
    if-eqz v2, :cond_11

    move-object v3, v2

    .line 271
    .end local v2           #result:Ljava/net/URL;
    :goto_10
    return-object v3

    .line 264
    .restart local v2       #result:Ljava/net/URL;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 271
    .end local v2           #result:Ljava/net/URL;
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 7
    .parameter "resName"
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

    .prologue
    .line 284
    invoke-direct {p0}, Ldalvik/system/PathClassLoader;->ensureInit()V

    .line 286
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v1, v4

    .line 287
    .local v1, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 290
    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v2

    .line 291
    .local v2, result:Ljava/net/URL;
    if-eqz v2, :cond_17

    .line 292
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 295
    .end local v2           #result:Ljava/net/URL;
    :cond_1a
    new-instance v4, Ldalvik/system/PathClassLoader$EnumerateListArray;

    invoke-direct {v4, v3}, Ldalvik/system/PathClassLoader$EnumerateListArray;-><init>(Ljava/util/ArrayList;)V

    return-object v4
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 12
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const-string v0, "0.0"

    const-string v0, "Unknown"

    .line 462
    if-eqz p1, :cond_2f

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 463
    monitor-enter p0

    .line 464
    :try_start_10
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    .line 466
    .local v9, pack:Ljava/lang/Package;
    if-nez v9, :cond_29

    .line 467
    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ldalvik/system/PathClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v9

    .line 470
    :cond_29
    monitor-exit p0

    move-object v0, v9

    .line 474
    .end local v9           #pack:Ljava/lang/Package;
    :goto_2b
    return-object v0

    .line 471
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    move-object v0, v1

    .line 474
    goto :goto_2b
.end method
