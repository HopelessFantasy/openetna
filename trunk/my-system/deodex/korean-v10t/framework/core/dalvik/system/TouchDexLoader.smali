.class Ldalvik/system/TouchDexLoader;
.super Ljava/lang/ClassLoader;
.source "TouchDexLoader.java"


# instance fields
.field private initialized:Z

.field private mDexs:[Ldalvik/system/DexFile;

.field private mFiles:[Ljava/io/File;

.field private mLibPaths:[Ljava/lang/String;

.field private mPaths:[Ljava/lang/String;

.field private mZips:[Ljava/util/zip/ZipFile;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "path"
    .parameter "parent"

    .prologue
    .line 46
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 48
    if-nez p1, :cond_b

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_b
    iput-object p1, p0, Ldalvik/system/TouchDexLoader;->path:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private ensureInit()V
    .registers 12

    .prologue
    const-string v10, ":"

    .line 55
    iget-boolean v7, p0, Ldalvik/system/TouchDexLoader;->initialized:Z

    if-eqz v7, :cond_7

    .line 119
    :cond_6
    return-void

    .line 59
    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Ldalvik/system/TouchDexLoader;->initialized:Z

    .line 61
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->path:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    .line 63
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Ljava/io/File;

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    .line 64
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Ljava/util/zip/ZipFile;

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    .line 65
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Ldalvik/system/DexFile;

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    .line 67
    const-string v7, "android.vm.dexfile"

    const-string v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 71
    .local v6, wantDex:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_a0

    .line 73
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v3, pathFile:Ljava/io/File;
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    aput-object v3, v7, v1

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_83

    .line 87
    if-eqz v6, :cond_5b

    .line 90
    :try_start_52
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    new-instance v8, Ldalvik/system/DexFile;

    invoke-direct {v8, v3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    aput-object v8, v7, v1
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5b} :catch_5e

    .line 71
    :cond_5b
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 92
    :catch_5e
    move-exception v7

    move-object v2, v7

    .line 93
    .local v2, ioex:Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as DEX"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5b

    .line 98
    .end local v2           #ioex:Ljava/io/IOException;
    :cond_83
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5b

    .line 105
    .end local v3           #pathFile:Ljava/io/File;
    :cond_a0
    const-string v7, "java.library.path"

    const-string v8, "."

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, pathList:Ljava/lang/String;
    const-string v7, "path.separator"

    const-string v8, ":"

    invoke-static {v7, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, pathSep:Ljava/lang/String;
    const-string v7, "file.separator"

    const-string v8, "/"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, fileSep:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    .line 113
    const/4 v1, 0x0

    :goto_bf
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_6

    .line 114
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e5

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v9, v8, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v1

    .line 113
    :cond_e5
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf
.end method

.method private isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .registers 4
    .parameter "zip"
    .parameter "name"

    .prologue
    .line 310
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

    .line 275
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 276
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_9

    move-object v6, v8

    .line 303
    :goto_8
    return-object v6

    .line 289
    :cond_9
    :try_start_9
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 290
    .local v5, stream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 291
    .local v1, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 292
    .local v0, buf:[B
    :goto_1b
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_2a

    .line 293
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 297
    .end local v0           #buf:[B
    .end local v1           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #count:I
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_26
    move-exception v6

    move-object v4, v6

    .local v4, ioex:Ljava/io/IOException;
    move-object v6, v8

    .line 299
    goto :goto_8

    .line 295
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v1       #byteStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #count:I
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_2a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2d} :catch_26

    .line 303
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_8
.end method

.method private loadFromDirectory(Ljava/lang/String;)[B
    .registers 9
    .parameter "path"

    .prologue
    .line 245
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_16

    .line 253
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 254
    .local v0, fileData:[B
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 255
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_1a

    :goto_14
    move-object v4, v0

    .line 263
    .end local v0           #fileData:[B
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_15
    return-object v4

    .line 247
    :catch_16
    move-exception v4

    move-object v1, v4

    .line 249
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    goto :goto_15

    .line 257
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_1a
    move-exception v4

    move-object v2, v4

    .line 258
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

    .line 260
    const/4 v0, 0x0

    .restart local v0       #fileData:[B
    goto :goto_14
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 24
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
    .line 133
    invoke-direct/range {p0 .. p0}, Ldalvik/system/TouchDexLoader;->ensureInit()V

    .line 135
    const/4 v15, 0x0

    .line 140
    .local v15, data:[B
    const/16 v18, 0x0

    .local v18, i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_100

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    move-object v5, v0

    aget-object v5, v5, v18

    if-eqz v5, :cond_3a

    .line 144
    const/16 v5, 0x2e

    const/16 v6, 0x2f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v21

    .line 145
    .local v21, slashName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    move-object v5, v0

    aget-object v5, v5, v18

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 146
    .local v14, clazz:Ljava/lang/Class;
    if-eqz v14, :cond_72

    move-object v5, v14

    .line 178
    .end local v14           #clazz:Ljava/lang/Class;
    .end local v21           #slashName:Ljava/lang/String;
    :goto_39
    return-object v5

    .line 148
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    move-object v5, v0

    aget-object v5, v5, v18

    if-eqz v5, :cond_b2

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 150
    .local v17, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    move-object v5, v0

    aget-object v5, v5, v18

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ldalvik/system/TouchDexLoader;->loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object v15

    .line 164
    .end local v17           #fileName:Ljava/lang/String;
    :cond_72
    :goto_72
    if-eqz v15, :cond_fc

    .line 166
    const/16 v5, 0x2e

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 167
    .local v16, dotIndex:I
    const/4 v5, -0x1

    move/from16 v0, v16

    move v1, v5

    if-eq v0, v1, :cond_a4

    .line 168
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, packageName:Ljava/lang/String;
    monitor-enter p0

    .line 170
    :try_start_8e
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ldalvik/system/TouchDexLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v19

    .line 171
    .local v19, packageObj:Ljava/lang/Package;
    if-nez v19, :cond_a3

    .line 172
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Ldalvik/system/TouchDexLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 175
    :cond_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_f9

    .line 178
    .end local v6           #packageName:Ljava/lang/String;
    .end local v19           #packageObj:Ljava/lang/Package;
    :cond_a4
    const/4 v5, 0x0

    array-length v6, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/TouchDexLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v5

    goto :goto_39

    .line 152
    .end local v16           #dotIndex:I
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    move-object v5, v0

    aget-object v20, v5, v18

    .line 153
    .local v20, pathFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    move-object v6, v0

    aget-object v6, v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 156
    .restart local v17       #fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ldalvik/system/TouchDexLoader;->loadFromDirectory(Ljava/lang/String;)[B

    move-result-object v15

    goto/16 :goto_72

    .line 175
    .end local v17           #fileName:Ljava/lang/String;
    .end local v20           #pathFile:Ljava/io/File;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v16       #dotIndex:I
    :catchall_f9
    move-exception v5

    :try_start_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v5

    .line 140
    .end local v6           #packageName:Ljava/lang/String;
    .end local v16           #dotIndex:I
    :cond_fc
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 182
    :cond_100
    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in loader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "libname"

    .prologue
    .line 320
    invoke-direct {p0}, Ldalvik/system/TouchDexLoader;->ensureInit()V

    .line 322
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v4, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_32

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, pathName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, test:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object v4, v2

    .line 331
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :goto_2e
    return-object v4

    .line 323
    .restart local v2       #pathName:Ljava/lang/String;
    .restart local v3       #test:Ljava/io/File;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 331
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :cond_32
    const/4 v4, 0x0

    goto :goto_2e
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 11
    .parameter "name"

    .prologue
    .line 190
    invoke-direct {p0}, Ldalvik/system/TouchDexLoader;->ensureInit()V

    .line 192
    const/4 v0, 0x0

    .line 197
    .local v0, data:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    iget-object v6, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_bf

    .line 198
    iget-object v6, p0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    aget-object v4, v6, v3

    .line 199
    .local v4, pathFile:Ljava/io/File;
    iget-object v6, p0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v5, v6, v3

    .line 200
    .local v5, zip:Ljava/util/zip/ZipFile;
    if-eqz v5, :cond_45

    .line 201
    invoke-direct {p0, v5, p1}, Ldalvik/system/TouchDexLoader;->isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 205
    :try_start_1a
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jar:file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_3c} :catch_3d

    .line 230
    .end local v4           #pathFile:Ljava/io/File;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    :goto_3c
    return-object v6

    .line 207
    .restart local v4       #pathFile:Ljava/io/File;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_3d
    move-exception v6

    move-object v2, v6

    .line 208
    .local v2, e:Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 211
    .end local v2           #e:Ljava/net/MalformedURLException;
    :cond_45
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_92

    .line 212
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, dataFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 217
    :try_start_71
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/net/MalformedURLException; {:try_start_71 .. :try_end_89} :catch_8a

    goto :goto_3c

    .line 219
    :catch_8a
    move-exception v6

    move-object v2, v6

    .line 220
    .restart local v2       #e:Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 223
    .end local v1           #dataFile:Ljava/io/File;
    .end local v2           #e:Ljava/net/MalformedURLException;
    :cond_92
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 197
    :cond_98
    :goto_98
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 225
    :cond_9c
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TouchDexLoader: can\'t find \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_98

    .line 230
    .end local v4           #pathFile:Ljava/io/File;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    :cond_bf
    const/4 v6, 0x0

    goto/16 :goto_3c
.end method
