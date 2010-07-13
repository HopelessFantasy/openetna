.class Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 6
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 85
    .local v0, exists:Z
    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 86
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_2e
    if-eqz v0, :cond_43

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 109
    :goto_40
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 110
    return-void

    .line 102
    :cond_43
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_68

    .line 103
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_68
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    goto :goto_40
.end method

.method private delete(Ljava/io/File;)V
    .registers 6
    .parameter "file"

    .prologue
    .line 297
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 298
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :cond_2b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 302
    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 124
    if-nez p0, :cond_a

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFiles()V
    .registers 11

    .prologue
    .line 267
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 268
    .local v4, initialFiles:[Ljava/lang/String;
    if-eqz v4, :cond_4f

    .line 269
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 273
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 274
    .local v2, diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v5, :cond_28

    aget-object v6, v0, v3

    .line 276
    .local v6, name:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 277
    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v8, v9, v6}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 281
    .end local v6           #name:Ljava/lang/String;
    :cond_28
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 284
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v7

    .line 285
    .local v7, newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;

    .line 286
    .local v1, cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    iget-object v8, v1, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 288
    .end local v1           #cacheFile:Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
    :cond_48
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 290
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 293
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #diskOnly:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    .end local v7           #newOrder:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_4f
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "host"
    .parameter "t"

    .prologue
    .line 182
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "host"
    .parameter "t"

    .prologue
    .line 305
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    return-void
.end method

.method private makeRoom()V
    .registers 5

    .prologue
    const/16 v3, 0xc

    .line 247
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    if-gt v2, v3, :cond_7

    .line 260
    :goto_6
    return-void

    .line 251
    :cond_7
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->indexFiles()V

    .line 254
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    sub-int v1, v2, v3

    .line 255
    .local v1, removals:I
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 259
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_18

    goto :goto_6
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .registers 14
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v10, 0x0

    .line 137
    monitor-enter p0

    :try_start_2
    invoke-static {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 140
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_2d

    .line 142
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_7c

    if-nez v6, :cond_17

    move-object v6, v10

    .line 177
    :goto_15
    monitor-exit p0

    return-object v6

    .line 148
    :cond_17
    :try_start_17
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_21

    move-object v6, v10

    .line 150
    goto :goto_15

    .line 154
    :cond_21
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v2, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .restart local v2       #file:Ljava/io/File;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_7c

    .line 160
    :cond_2d
    :try_start_2d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_66

    .line 166
    .local v3, in:Ljava/io/FileInputStream;
    :try_start_32
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    .line 167
    .local v5, size:I
    new-array v0, v5, [B

    .line 168
    .local v0, data:[B
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 169
    sget-object v6, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read session for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_77
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_61} :catch_6d

    .line 176
    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_7c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_7f

    :goto_64
    move-object v6, v0

    .line 177
    goto :goto_15

    .line 161
    .end local v0           #data:[B
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v5           #size:I
    :catch_66
    move-exception v6

    move-object v1, v6

    .line 162
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_68
    invoke-static {p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_7c

    move-object v6, v10

    .line 163
    goto :goto_15

    .line 171
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/io/FileInputStream;
    :catch_6d
    move-exception v6

    move-object v1, v6

    .line 172
    .local v1, e:Ljava/io/IOException;
    :try_start_6f
    invoke-static {p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_77

    .line 176
    :try_start_72
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_81

    :goto_75
    move-object v6, v10

    .line 177
    goto :goto_15

    .line 175
    .end local v1           #e:Ljava/io/IOException;
    :catchall_77
    move-exception v6

    .line 176
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_83

    .line 177
    :goto_7b
    :try_start_7b
    throw v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 137
    .end local v2           #file:Ljava/io/File;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #name:Ljava/lang/String;
    :catchall_7c
    move-exception v6

    monitor-exit p0

    throw v6

    .line 177
    .restart local v0       #data:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #size:I
    :catch_7f
    move-exception v6

    goto :goto_64

    .end local v0           #data:[B
    .end local v5           #size:I
    .restart local v1       #e:Ljava/io/IOException;
    :catch_81
    move-exception v6

    goto :goto_75

    .end local v1           #e:Ljava/io/IOException;
    :catch_83
    move-exception v7

    goto :goto_7b
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 16
    .parameter "session"
    .parameter "sessionData"

    .prologue
    const-string v8, "Stored session for "

    const-string v8, "."

    .line 188
    monitor-enter p0

    :try_start_5
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, host:Ljava/lang/String;
    if-nez p2, :cond_16

    .line 190
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "sessionData"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_13

    .line 188
    .end local v4           #host:Ljava/lang/String;
    :catchall_13
    move-exception v8

    monitor-exit p0

    throw v8

    .line 193
    .restart local v4       #host:Ljava/lang/String;
    :cond_16
    :try_start_16
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v8

    invoke-static {v4, v8}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, name:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_13

    move-result v2

    .line 201
    .local v2, existedBefore:Z
    :try_start_29
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_13
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2e} :catch_4c

    .line 209
    .local v6, out:Ljava/io/FileOutputStream;
    if-nez v2, :cond_39

    .line 210
    :try_start_30
    iget v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->size:I

    .line 213
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_13

    .line 216
    :cond_39
    const/4 v7, 0x0

    .line 218
    .local v7, writeSuccessful:Z
    :try_start_3a
    invoke-virtual {v6, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_175
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_d9

    .line 219
    const/4 v7, 0x1

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, closeSuccessful:Z
    :try_start_3f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_78

    .line 226
    const/4 v0, 0x1

    .line 230
    if-eqz v7, :cond_47

    if-nez v0, :cond_52

    .line 232
    :cond_47
    :try_start_47
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_13

    .line 241
    .end local v0           #closeSuccessful:Z
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v7           #writeSuccessful:Z
    :goto_4a
    monitor-exit p0

    return-void

    .line 202
    :catch_4c
    move-exception v8

    move-object v1, v8

    .line 204
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_4e
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 235
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #closeSuccessful:Z
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #writeSuccessful:Z
    :cond_52
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_4e .. :try_end_77} :catchall_13

    goto :goto_4a

    .line 227
    :catch_78
    move-exception v1

    .line 228
    .local v1, e:Ljava/io/IOException;
    :try_start_79
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_aa

    .line 230
    if-eqz v7, :cond_80

    if-nez v0, :cond_84

    .line 232
    :cond_80
    :try_start_80
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_4a

    .line 235
    :cond_84
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4a

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    :catchall_aa
    move-exception v8

    if-eqz v7, :cond_af

    if-nez v0, :cond_b3

    .line 232
    :cond_af
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 236
    :goto_b2
    throw v8

    .line 235
    :cond_b3
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_80 .. :try_end_d8} :catchall_13

    goto :goto_b2

    .line 220
    .end local v0           #closeSuccessful:Z
    :catch_d9
    move-exception v1

    .line 221
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_da
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_175

    .line 223
    const/4 v0, 0x0

    .line 225
    .restart local v0       #closeSuccessful:Z
    :try_start_de
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_146
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_112

    .line 226
    const/4 v0, 0x1

    .line 230
    if-eqz v7, :cond_e6

    if-nez v0, :cond_eb

    .line 232
    :cond_e6
    :try_start_e6
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto/16 :goto_4a

    .line 235
    :cond_eb
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_110
    .catchall {:try_start_e6 .. :try_end_110} :catchall_13

    goto/16 :goto_4a

    .line 227
    :catch_112
    move-exception v1

    .line 228
    :try_start_113
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_146

    .line 230
    if-eqz v7, :cond_11a

    if-nez v0, :cond_11f

    .line 232
    :cond_11a
    :try_start_11a
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto/16 :goto_4a

    .line 235
    :cond_11f
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stored session for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 230
    :catchall_146
    move-exception v8

    if-eqz v7, :cond_14b

    if-nez v0, :cond_14f

    .line 232
    :cond_14b
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 236
    :goto_14e
    throw v8

    .line 235
    :cond_14f
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_11a .. :try_end_174} :catchall_13

    goto :goto_14e

    .line 223
    .end local v0           #closeSuccessful:Z
    .end local v1           #e:Ljava/io/IOException;
    :catchall_175
    move-exception v8

    const/4 v0, 0x0

    .line 225
    .restart local v0       #closeSuccessful:Z
    :try_start_177
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_1db
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17a} :catch_1a9

    .line 226
    const/4 v0, 0x1

    .line 230
    if-eqz v7, :cond_17f

    if-nez v0, :cond_183

    .line 232
    :cond_17f
    :try_start_17f
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 240
    :goto_182
    throw v8

    .line 235
    :cond_183
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1a8
    .catchall {:try_start_17f .. :try_end_1a8} :catchall_13

    goto :goto_182

    .line 227
    :catch_1a9
    move-exception v1

    .line 228
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_1aa
    invoke-static {v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1ad
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_1db

    .line 230
    if-eqz v7, :cond_1b1

    if-nez v0, :cond_1b5

    .line 232
    :cond_1b1
    :try_start_1b1
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_182

    .line 235
    :cond_1b5
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_182

    .line 230
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1db
    move-exception v8

    if-eqz v7, :cond_1e0

    if-nez v0, :cond_1e4

    .line 232
    :cond_1e0
    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 236
    :goto_1e3
    throw v8

    .line 235
    :cond_1e4
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v9, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_209
    .catchall {:try_start_1b1 .. :try_end_209} :catchall_13

    goto :goto_1e3
.end method
