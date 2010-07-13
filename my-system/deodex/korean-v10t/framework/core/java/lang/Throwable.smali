.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private volatile stackState:Ljava/lang/Object;

.field private stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 93
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 108
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "throwable"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 122
    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 124
    return-void

    .line 122
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .registers 7
    .parameter "currentStack"
    .parameter "parentStack"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, duplicates:I
    array-length v3, p1

    .line 236
    .local v3, parentIndex:I
    array-length v1, p0

    .local v1, i:I
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_18

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_18

    .line 237
    aget-object v2, p1, v3

    .line 238
    .local v2, parentFrame:Ljava/lang/StackTraceElement;
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 243
    goto :goto_3

    .line 244
    .end local v2           #parentFrame:Ljava/lang/StackTraceElement;
    :cond_18
    return v0
.end method

.method private getInternalStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_f

    .line 256
    iget-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    .line 260
    :cond_f
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    .line 392
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 393
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 141
    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_6

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    goto :goto_5
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .parameter "throwable"

    .prologue
    .line 365
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_11

    .line 366
    if-eq p1, p0, :cond_9

    .line 367
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 368
    return-object p0

    .line 370
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cause cannot be the receiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cause already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printStackTrace()V
    .registers 2

    .prologue
    .line 220
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 221
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 15
    .parameter "err"

    .prologue
    const-string v12, "\tat "

    .line 274
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 278
    .local v8, stack:[Ljava/lang/StackTraceElement;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_10
    if-ge v5, v6, :cond_2d

    aget-object v3, v0, v5

    .line 279
    .local v3, element:Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 282
    .end local v3           #element:Ljava/lang/StackTraceElement;
    :cond_2d
    move-object v7, v8

    .line 283
    .local v7, parentStack:[Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 284
    .local v9, throwable:Ljava/lang/Throwable;
    :goto_32
    if-eqz v9, :cond_88

    .line 285
    const-string v10, "Caused by: "

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 287
    invoke-direct {v9}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 288
    .local v1, currentStack:[Ljava/lang/StackTraceElement;
    invoke-static {v1, v7}, Ljava/lang/Throwable;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v2

    .line 289
    .local v2, duplicates:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_45
    array-length v10, v1

    sub-int/2addr v10, v2

    if-ge v4, v10, :cond_64

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 292
    :cond_64
    if-lez v2, :cond_82

    .line 293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t... "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :cond_82
    move-object v7, v1

    .line 296
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 297
    goto :goto_32

    .line 298
    .end local v1           #currentStack:[Ljava/lang/StackTraceElement;
    .end local v2           #duplicates:I
    .end local v4           #i:I
    :cond_88
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 15
    .parameter "err"

    .prologue
    const-string v12, "\tat "

    .line 311
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 315
    .local v8, stack:[Ljava/lang/StackTraceElement;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_10
    if-ge v5, v6, :cond_2d

    aget-object v3, v0, v5

    .line 316
    .local v3, element:Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 319
    .end local v3           #element:Ljava/lang/StackTraceElement;
    :cond_2d
    move-object v7, v8

    .line 320
    .local v7, parentStack:[Ljava/lang/StackTraceElement;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 321
    .local v9, throwable:Ljava/lang/Throwable;
    :goto_32
    if-eqz v9, :cond_88

    .line 322
    const-string v10, "Caused by: "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 324
    invoke-direct {v9}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 325
    .local v1, currentStack:[Ljava/lang/StackTraceElement;
    invoke-static {v1, v7}, Ljava/lang/Throwable;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v2

    .line 326
    .local v2, duplicates:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_45
    array-length v10, v1

    sub-int/2addr v10, v2

    if-ge v4, v10, :cond_64

    .line 327
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 329
    :cond_64
    if-lez v2, :cond_82

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t... "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_82
    move-object v7, v1

    .line 333
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 334
    goto :goto_32

    .line 335
    .end local v1           #currentStack:[Ljava/lang/StackTraceElement;
    .end local v2           #duplicates:I
    .end local v4           #i:I
    :cond_88
    return-void
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .registers 8
    .parameter "trace"

    .prologue
    .line 204
    invoke-virtual {p1}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 205
    .local v4, newTrace:[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 206
    .local v1, element:Ljava/lang/StackTraceElement;
    if-nez v1, :cond_15

    .line 207
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 205
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 210
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_18
    iput-object v4, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 339
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, name:Ljava/lang/String;
    if-nez v0, :cond_10

    move-object v2, v1

    .line 344
    :goto_f
    return-object v2

    :cond_10
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f
.end method
