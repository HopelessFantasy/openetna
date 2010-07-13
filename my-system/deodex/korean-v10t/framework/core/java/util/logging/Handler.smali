.class public abstract Ljava/util/logging/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field private static final DEFAULT_LEVEL:Ljava/util/logging/Level;


# instance fields
.field private encoding:Ljava/lang/String;

.field private errorMan:Ljava/util/logging/ErrorManager;

.field private filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private level:Ljava/util/logging/Level;

.field private prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    sput-object v0, Ljava/util/logging/Handler;->DEFAULT_LEVEL:Ljava/util/logging/Level;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/logging/ErrorManager;

    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    .line 83
    sget-object v0, Ljava/util/logging/Handler;->DEFAULT_LEVEL:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    .line 84
    iput-object v1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    .line 86
    iput-object v1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/util/logging/Handler$1;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/Handler$1;-><init>(Ljava/util/logging/Handler;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 123
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "className"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, result:Ljava/lang/Object;
    if-nez p1, :cond_5

    move-object v1, v0

    .line 107
    .end local v0           #result:Ljava/lang/Object;
    :goto_4
    return-object v1

    .line 103
    .restart local v0       #result:Ljava/lang/Object;
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_f

    move-result-object v0

    .end local v0           #result:Ljava/lang/Object;
    :goto_d
    move-object v1, v0

    .line 107
    goto :goto_4

    .line 104
    .restart local v0       #result:Ljava/lang/Object;
    :catch_f
    move-exception v1

    goto :goto_d
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .registers 2

    .prologue
    .line 243
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 244
    iget-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getFormatter()Ljava/util/logging/Formatter;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "defaultLevel"
    .parameter "defaultFilter"
    .parameter "defaultFormatter"
    .parameter "defaultEncoding"

    .prologue
    .line 142
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v6

    .line 145
    .local v6, manager:Ljava/util/logging/LogManager;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".filter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, filterName:Ljava/lang/String;
    if-eqz v3, :cond_98

    .line 148
    :try_start_1f
    invoke-direct {p0, v3}, Ljava/util/logging/Handler;->getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Filter;

    iput-object v7, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_88

    .line 158
    :goto_27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".level"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, levelName:Ljava/lang/String;
    if-eqz v5, :cond_af

    .line 161
    :try_start_42
    invoke-static {v5}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_a1

    .line 171
    :goto_48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".formatter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, formatterName:Ljava/lang/String;
    if-eqz v4, :cond_c6

    .line 174
    :try_start_63
    invoke-direct {p0, v4}, Ljava/util/logging/Handler;->getCustomizeInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Formatter;

    iput-object v7, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6b} :catch_b6

    .line 184
    :goto_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".encoding"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, encodingName:Ljava/lang/String;
    :try_start_84
    invoke-virtual {p0, v2}, Ljava/util/logging/Handler;->internalSetEncoding(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_84 .. :try_end_87} :catch_cf

    .line 190
    :goto_87
    return-void

    .line 149
    .end local v2           #encodingName:Ljava/lang/String;
    .end local v4           #formatterName:Ljava/lang/String;
    .end local v5           #levelName:Ljava/lang/String;
    :catch_88
    move-exception v7

    move-object v1, v7

    .line 150
    .local v1, e1:Ljava/lang/Exception;
    const-string v7, "filter"

    invoke-virtual {p0, v7, v3, v1}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 151
    invoke-direct {p0, p2}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Filter;

    iput-object v7, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    goto :goto_27

    .line 154
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_98
    invoke-direct {p0, p2}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Filter;

    iput-object v7, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    goto :goto_27

    .line 162
    .restart local v5       #levelName:Ljava/lang/String;
    :catch_a1
    move-exception v7

    move-object v0, v7

    .line 163
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "level"

    invoke-virtual {p0, v7, v5, v0}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 164
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    goto :goto_48

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :cond_af
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    iput-object v7, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    goto :goto_48

    .line 175
    .restart local v4       #formatterName:Ljava/lang/String;
    :catch_b6
    move-exception v7

    move-object v0, v7

    .line 176
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "formatter"

    invoke-virtual {p0, v7, v4, v0}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 177
    invoke-direct {p0, p3}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Formatter;

    iput-object v7, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_6b

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c6
    invoke-direct {p0, p3}, Ljava/util/logging/Handler;->getDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/Formatter;

    iput-object v7, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_6b

    .line 187
    .restart local v2       #encodingName:Ljava/lang/String;
    :catch_cf
    move-exception v0

    .line 188
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "encoding"

    invoke-virtual {p0, v7, v2, v0}, Ljava/util/logging/Handler;->printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_87
.end method

.method internalSetEncoding(Ljava/lang/String;)V
    .registers 4
    .parameter "newEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 332
    if-nez p1, :cond_6

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    .line 345
    :goto_5
    return-void

    .line 335
    :cond_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 336
    iput-object p1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    goto :goto_5

    .line 339
    :cond_f
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "logging.13"

    invoke-static {v1, p1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method internalSetFormatter(Ljava/util/logging/Formatter;)V
    .registers 3
    .parameter "newFormatter"

    .prologue
    .line 409
    if-nez p1, :cond_8

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 412
    :cond_8
    iput-object p1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    .line 413
    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 5
    .parameter "record"

    .prologue
    const/4 v2, 0x0

    .line 289
    if-nez p1, :cond_9

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 292
    :cond_9
    iget-object v0, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_19

    move v0, v2

    .line 297
    :goto_18
    return v0

    .line 294
    :cond_19
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget-object v1, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_39

    .line 295
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    if-eqz v0, :cond_35

    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_35
    const/4 v0, 0x1

    goto :goto_18

    :cond_37
    move v0, v2

    goto :goto_18

    :cond_39
    move v0, v2

    .line 297
    goto :goto_18
.end method

.method printInvalidPropMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "key"
    .parameter "value"
    .parameter "e"

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logging.12"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/logging/Handler;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 133
    return-void
.end method

.method public abstract publish(Ljava/util/logging/LogRecord;)V
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5
    .parameter "msg"
    .parameter "ex"
    .parameter "code"

    .prologue
    .line 315
    iget-object v0, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 316
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 363
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->internalSetEncoding(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .registers 3
    .parameter "em"

    .prologue
    .line 379
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 380
    if-nez p1, :cond_f

    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 383
    :cond_f
    iput-object p1, p0, Ljava/util/logging/Handler;->errorMan:Ljava/util/logging/ErrorManager;

    .line 384
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .registers 3
    .parameter "newFilter"

    .prologue
    .line 397
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 398
    iput-object p1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    .line 399
    return-void
.end method

.method public setFormatter(Ljava/util/logging/Formatter;)V
    .registers 3
    .parameter "newFormatter"

    .prologue
    .line 428
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 429
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->internalSetFormatter(Ljava/util/logging/Formatter;)V

    .line 430
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 3
    .parameter "newLevel"

    .prologue
    .line 446
    if-nez p1, :cond_8

    .line 447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 449
    :cond_8
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 450
    iput-object p1, p0, Ljava/util/logging/Handler;->level:Ljava/util/logging/Level;

    .line 451
    return-void
.end method
