.class public Ldalvik/system/DexClassLoader;
.super Ljava/lang/ClassLoader;
.source "DexClassLoader.java"


# static fields
.field private static final VERBOSE_DEBUG:Z


# instance fields
.field private final mDexOutputPath:Ljava/lang/String;

.field private mDexs:[Ldalvik/system/DexFile;

.field private mFiles:[Ljava/io/File;

.field private mInitialized:Z

.field private mLibPaths:[Ljava/lang/String;

.field private final mRawDexPath:Ljava/lang/String;

.field private final mRawLibPath:Ljava/lang/String;

.field private mZips:[Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6
    .parameter "dexPath"
    .parameter "dexOutputDir"
    .parameter "libPath"
    .parameter "parent"

    .prologue
    .line 85
    invoke-direct {p0, p4}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 87
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 88
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_d
    iput-object p1, p0, Ldalvik/system/DexClassLoader;->mRawDexPath:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Ldalvik/system/DexClassLoader;->mDexOutputPath:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private declared-synchronized ensureInit()V
    .registers 13

    .prologue
    const-string v9, ":"

    const-string v9, "\': "

    .line 99
    monitor-enter p0

    :try_start_5
    iget-boolean v9, p0, Ldalvik/system/DexClassLoader;->mInitialized:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_95

    if-eqz v9, :cond_b

    .line 174
    :cond_9
    monitor-exit p0

    return-void

    .line 105
    :cond_b
    const/4 v9, 0x1

    :try_start_c
    iput-boolean v9, p0, Ldalvik/system/DexClassLoader;->mInitialized:Z

    .line 107
    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mRawDexPath:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, dexPathList:[Ljava/lang/String;
    array-length v4, v0

    .line 111
    .local v4, length:I
    new-array v9, v4, [Ljava/io/File;

    iput-object v9, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    .line 112
    new-array v9, v4, [Ljava/util/zip/ZipFile;

    iput-object v9, p0, Ldalvik/system/DexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    .line 113
    new-array v9, v4, [Ldalvik/system/DexFile;

    iput-object v9, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    .line 116
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, v4, :cond_bd

    .line 117
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "My path is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    new-instance v6, Ljava/io/File;

    aget-object v9, v0, v2

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v6, pathFile:Ljava/io/File;
    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    aput-object v6, v9, v2

    .line 121
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    :try_end_4e
    .catchall {:try_start_c .. :try_end_4e} :catchall_95

    move-result v9

    if-eqz v9, :cond_6d

    .line 123
    :try_start_51
    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v10, v9, v2
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_95
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_70

    .line 133
    :goto_5a
    :try_start_5a
    aget-object v9, v0, v2

    iget-object v10, p0, Ldalvik/system/DexClassLoader;->mDexOutputPath:Ljava/lang/String;

    invoke-static {v9, v10}, Ldalvik/system/DexClassLoader;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, outputName:Ljava/lang/String;
    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v10, v0, v2

    const/4 v11, 0x0

    invoke-static {v10, v5, v11}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v10

    aput-object v10, v9, v2
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_95
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6d} :catch_98

    .line 116
    .end local v5           #outputName:Ljava/lang/String;
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 124
    :catch_70
    move-exception v9

    move-object v3, v9

    .line 126
    .local v3, ioex:Ljava/io/IOException;
    :try_start_72
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed opening \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\': "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_72 .. :try_end_94} :catchall_95

    goto :goto_5a

    .line 99
    .end local v0           #dexPathList:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #ioex:Ljava/io/IOException;
    .end local v4           #length:I
    .end local v6           #pathFile:Ljava/io/File;
    :catchall_95
    move-exception v9

    monitor-exit p0

    throw v9

    .line 136
    .restart local v0       #dexPathList:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #length:I
    .restart local v6       #pathFile:Ljava/io/File;
    :catch_98
    move-exception v9

    move-object v3, v9

    .line 138
    .restart local v3       #ioex:Ljava/io/IOException;
    :try_start_9a
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed loadDex \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\': "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6d

    .line 150
    .end local v3           #ioex:Ljava/io/IOException;
    .end local v6           #pathFile:Ljava/io/File;
    :cond_bd
    const-string v9, "java.library.path"

    const-string v10, "."

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, pathList:Ljava/lang/String;
    const-string v9, "path.separator"

    const-string v10, ":"

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, pathSep:Ljava/lang/String;
    const-string v9, "file.separator"

    const-string v10, "/"

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, fileSep:Ljava/lang/String;
    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;

    if-eqz v9, :cond_f6

    .line 155
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_126

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    :cond_f6
    :goto_f6
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    .line 164
    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v4, v9

    .line 168
    const/4 v2, 0x0

    :goto_100
    if-ge v2, v4, :cond_9

    .line 169
    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_123

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v11, v10, v2

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v2

    .line 168
    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_100

    .line 159
    :cond_126
    iget-object v7, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;
    :try_end_128
    .catchall {:try_start_9a .. :try_end_128} :catchall_95

    goto :goto_f6
.end method

.method private static generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "sourcePathName"
    .parameter "outputDir"

    .prologue
    const-string v5, "/"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    .local v2, newStr:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v4, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 188
    const-string v4, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_19
    const-string v4, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, lastSlash:I
    if-gez v1, :cond_37

    .line 194
    move-object v3, p0

    .line 207
    .local v3, sourceFileName:Ljava/lang/String;
    :goto_22
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, lastDot:I
    if-gez v0, :cond_3e

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_2d
    const-string v4, ".dex"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 196
    .end local v0           #lastDot:I
    .end local v3           #sourceFileName:Ljava/lang/String;
    :cond_37
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #sourceFileName:Ljava/lang/String;
    goto :goto_22

    .line 211
    .restart local v0       #lastDot:I
    :cond_3e
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 10
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
    .line 232
    invoke-direct {p0}, Ldalvik/system/DexClassLoader;->ensureInit()V

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, data:[B
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    array-length v3, v5

    .line 241
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v3, :cond_26

    .line 245
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v5, v5, v2

    if-eqz v5, :cond_23

    .line 246
    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, slashName:Ljava/lang/String;
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_23

    .line 251
    return-object v0

    .line 241
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v4           #slashName:Ljava/lang/String;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 256
    :cond_26
    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in loader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 311
    invoke-direct {p0}, Ldalvik/system/DexClassLoader;->ensureInit()V

    .line 313
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v4, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_32

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, pathName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v3, test:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object v4, v2

    .line 327
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :goto_2e
    return-object v4

    .line 314
    .restart local v2       #pathName:Ljava/lang/String;
    .restart local v3       #test:Ljava/io/File;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 327
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :cond_32
    const/4 v4, 0x0

    goto :goto_2e
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 10
    .parameter "name"

    .prologue
    .line 271
    invoke-direct {p0}, Ldalvik/system/DexClassLoader;->ensureInit()V

    .line 273
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    array-length v2, v5

    .line 275
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_49

    .line 276
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    aget-object v3, v5, v1

    .line 277
    .local v3, pathFile:Ljava/io/File;
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v4, v5, v1

    .line 279
    .local v4, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 287
    :try_start_17
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jar:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_3d} :catch_3e

    .line 297
    .end local v3           #pathFile:Ljava/io/File;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :goto_3d
    return-object v5

    .line 288
    .restart local v3       #pathFile:Ljava/io/File;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_3e
    move-exception v5

    move-object v0, v5

    .line 289
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 275
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 297
    .end local v3           #pathFile:Ljava/io/File;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :cond_49
    const/4 v5, 0x0

    goto :goto_3d
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 12
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const-string v0, "0.0"

    const-string v0, "Unknown"

    .line 354
    if-eqz p1, :cond_2f

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 355
    monitor-enter p0

    .line 356
    :try_start_10
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    .line 358
    .local v9, pack:Ljava/lang/Package;
    if-nez v9, :cond_29

    .line 359
    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ldalvik/system/DexClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v9

    .line 363
    :cond_29
    monitor-exit p0

    move-object v0, v9

    .line 367
    .end local v9           #pack:Ljava/lang/Package;
    :goto_2b
    return-object v0

    .line 364
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    move-object v0, v1

    .line 367
    goto :goto_2b
.end method
