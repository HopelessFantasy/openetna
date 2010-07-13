.class public Ljava/util/logging/FileHandler;
.super Ljava/util/logging/StreamHandler;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/FileHandler$MeasureOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_APPEND:Z = false

.field private static final DEFAULT_COUNT:I = 0x1

.field private static final DEFAULT_LIMIT:I = 0x0

.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "%h/java%u.log"

.field private static final LCK_EXT:Ljava/lang/String; = ".lck"

.field private static final allLocks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private count:I

.field fileName:Ljava/lang/String;

.field private files:[Ljava/io/File;

.field private limit:I

.field lock:Ljava/nio/channels/FileLock;

.field private manager:Ljava/util/logging/LogManager;

.field private output:Ljava/util/logging/FileHandler$MeasureOutputStream;

.field private pattern:Ljava/lang/String;

.field uniqueID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 142
    iput-object v1, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 145
    iput-object v1, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 165
    invoke-direct {p0, v1, v1, v1, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 142
    iput-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 145
    iput-object v2, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 419
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.19"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1f
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 425
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 7
    .parameter "pattern"
    .parameter "limit"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 142
    iput-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 145
    iput-object v2, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 493
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.19"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_1f
    if-ltz p2, :cond_24

    const/4 v0, 0x1

    if-ge p3, v0, :cond_30

    .line 499
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.1B"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .registers 8
    .parameter "pattern"
    .parameter "limit"
    .parameter "count"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 142
    iput-object v0, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 145
    iput-object v0, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 539
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.19"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_1f
    if-ltz p2, :cond_24

    const/4 v0, 0x1

    if-ge p3, v0, :cond_30

    .line 545
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.1B"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_30
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 549
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 6
    .parameter "pattern"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 142
    iput-object v0, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 145
    iput-object v0, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 454
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.19"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1f
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 460
    return-void
.end method

.method private getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 362
    iget-object v2, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, property:Ljava/lang/String;
    if-nez v0, :cond_a

    move v2, p2

    .line 372
    :goto_9
    return v2

    .line 366
    :cond_a
    move v1, p2

    .line 367
    .local v1, result:Z
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 368
    const/4 v1, 0x1

    :cond_14
    :goto_14
    move v2, v1

    .line 372
    goto :goto_9

    .line 369
    :cond_16
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 370
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private getIntProperty(Ljava/lang/String;I)I
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 383
    iget-object v2, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, property:Ljava/lang/String;
    move v1, p2

    .line 385
    .local v1, result:I
    if-eqz v0, :cond_d

    .line 387
    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result v1

    .line 392
    :cond_d
    :goto_d
    return v1

    .line 388
    :catch_e
    move-exception v2

    goto :goto_d
.end method

.method private getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 377
    iget-object v1, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, property:Ljava/lang/String;
    if-nez v0, :cond_a

    move-object v1, p2

    :goto_9
    return-object v1

    :cond_a
    move-object v1, v0

    goto :goto_9
.end method

.method private init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .parameter "p"
    .parameter "a"
    .parameter "l"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    .line 173
    iget-object v0, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/logging/FileHandler;->initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 175
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->initOutputFiles()V

    .line 176
    return-void
.end method

.method private initOutputFiles()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 181
    :goto_2
    iget v4, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    .line 183
    const/4 v2, 0x0

    .local v2, generation:I
    :goto_9
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    if-ge v2, v4, :cond_1d

    .line 185
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/util/logging/FileHandler;->parseFileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 187
    :cond_1d
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    .line 188
    sget-object v4, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    monitor-enter v4

    .line 193
    :try_start_2a
    sget-object v5, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 194
    monitor-exit v4

    goto :goto_2

    .line 224
    :catchall_36
    move-exception v5

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v5

    .line 196
    :cond_39
    :try_start_39
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7f

    iget-boolean v5, p0, Ljava/util/logging/FileHandler;->append:Z

    if-eqz v5, :cond_58

    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iget v7, p0, Ljava/util/logging/FileHandler;->limit:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_7f

    .line 198
    :cond_58
    iget v5, p0, Ljava/util/logging/FileHandler;->count:I

    sub-int v3, v5, v10

    .local v3, i:I
    :goto_5c
    if-lez v3, :cond_7f

    .line 199
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 200
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 202
    :cond_6f
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    sub-int v6, v3, v10

    aget-object v5, v5, v6

    iget-object v6, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    add-int/lit8 v3, v3, -0x1

    goto :goto_5c

    .line 205
    .end local v3           #i:I
    :cond_7f
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".lck"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, fileStream:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 213
    .local v0, channel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 214
    iget-object v5, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;
    :try_end_a5
    .catchall {:try_start_39 .. :try_end_a5} :catchall_36

    if-nez v5, :cond_ad

    .line 216
    :try_start_a7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_dc

    .line 220
    :goto_aa
    :try_start_aa
    monitor-exit v4

    goto/16 :goto_2

    .line 222
    :cond_ad
    sget-object v5, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    iget-object v7, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit v4
    :try_end_b7
    .catchall {:try_start_aa .. :try_end_b7} :catchall_36

    .line 227
    new-instance v4, Ljava/util/logging/FileHandler$MeasureOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    iget-boolean v8, p0, Ljava/util/logging/FileHandler;->append:Z

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iget-object v6, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    iput-object v4, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    .line 232
    iget-object v4, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 233
    return-void

    .line 217
    :catch_dc
    move-exception v5

    goto :goto_aa
.end method

.method private initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 11
    .parameter "p"
    .parameter "a"
    .parameter "l"
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    const-string v1, "ALL"

    const-string v2, "java.util.logging.XMLFormatter"

    invoke-super {p0, v1, v5, v2, v5}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, className:Ljava/lang/String;
    if-nez p1, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%h/java%u.log"

    invoke-direct {p0, v1, v2}, Ljava/util/logging/FileHandler;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2d
    iput-object v1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_3d

    const-string v1, ""

    iget-object v2, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 243
    :cond_3d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "logging.19"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    move-object v1, p1

    .line 239
    goto :goto_2d

    .line 245
    :cond_4b
    if-nez p2, :cond_b1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".append"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/util/logging/FileHandler;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    :goto_64
    iput-boolean v1, p0, Ljava/util/logging/FileHandler;->append:Z

    .line 247
    if-nez p4, :cond_b6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Ljava/util/logging/FileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    :goto_7f
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 249
    if-nez p3, :cond_bb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/util/logging/FileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    :goto_9a
    iput v1, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 251
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    if-ge v1, v4, :cond_c0

    move v1, v4

    :goto_a1
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    .line 252
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    if-gez v1, :cond_c3

    move v1, v3

    :goto_a8
    iput v1, p0, Ljava/util/logging/FileHandler;->limit:I

    .line 253
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    new-array v1, v1, [Ljava/io/File;

    iput-object v1, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    .line 254
    return-void

    .line 245
    :cond_b1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_64

    .line 247
    :cond_b6
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7f

    .line 249
    :cond_bb
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_9a

    .line 251
    :cond_c0
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    goto :goto_a1

    .line 252
    :cond_c3
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    goto :goto_a8
.end method

.method private parseFileName(I)Ljava/lang/String;
    .registers 15
    .parameter "gen"

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, cur:I
    const/4 v5, 0x0

    .line 290
    .local v5, next:I
    const/4 v2, 0x0

    .line 291
    .local v2, hasUniqueID:Z
    const/4 v1, 0x0

    .line 295
    .local v1, hasGeneration:Z
    const-string v10, "java.io.tmpdir"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, tempPath:Ljava/lang/String;
    if-nez v7, :cond_51

    const/4 v10, 0x0

    move v8, v10

    .line 299
    .local v8, tempPathHasSepEnd:Z
    :goto_e
    const-string v10, "user.home"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, homePath:Ljava/lang/String;
    if-nez v3, :cond_59

    const/4 v10, 0x0

    move v4, v10

    .line 303
    .local v4, homePathHasSepEnd:Z
    :goto_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    const/16 v11, 0x2f

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    .line 306
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 307
    .local v9, value:[C
    :cond_2f
    :goto_2f
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    const/16 v11, 0x25

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_b1

    .line 308
    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_2f

    .line 309
    aget-char v10, v9, v5

    sparse-switch v10, :sswitch_data_dc

    .line 338
    sub-int v10, v5, v0

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 340
    :cond_4d
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_2f

    .line 296
    .end local v3           #homePath:Ljava/lang/String;
    .end local v4           #homePathHasSepEnd:Z
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v8           #tempPathHasSepEnd:Z
    .end local v9           #value:[C
    :cond_51
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    move v8, v10

    goto :goto_e

    .line 300
    .restart local v3       #homePath:Ljava/lang/String;
    .restart local v8       #tempPathHasSepEnd:Z
    :cond_59
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    move v4, v10

    goto :goto_18

    .line 311
    .restart local v4       #homePathHasSepEnd:Z
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v9       #value:[C
    :sswitch_61
    sub-int v10, v5, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    const/4 v1, 0x1

    .line 313
    goto :goto_4d

    .line 315
    :sswitch_6e
    sub-int v10, v5, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const/4 v2, 0x1

    .line 317
    goto :goto_4d

    .line 323
    :sswitch_7d
    sub-int v10, v5, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    if-nez v8, :cond_4d

    .line 325
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 329
    :sswitch_90
    sub-int v10, v5, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    if-nez v4, :cond_4d

    .line 331
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 335
    :sswitch_a3
    sub-int v10, v5, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 346
    :cond_b1
    array-length v10, v9

    sub-int/2addr v10, v0

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 348
    if-nez v1, :cond_c6

    iget v10, p0, Ljava/util/logging/FileHandler;->count:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_c6

    .line 349
    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    :cond_c6
    if-nez v2, :cond_d7

    iget v10, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    if-lez v10, :cond_d7

    .line 353
    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    :cond_d7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 309
    :sswitch_data_dc
    .sparse-switch
        0x25 -> :sswitch_a3
        0x67 -> :sswitch_61
        0x68 -> :sswitch_90
        0x74 -> :sswitch_7d
        0x75 -> :sswitch_6e
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 565
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 566
    sget-object v2, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v3, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :try_start_a
    iget-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 569
    .local v0, channel:Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 570
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 571
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_35} :catch_36

    .line 576
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #file:Ljava/io/File;
    :goto_35
    return-void

    .line 573
    :catch_36
    move-exception v2

    goto :goto_35
.end method

.method findNextGeneration()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 257
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 258
    iget v2, p0, Ljava/util/logging/FileHandler;->count:I

    sub-int v1, v2, v4

    .local v1, i:I
    :goto_8
    if-lez v1, :cond_2b

    .line 259
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 260
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 262
    :cond_1b
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    sub-int v3, v1, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 258
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 266
    :cond_2b
    :try_start_2b
    new-instance v2, Ljava/util/logging/FileHandler$MeasureOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_43} :catch_49

    .line 276
    :goto_43
    iget-object v2, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    invoke-virtual {p0, v2}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 277
    return-void

    .line 271
    :catch_49
    move-exception v2

    move-object v0, v2

    .line 273
    .local v0, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "logging.1A"

    invoke-static {v3}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_43
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 6
    .parameter "record"

    .prologue
    .line 587
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 588
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->flush()V

    .line 589
    iget v0, p0, Ljava/util/logging/FileHandler;->limit:I

    if-lez v0, :cond_1f

    iget-object v0, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    invoke-virtual {v0}, Ljava/util/logging/FileHandler$MeasureOutputStream;->getLength()J

    move-result-wide v0

    iget v2, p0, Ljava/util/logging/FileHandler;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1f

    .line 590
    new-instance v0, Ljava/util/logging/FileHandler$1;

    invoke-direct {v0, p0}, Ljava/util/logging/FileHandler$1;-><init>(Ljava/util/logging/FileHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 597
    :cond_1f
    return-void
.end method
