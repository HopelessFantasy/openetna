.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private os:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private writerNotInitialized:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 73
    const-string v0, "INFO"

    const-string v1, "java.util.logging.SimpleFormatter"

    invoke-virtual {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 76
    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 89
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .registers 5
    .parameter "os"
    .parameter "formatter"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 120
    if-nez p1, :cond_11

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "logging.2"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_11
    if-nez p2, :cond_1f

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "logging.3"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1f
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 129
    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->internalSetFormatter(Ljava/util/logging/Formatter;)V

    .line 130
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "defaultLevel"
    .parameter "defaultFilter"
    .parameter "defaultFormatter"
    .parameter "defaultEncoding"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 102
    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 104
    return-void
.end method

.method private initializeWritter()V
    .registers 4

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 135
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 136
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 147
    :goto_12
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    .line 148
    return-void

    .line 139
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_2b} :catch_2c

    goto :goto_12

    .line 140
    :catch_2c
    move-exception v0

    goto :goto_12
.end method

.method private write(Ljava/lang/String;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 159
    :goto_5
    return-void

    .line 154
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "logging.14"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 275
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/logging/StreamHandler;->close(Z)V

    .line 277
    return-void
.end method

.method close(Z)V
    .registers 6
    .parameter "closeStream"

    .prologue
    .line 242
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_28

    .line 243
    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    if-eqz v1, :cond_b

    .line 244
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWritter()V

    .line 246
    :cond_b
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V

    .line 248
    :try_start_16
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 249
    if-eqz p1, :cond_28

    .line 250
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_29

    .line 260
    :cond_28
    :goto_28
    return-void

    .line 254
    :catch_29
    move-exception v1

    move-object v0, v1

    .line 256
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "logging.15"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_28
.end method

.method public flush()V
    .registers 5

    .prologue
    .line 286
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_d

    .line 288
    :try_start_4
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_e

    .line 289
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 299
    :cond_d
    :goto_d
    return-void

    .line 291
    :cond_e
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_d

    .line 293
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "logging.16"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_d
.end method

.method internalSetOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "newOs"

    .prologue
    .line 168
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 169
    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 4
    .parameter "record"

    .prologue
    const/4 v1, 0x0

    .line 358
    if-nez p1, :cond_5

    move v0, v1

    .line 364
    :goto_4
    return v0

    .line 361
    :cond_5
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 362
    const/4 v0, 0x1

    goto :goto_4

    :cond_11
    move v0, v1

    .line 364
    goto :goto_4
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .registers 7
    .parameter "record"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 321
    iget-boolean v2, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    if-eqz v2, :cond_e

    .line 322
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->initializeWritter()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_2d

    .line 324
    :cond_e
    const/4 v1, 0x0

    .line 326
    .local v1, msg:Ljava/lang/String;
    :try_start_f
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_1c

    move-result-object v1

    .line 332
    :goto_17
    :try_start_17
    invoke-direct {p0, v1}, Ljava/util/logging/StreamHandler;->write(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_2d

    .line 339
    .end local v1           #msg:Ljava/lang/String;
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 327
    .restart local v1       #msg:Ljava/lang/String;
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 329
    .local v0, e:Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "logging.17"

    invoke-static {v3}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2d

    goto :goto_17

    .line 334
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Ljava/lang/String;
    :catch_2d
    move-exception v2

    move-object v0, v2

    .line 336
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "logging.18"

    invoke-static {v3}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3e

    goto :goto_1a

    .line 320
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 6
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 215
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_19

    .line 218
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 219
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 232
    :cond_19
    :goto_19
    return-void

    .line 222
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_27} :catch_28

    goto :goto_19

    .line 223
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 228
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected setOutputStream(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "os"

    .prologue
    const/4 v1, 0x1

    .line 187
    if-nez p1, :cond_9

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_9
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 191
    invoke-virtual {p0, v1}, Ljava/util/logging/StreamHandler;->close(Z)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 193
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->os:Ljava/io/OutputStream;

    .line 194
    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->writerNotInitialized:Z

    .line 195
    return-void
.end method
