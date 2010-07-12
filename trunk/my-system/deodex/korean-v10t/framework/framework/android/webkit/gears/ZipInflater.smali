.class public final Landroid/webkit/gears/ZipInflater;
.super Ljava/lang/Object;
.source "ZipInflater.java"


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x8000

.field private static final DATA_PARTITION_ROOT:Ljava/lang/String; = "/data"

.field private static final PATH_NAVIGATION_COMPONENT:Ljava/lang/String; = null

.field private static final SIZE_MULTIPLIER:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "Gears-J-ZipInflater"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/gears/ZipInflater;->PATH_NAVIGATION_COMPONENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final freeSpace()J
    .registers 6

    .prologue
    .line 194
    new-instance v0, Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, data_partition:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v1, v3

    .line 197
    .local v1, freeSpace:J
    const-string v3, "Gears-J-ZipInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free space on the data partition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-wide v1
.end method

.method public static inflate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .parameter "filename"
    .parameter "path"

    .prologue
    .line 83
    const-string v0, "Gears-J-ZipInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extracting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 87
    const-string p0, "Gears-J-ZipInflater"

    .end local p0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path missing trailing separator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 p0, 0x0

    .line 189
    :cond_43
    :goto_43
    return p0

    .line 91
    .restart local p0
    .restart local p1
    :cond_44
    const/4 v4, 0x0

    .line 99
    .local v4, result:Z
    const/4 v7, 0x0

    .line 100
    .local v7, zipStream:Ljava/util/zip/ZipInputStream;
    const-wide/16 v1, 0x0

    .line 102
    .local v1, uncompressedSize:J
    :try_start_48
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_206
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4d} :catch_247
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_235
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4d} :catch_226

    .line 104
    .local v3, zipFile:Ljava/util/zip/ZipFile;
    :try_start_4d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_24d

    move-result-object v0

    .local v0, entries:Ljava/util/Enumeration;
    move-wide v5, v1

    .line 105
    .end local v1           #uncompressedSize:J
    .local v5, uncompressedSize:J
    :cond_52
    :try_start_52
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 106
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 107
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v5, v8

    .line 110
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Landroid/webkit/gears/ZipInflater;->PATH_NAVIGATION_COMPONENT:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_b7

    .line 111
    new-instance p0, Ljava/io/IOException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal entry name: "

    .end local v0           #entries:Ljava/util/Enumeration;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8c
    .catchall {:try_start_52 .. :try_end_8c} :catchall_8c

    .line 125
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :catchall_8c
    move-exception p0

    move-object v0, p0

    move-wide p0, v5

    .end local v5           #uncompressedSize:J
    .local p0, uncompressedSize:J
    :goto_8f
    :try_start_8f
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    throw v0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_216
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_93} :catch_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_23b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_93} :catch_22b

    .line 174
    :catch_93
    move-exception v0

    move-object v11, v0

    move-wide v0, p0

    .end local p0           #uncompressedSize:J
    .local v0, uncompressedSize:J
    move-object p0, v11

    move-object p1, v7

    .line 175
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, ex:Ljava/io/FileNotFoundException;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    :goto_98
    :try_start_98
    const-string v2, "Gears-J-ZipInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The zip file could not be found. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_98 .. :try_end_b0} :catchall_221

    .line 181
    if-eqz p1, :cond_b5

    .line 183
    :try_start_b2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_213

    .end local v0           #uncompressedSize:J
    .end local p1           #zipStream:Ljava/util/zip/ZipInputStream;
    :cond_b5
    :goto_b5
    move p0, v4

    .line 189
    goto :goto_43

    .line 116
    .local v0, entries:Ljava/util/Enumeration;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    .restart local v5       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, filename:Ljava/lang/String;
    .local p1, path:Ljava/lang/String;
    :cond_b7
    :try_start_b7
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 120
    new-instance p0, Ljava/io/IOException;

    .end local p0           #filename:Ljava/lang/String;
    const-string p1, "A file or directory with the same name already exists."

    .end local p1           #path:Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_df
    .catchall {:try_start_b7 .. :try_end_df} :catchall_8c

    .line 125
    .end local v2           #file:Ljava/io/File;
    .restart local p0       #filename:Ljava/lang/String;
    .restart local p1       #path:Ljava/lang/String;
    :cond_df
    :try_start_df
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 128
    const-string v0, "Gears-J-ZipInflater"

    .end local v0           #entries:Ljava/util/Enumeration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Determined uncompressed size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Landroid/webkit/gears/ZipInflater;->freeSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    mul-long/2addr v2, v5

    cmp-long v0, v0, v2

    if-gtz v0, :cond_111

    .line 131
    new-instance p0, Ljava/io/IOException;

    .end local p0           #filename:Ljava/lang/String;
    const-string p1, "Not enough space to unpack this archive."

    .end local p1           #path:Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :catch_10d
    move-exception p0

    move-wide v0, v5

    .end local v5           #uncompressedSize:J
    .local v0, uncompressedSize:J
    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    goto :goto_98

    .line 134
    .end local v0           #uncompressedSize:J
    .restart local v5       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local p0       #filename:Ljava/lang/String;
    .local p1, path:Ljava/lang/String;
    :cond_111
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_120
    .catchall {:try_start_df .. :try_end_120} :catchall_219
    .catch Ljava/io/FileNotFoundException; {:try_start_df .. :try_end_120} :catch_10d
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_120} :catch_242
    .catch Ljava/lang/IllegalArgumentException; {:try_start_df .. :try_end_120} :catch_231

    .line 138
    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local v8, zipStream:Ljava/util/zip/ZipInputStream;
    const p0, 0x8000

    :try_start_123
    new-array p0, p0, [B

    .line 141
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .local p0, buffer:[B
    :goto_125
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1fb

    .line 142
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 169
    .end local v1           #file:Ljava/io/File;
    :cond_14e
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_125

    .line 174
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local p0           #buffer:[B
    .end local p1           #path:Ljava/lang/String;
    :catch_152
    move-exception p0

    move-wide v0, v5

    .end local v5           #uncompressedSize:J
    .restart local v0       #uncompressedSize:J
    move-object p1, v8

    .end local v8           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_98

    .line 148
    .end local v0           #uncompressedSize:J
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #uncompressedSize:J
    .restart local v8       #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local p0       #buffer:[B
    .local p1, path:Ljava/lang/String;
    :cond_157
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 149
    .local v0, checksum:Ljava/util/zip/CRC32;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v1, 0x8000

    invoke-direct {v3, v7, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_169
    .catchall {:try_start_123 .. :try_end_169} :catchall_21d
    .catch Ljava/io/FileNotFoundException; {:try_start_123 .. :try_end_169} :catch_152
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_169} :catch_182
    .catch Ljava/lang/IllegalArgumentException; {:try_start_123 .. :try_end_169} :catch_1d6

    .line 154
    .end local v1           #file:Ljava/io/File;
    .local v3, output:Ljava/io/BufferedOutputStream;
    :goto_169
    const/4 v1, 0x0

    const v7, 0x8000

    :try_start_16d
    invoke-virtual {v8, p0, v1, v7}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    .local v1, counter:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1a7

    .line 156
    const/4 v7, 0x0

    invoke-virtual {v3, p0, v7, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 157
    const/4 v7, 0x0

    invoke-virtual {v0, p0, v7, v1}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_17c
    .catchall {:try_start_16d .. :try_end_17c} :catchall_17d

    goto :goto_169

    .line 161
    .end local v1           #counter:I
    :catchall_17d
    move-exception p0

    .end local p0           #buffer:[B
    :try_start_17e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    throw p0
    :try_end_182
    .catchall {:try_start_17e .. :try_end_182} :catchall_21d
    .catch Ljava/io/FileNotFoundException; {:try_start_17e .. :try_end_182} :catch_152
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_182} :catch_182
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17e .. :try_end_182} :catch_1d6

    .line 176
    .end local v0           #checksum:Ljava/util/zip/CRC32;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #output:Ljava/io/BufferedOutputStream;
    .end local p1           #path:Ljava/lang/String;
    :catch_182
    move-exception p0

    move-wide v0, v5

    .end local v5           #uncompressedSize:J
    .local v0, uncompressedSize:J
    move-object p1, v8

    .line 177
    .end local v8           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, ex:Ljava/io/IOException;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    :goto_185
    :try_start_185
    const-string v2, "Gears-J-ZipInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read or write an entry. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catchall {:try_start_185 .. :try_end_19d} :catchall_221

    .line 181
    if-eqz p1, :cond_b5

    .line 183
    :try_start_19f
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1a4

    goto/16 :goto_b5

    .line 184
    :catch_1a4
    move-exception p0

    goto/16 :goto_b5

    .line 159
    .local v0, checksum:Ljava/util/zip/CRC32;
    .restart local v1       #counter:I
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #output:Ljava/io/BufferedOutputStream;
    .restart local v5       #uncompressedSize:J
    .restart local v8       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, buffer:[B
    .local p1, path:Ljava/lang/String;
    :cond_1a7
    :try_start_1a7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1aa
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_17d

    .line 161
    :try_start_1aa
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 164
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .end local v0           #checksum:Ljava/util/zip/CRC32;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    cmp-long v0, v0, v9

    if-eqz v0, :cond_14e

    .line 165
    new-instance p0, Ljava/io/IOException;

    .end local p0           #buffer:[B
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #path:Ljava/lang/String;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Integrity check failed for: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1d6
    .catchall {:try_start_1aa .. :try_end_1d6} :catchall_21d
    .catch Ljava/io/FileNotFoundException; {:try_start_1aa .. :try_end_1d6} :catch_152
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1d6} :catch_182
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1aa .. :try_end_1d6} :catch_1d6

    .line 178
    .end local v1           #counter:I
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #output:Ljava/io/BufferedOutputStream;
    :catch_1d6
    move-exception p0

    move-wide v0, v5

    .end local v5           #uncompressedSize:J
    .local v0, uncompressedSize:J
    move-object p1, v8

    .line 179
    .end local v8           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    :goto_1d9
    :try_start_1d9
    const-string v2, "Gears-J-ZipInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create the BufferedOutputStream. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catchall {:try_start_1d9 .. :try_end_1f1} :catchall_221

    .line 181
    if-eqz p1, :cond_b5

    .line 183
    :try_start_1f3
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_1f8

    goto/16 :goto_b5

    .line 184
    :catch_1f8
    move-exception p0

    goto/16 :goto_b5

    .line 172
    .end local v0           #uncompressedSize:J
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #uncompressedSize:J
    .restart local v8       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, buffer:[B
    .local p1, path:Ljava/lang/String;
    :cond_1fb
    const/4 p0, 0x1

    .line 181
    .end local v4           #result:Z
    .local p0, result:Z
    if-eqz v8, :cond_43

    .line 183
    :try_start_1fe
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_201} :catch_203

    goto/16 :goto_43

    .line 184
    :catch_203
    move-exception p1

    goto/16 :goto_43

    .line 181
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #uncompressedSize:J
    .end local v8           #zipStream:Ljava/util/zip/ZipInputStream;
    .local v1, uncompressedSize:J
    .restart local v4       #result:Z
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, filename:Ljava/lang/String;
    :catchall_206
    move-exception p0

    move-wide p0, v1

    .end local v1           #uncompressedSize:J
    .end local p1           #path:Ljava/lang/String;
    .local p0, uncompressedSize:J
    move-object v0, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local v0, zipStream:Ljava/util/zip/ZipInputStream;
    :goto_209
    if-eqz v0, :cond_b5

    .line 183
    :try_start_20b
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_20e} :catch_210

    goto/16 :goto_b5

    .line 184
    :catch_210
    move-exception p0

    goto/16 :goto_b5

    .end local p0           #uncompressedSize:J
    .local v0, uncompressedSize:J
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    :catch_213
    move-exception p0

    goto/16 :goto_b5

    .line 181
    .end local v0           #uncompressedSize:J
    .end local p1           #zipStream:Ljava/util/zip/ZipInputStream;
    .local v3, zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local p0       #uncompressedSize:J
    :catchall_216
    move-exception v0

    move-object v0, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local v0, zipStream:Ljava/util/zip/ZipInputStream;
    goto :goto_209

    .end local v0           #zipStream:Ljava/util/zip/ZipInputStream;
    .end local p0           #uncompressedSize:J
    .restart local v5       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    :catchall_219
    move-exception p0

    move-wide p0, v5

    .end local v5           #uncompressedSize:J
    .restart local p0       #uncompressedSize:J
    move-object v0, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local v0       #zipStream:Ljava/util/zip/ZipInputStream;
    goto :goto_209

    .end local v0           #zipStream:Ljava/util/zip/ZipInputStream;
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .end local p0           #uncompressedSize:J
    .restart local v5       #uncompressedSize:J
    .restart local v8       #zipStream:Ljava/util/zip/ZipInputStream;
    :catchall_21d
    move-exception p0

    move-wide p0, v5

    .end local v5           #uncompressedSize:J
    .restart local p0       #uncompressedSize:J
    move-object v0, v8

    .end local v8           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local v0       #zipStream:Ljava/util/zip/ZipInputStream;
    goto :goto_209

    .end local p0           #uncompressedSize:J
    .local v0, uncompressedSize:J
    .restart local p1       #zipStream:Ljava/util/zip/ZipInputStream;
    :catchall_221
    move-exception p0

    move-wide v11, v0

    .end local v0           #uncompressedSize:J
    .local v11, uncompressedSize:J
    move-object v0, p1

    .end local p1           #zipStream:Ljava/util/zip/ZipInputStream;
    .local v0, zipStream:Ljava/util/zip/ZipInputStream;
    move-wide p0, v11

    .end local v11           #uncompressedSize:J
    .restart local p0       #uncompressedSize:J
    goto :goto_209

    .line 178
    .end local v0           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local v1       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, filename:Ljava/lang/String;
    .local p1, path:Ljava/lang/String;
    :catch_226
    move-exception p0

    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    move-wide v11, v1

    .end local v1           #uncompressedSize:J
    .restart local v11       #uncompressedSize:J
    move-wide v0, v11

    .end local v11           #uncompressedSize:J
    .local v0, uncompressedSize:J
    goto :goto_1d9

    .end local v0           #uncompressedSize:J
    .end local p1           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, uncompressedSize:J
    :catch_22b
    move-exception v0

    move-object v11, v0

    move-wide v0, p0

    .end local p0           #uncompressedSize:J
    .restart local v0       #uncompressedSize:J
    move-object p0, v11

    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local p1       #zipStream:Ljava/util/zip/ZipInputStream;
    goto :goto_1d9

    .end local v0           #uncompressedSize:J
    .end local p1           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local v5       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    :catch_231
    move-exception p0

    move-wide v0, v5

    .end local v5           #uncompressedSize:J
    .restart local v0       #uncompressedSize:J
    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local p1       #zipStream:Ljava/util/zip/ZipInputStream;
    goto :goto_1d9

    .line 176
    .end local v0           #uncompressedSize:J
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, filename:Ljava/lang/String;
    .local p1, path:Ljava/lang/String;
    :catch_235
    move-exception p0

    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    move-wide v11, v1

    .end local v1           #uncompressedSize:J
    .restart local v11       #uncompressedSize:J
    move-wide v0, v11

    .end local v11           #uncompressedSize:J
    .restart local v0       #uncompressedSize:J
    goto/16 :goto_185

    .end local v0           #uncompressedSize:J
    .end local p1           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, uncompressedSize:J
    :catch_23b
    move-exception v0

    move-object v11, v0

    move-wide v0, p0

    .end local p0           #uncompressedSize:J
    .restart local v0       #uncompressedSize:J
    move-object p0, v11

    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local p1       #zipStream:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_185

    .end local v0           #uncompressedSize:J
    .end local p1           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local v5       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    :catch_242
    move-exception p0

    move-wide v0, v5

    .end local v5           #uncompressedSize:J
    .restart local v0       #uncompressedSize:J
    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .restart local p1       #zipStream:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_185

    .line 174
    .end local v0           #uncompressedSize:J
    .end local v3           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #uncompressedSize:J
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p0, filename:Ljava/lang/String;
    .local p1, path:Ljava/lang/String;
    :catch_247
    move-exception p0

    move-object p1, v7

    .end local v7           #zipStream:Ljava/util/zip/ZipInputStream;
    .local p1, zipStream:Ljava/util/zip/ZipInputStream;
    move-wide v11, v1

    .end local v1           #uncompressedSize:J
    .restart local v11       #uncompressedSize:J
    move-wide v0, v11

    .end local v11           #uncompressedSize:J
    .restart local v0       #uncompressedSize:J
    goto/16 :goto_98

    .line 125
    .end local v0           #uncompressedSize:J
    .restart local v1       #uncompressedSize:J
    .restart local v3       #zipFile:Ljava/util/zip/ZipFile;
    .restart local v7       #zipStream:Ljava/util/zip/ZipInputStream;
    .local p1, path:Ljava/lang/String;
    :catchall_24d
    move-exception p0

    move-object v0, p0

    move-wide p0, v1

    .end local v1           #uncompressedSize:J
    .end local p1           #path:Ljava/lang/String;
    .local p0, uncompressedSize:J
    goto/16 :goto_8f
.end method
