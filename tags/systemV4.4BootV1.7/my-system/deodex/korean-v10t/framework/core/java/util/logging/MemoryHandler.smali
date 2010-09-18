.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private buffer:[Ljava/util/logging/LogRecord;

.field private cursor:I

.field private final manager:Ljava/util/logging/LogManager;

.field private push:Ljava/util/logging/Level;

.field private size:I

.field private target:Ljava/util/logging/Handler;


# direct methods
.method public constructor <init>()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0x3e8

    const-string v11, ".size"

    const-string v10, ".push"

    .line 100
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 77
    iput v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 80
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 83
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, className:Ljava/lang/String;
    iget-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".target"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, targetName:Ljava/lang/String;
    :try_start_37
    new-instance v6, Ljava/util/logging/MemoryHandler$1;

    invoke-direct {v6, p0, v5}, Ljava/util/logging/MemoryHandler$1;-><init>(Ljava/util/logging/MemoryHandler;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 114
    .local v4, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Handler;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_a2

    .line 121
    iget-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".size"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, sizeString:Ljava/lang/String;
    if-eqz v3, :cond_73

    .line 124
    :try_start_65
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 125
    iget v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-gtz v6, :cond_73

    .line 126
    const/16 v6, 0x3e8

    iput v6, p0, Ljava/util/logging/MemoryHandler;->size:I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_b0

    .line 133
    :cond_73
    :goto_73
    iget-object v6, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".push"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, pushName:Ljava/lang/String;
    if-eqz v2, :cond_94

    .line 136
    :try_start_8e
    invoke-static {v2}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v6

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_94} :catch_c9

    .line 142
    :cond_94
    :goto_94
    const-string v6, "ALL"

    const-string v7, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v6, v9, v7, v9}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v6, p0, Ljava/util/logging/MemoryHandler;->size:I

    new-array v6, v6, [Ljava/util/logging/LogRecord;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 144
    return-void

    .line 115
    .end local v2           #pushName:Ljava/lang/String;
    .end local v3           #sizeString:Ljava/lang/String;
    .end local v4           #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_a2
    move-exception v6

    move-object v1, v6

    .line 117
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "logging.10"

    invoke-static {v7, v5}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 128
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #sizeString:Ljava/lang/String;
    .restart local v4       #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_b0
    move-exception v6

    move-object v1, v6

    .line 129
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".size"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v3, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_73

    .line 137
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #pushName:Ljava/lang/String;
    :catch_c9
    move-exception v6

    move-object v1, v6

    .line 138
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".push"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2, v1}, Ljava/util/logging/MemoryHandler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_94
.end method

.method public constructor <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .registers 7
    .parameter "target"
    .parameter "size"
    .parameter "pushLevel"

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 77
    const/16 v0, 0x3e8

    iput v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 80
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 83
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    .line 165
    if-gtz p2, :cond_20

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.11"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_20
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    .line 170
    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    .line 171
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    .line 172
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 173
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 174
    const-string v0, "ALL"

    const-string v1, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/MemoryHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-array v0, p2, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 176
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 188
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 189
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 190
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 199
    return-void
.end method

.method public getPushLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 3
    .parameter "record"

    .prologue
    .line 255
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .registers 5
    .parameter "record"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v0

    if-nez v0, :cond_9

    .line 223
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 216
    :cond_9
    :try_start_9
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-lt v0, v1, :cond_12

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .line 219
    :cond_12
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    aput-object p1, v0, v1

    .line 220
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 221
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_30

    goto :goto_7

    .line 213
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public push()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 263
    iget v0, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .local v0, i:I
    :goto_3
    iget v1, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-ge v0, v1, :cond_1d

    .line 264
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v0

    if-eqz v1, :cond_16

    .line 265
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 267
    :cond_16
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object v3, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 269
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    if-ge v0, v1, :cond_38

    .line 270
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v0

    if-eqz v1, :cond_31

    .line 271
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 273
    :cond_31
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object v3, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 275
    :cond_38
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/logging/MemoryHandler;->cursor:I

    .line 276
    return-void
.end method

.method public setPushLevel(Ljava/util/logging/Level;)V
    .registers 3
    .parameter "newLevel"

    .prologue
    .line 291
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 292
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    .line 293
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->push:Ljava/util/logging/Level;

    .line 294
    return-void
.end method
