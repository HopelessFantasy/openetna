.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAJOR:I = 0x1

.field private static final MINOR:I = 0x4

.field private static currentSequenceNumber:J = 0x0L

.field private static currentThreadId:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static initThreadId:I = 0x0

.field private static final serialVersionUID:J = 0x4a8d593df3695196L


# instance fields
.field private level:Ljava/util/logging/Level;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private millis:J

.field private transient parameters:[Ljava/lang/Object;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private resourceBundleName:Ljava/lang/String;

.field private sequenceNumber:J

.field private sourceClassName:Ljava/lang/String;

.field private transient sourceInited:Z

.field private sourceMethodName:Ljava/lang/String;

.field private threadID:I

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    .line 64
    const/4 v0, 0x0

    sput v0, Ljava/util/logging/LogRecord;->initThreadId:I

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 10
    .parameter "level"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    if-nez p1, :cond_12

    .line 163
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "logging.4"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_12
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 166
    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 169
    const-class v1, Ljava/util/logging/LogRecord;

    monitor-enter v1

    .line 170
    :try_start_1f
    sget-wide v2, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Ljava/util/logging/LogRecord;->currentSequenceNumber:J

    iput-wide v2, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 171
    sget-object v2, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 172
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_55

    .line 173
    sget v2, Ljava/util/logging/LogRecord;->initThreadId:I

    iput v2, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 174
    sget-object v2, Ljava/util/logging/LogRecord;->currentThreadId:Ljava/lang/ThreadLocal;

    sget v3, Ljava/util/logging/LogRecord;->initThreadId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Ljava/util/logging/LogRecord;->initThreadId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 178
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_5c

    .line 180
    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 181
    iput-object v6, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 182
    iput-object v6, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    .line 183
    iput-object v6, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 184
    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    .line 185
    iput-object v6, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 186
    iput-object v6, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    .line 187
    return-void

    .line 176
    :cond_55
    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ljava/util/logging/LogRecord;->threadID:I

    goto :goto_45

    .line 178
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method private initSource()V
    .registers 5

    .prologue
    .line 387
    iget-boolean v3, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    if-nez v3, :cond_4b

    .line 388
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 389
    .local v1, elements:[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 390
    .local v2, i:I
    const/4 v0, 0x0

    .line 391
    .local v0, current:Ljava/lang/String;
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_24

    .line 392
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 393
    const-class v3, Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 397
    :cond_24
    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    if-ge v2, v3, :cond_35

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 400
    :cond_35
    array-length v3, v1

    if-ge v2, v3, :cond_48

    .line 401
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 402
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 404
    :cond_48
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    .line 406
    .end local v0           #current:Ljava/lang/String;
    .end local v1           #elements:[Ljava/lang/StackTraceElement;
    .end local v2           #i:I
    :cond_4b
    return-void

    .line 391
    .restart local v0       #current:Ljava/lang/String;
    .restart local v1       #elements:[Ljava/lang/StackTraceElement;
    .restart local v2       #i:I
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 515
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v3

    .line 516
    .local v3, major:B
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v4

    .line 518
    .local v4, minor:B
    const/4 v5, 0x1

    if-eq v3, v5, :cond_22

    .line 520
    new-instance v5, Ljava/io/IOException;

    const-string v6, "logging.5"

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 523
    :cond_22
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 524
    .local v2, length:I
    if-ltz v2, :cond_3d

    .line 525
    new-array v5, v2, [Ljava/lang/Object;

    iput-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 526
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2d
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v1, v5, :cond_3d

    .line 527
    iget-object v5, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 530
    .end local v1           #i:I
    :cond_3d
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    if-eqz v5, :cond_49

    .line 532
    :try_start_41
    iget-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_49
    .catch Ljava/util/MissingResourceException; {:try_start_41 .. :try_end_49} :catch_4a

    .line 538
    :cond_49
    :goto_49
    return-void

    .line 533
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 535
    .local v0, e:Ljava/util/MissingResourceException;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    goto :goto_49
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 497
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 498
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 499
    iget-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    if-nez v4, :cond_14

    .line 500
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 507
    :cond_13
    return-void

    .line 502
    :cond_14
    iget-object v4, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 503
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1e
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 504
    .local v1, element:Ljava/lang/Object;
    if-nez v1, :cond_2b

    const/4 v4, 0x0

    :goto_25
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 504
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_25
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMillis()J
    .registers 3

    .prologue
    .line 267
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    return-wide v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()J
    .registers 3

    .prologue
    .line 355
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-wide v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    .line 380
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->initSource()V

    .line 429
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()I
    .registers 2

    .prologue
    .line 456
    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 4
    .parameter "level"

    .prologue
    .line 209
    if-nez p1, :cond_e

    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "logging.4"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 214
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .registers 2
    .parameter "loggerName"

    .prologue
    .line 234
    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 257
    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setMillis(J)V
    .registers 3
    .parameter "millis"

    .prologue
    .line 278
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 279
    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .registers 2
    .parameter "parameters"

    .prologue
    .line 300
    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 2
    .parameter "resourceBundle"

    .prologue
    .line 323
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    .line 324
    return-void
.end method

.method public setResourceBundleName(Ljava/lang/String;)V
    .registers 2
    .parameter "resourceBundleName"

    .prologue
    .line 345
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setSequenceNumber(J)V
    .registers 3
    .parameter "sequenceNumber"

    .prologue
    .line 368
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 369
    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .registers 3
    .parameter "sourceClassName"

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    .line 418
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .registers 3
    .parameter "sourceMethodName"

    .prologue
    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->sourceInited:Z

    .line 442
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setThreadID(I)V
    .registers 2
    .parameter "threadID"

    .prologue
    .line 467
    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 468
    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "thrown"

    .prologue
    .line 489
    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    .line 490
    return-void
.end method
