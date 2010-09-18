.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field private static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .registers 9
    .parameter "theYear"
    .parameter "theMonth"
    .parameter "theDate"
    .parameter "theHour"
    .parameter "theMinute"
    .parameter "theSecond"
    .parameter "theNano"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 86
    if-ltz p7, :cond_a

    const v0, 0x3b9ac9ff

    if-le p7, v0, :cond_10

    .line 87
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 89
    :cond_10
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    .line 90
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "theTime"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/sql/Timestamp;->setTime(J)V

    .line 108
    return-void
.end method

.method private format(II)Ljava/lang/String;
    .registers 6
    .parameter "date"
    .parameter "digits"

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, dateStringBuffer:Ljava/lang/StringBuilder;
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p2, :cond_17

    .line 391
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_9

    .line 393
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private stripTrailingZeros(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "inputString"

    .prologue
    const/4 v4, 0x1

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :goto_5
    if-lez v1, :cond_11

    .line 406
    sub-int v2, v1, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_18

    .line 418
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, finalString:Ljava/lang/String;
    move-object v2, v0

    .line 419
    .end local v0           #finalString:Ljava/lang/String;
    :goto_17
    return-object v2

    .line 413
    :cond_18
    if-ne v1, v4, :cond_1d

    .line 414
    const-string v2, "0"

    goto :goto_17

    .line 405
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_5
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .registers 15
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const-string v12, "sql.2"

    .line 437
    if-nez p0, :cond_11

    .line 439
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "sql.3"

    invoke-static {v11}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 442
    :cond_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, df:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v13}, Ljava/text/ParsePosition;-><init>(I)V

    .line 454
    .local v4, pp:Ljava/text/ParsePosition;
    :try_start_1d
    invoke-virtual {v0, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2f

    move-result-object v6

    .line 459
    .local v6, theDate:Ljava/util/Date;
    if-nez v6, :cond_3c

    .line 460
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "sql.2"

    invoke-static {v12}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 455
    .end local v6           #theDate:Ljava/util/Date;
    :catch_2f
    move-exception v1

    .line 456
    .local v1, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "sql.2"

    invoke-static {v12}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 471
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #theDate:Ljava/util/Date;
    :cond_3c
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 472
    .local v3, position:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v5, v10, v3

    .line 475
    .local v5, remaining:I
    if-nez v5, :cond_5c

    .line 477
    const/4 v8, 0x0

    .line 521
    .local v8, theNanos:I
    :goto_49
    if-ltz v8, :cond_50

    const v10, 0x3b9ac9ff

    if-le v8, v10, :cond_e3

    .line 522
    :cond_50
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "sql.2"

    invoke-static {v12}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 483
    .end local v8           #theNanos:I
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    const-string v11, ".n"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_75

    .line 484
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "sql.2"

    invoke-static {v12}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 491
    :cond_75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    const-string v11, ".nnnnnnnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_8e

    .line 492
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "sql.2"

    invoke-static {v12}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 496
    :cond_8e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_a6

    .line 498
    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "sql.4"

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 501
    :cond_a6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    const/4 v11, 0x1

    sub-int v2, v10, v11

    .line 504
    .local v2, nanoLength:I
    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v3, 0x1

    add-int/2addr v11, v2

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, theNanoString:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "000000000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 511
    const/16 v10, 0x9

    invoke-virtual {v7, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 514
    :try_start_d0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d6

    move-result v8

    .restart local v8       #theNanos:I
    goto/16 :goto_49

    .line 515
    .end local v8           #theNanos:I
    :catch_d6
    move-exception v1

    .line 517
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "sql.2"

    invoke-static {v12}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 525
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #nanoLength:I
    .end local v7           #theNanoString:Ljava/lang/String;
    .restart local v8       #theNanos:I
    :cond_e3
    new-instance v9, Ljava/sql/Timestamp;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/sql/Timestamp;-><init>(J)V

    .line 526
    .local v9, theTimestamp:Ljava/sql/Timestamp;
    invoke-virtual {v9, v8}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 528
    return-object v9
.end method


# virtual methods
.method public after(Ljava/sql/Timestamp;)Z
    .registers 10
    .parameter "theTimestamp"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 122
    .local v2, thisTime:J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 125
    .local v0, compareTime:J
    cmp-long v4, v2, v0

    if-lez v4, :cond_10

    move v4, v7

    .line 139
    :goto_f
    return v4

    .line 129
    :cond_10
    cmp-long v4, v2, v0

    if-gez v4, :cond_16

    move v4, v6

    .line 130
    goto :goto_f

    .line 136
    :cond_16
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v4

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v5

    if-le v4, v5, :cond_22

    move v4, v7

    .line 137
    goto :goto_f

    :cond_22
    move v4, v6

    .line 139
    goto :goto_f
.end method

.method public before(Ljava/sql/Timestamp;)Z
    .registers 10
    .parameter "theTimestamp"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 155
    .local v2, thisTime:J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 158
    .local v0, compareTime:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_10

    move v4, v7

    .line 172
    :goto_f
    return v4

    .line 162
    :cond_10
    cmp-long v4, v2, v0

    if-lez v4, :cond_16

    move v4, v6

    .line 163
    goto :goto_f

    .line 169
    :cond_16
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v4

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v5

    if-ge v4, v5, :cond_22

    move v4, v7

    .line 170
    goto :goto_f

    :cond_22
    move v4, v6

    .line 172
    goto :goto_f
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/sql/Timestamp;)I
    .registers 6
    .parameter "theTimestamp"

    .prologue
    .line 224
    invoke-super {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 225
    .local v0, result:I
    if-nez v0, :cond_18

    .line 226
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    .line 227
    .local v2, thisNano:I
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    .line 228
    .local v1, thatNano:I
    if-le v2, v1, :cond_12

    .line 229
    const/4 v3, 0x1

    .line 236
    .end local v1           #thatNano:I
    .end local v2           #thisNano:I
    :goto_11
    return v3

    .line 230
    .restart local v1       #thatNano:I
    .restart local v2       #thisNano:I
    :cond_12
    if-ne v2, v1, :cond_16

    .line 231
    const/4 v3, 0x0

    goto :goto_11

    .line 233
    :cond_16
    const/4 v3, -0x1

    goto :goto_11

    .end local v1           #thatNano:I
    .end local v2           #thisNano:I
    :cond_18
    move v3, v0

    .line 236
    goto :goto_11
.end method

.method public compareTo(Ljava/util/Date;)I
    .registers 3
    .parameter "theObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 202
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "theObject"

    .prologue
    .line 252
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_b

    .line 253
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v0

    .line 255
    :goto_a
    return v0

    .restart local p1
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Ljava/sql/Timestamp;)Z
    .registers 7
    .parameter "theTimestamp"

    .prologue
    const/4 v4, 0x0

    .line 269
    if-nez p1, :cond_5

    move v0, v4

    .line 272
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v0

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result v1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_4

    :cond_1d
    move v0, v4

    goto :goto_4
.end method

.method public getNanos()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    return v0
.end method

.method public getTime()J
    .registers 5

    .prologue
    .line 298
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 299
    .local v0, theTime:J
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 300
    return-wide v0
.end method

.method public setNanos(I)V
    .registers 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 314
    if-ltz p1, :cond_7

    const v0, 0x3b9ac9ff

    if-le p1, v0, :cond_13

    .line 316
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sql.0"

    invoke-static {v1}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_13
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    .line 319
    return-void
.end method

.method public setTime(J)V
    .registers 8
    .parameter "theTime"

    .prologue
    const-wide/16 v3, 0x3e8

    .line 343
    rem-long v1, p1, v3

    long-to-int v0, v1

    .line 344
    .local v0, milliseconds:I
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 345
    if-gez v0, :cond_c

    .line 346
    sub-long/2addr p1, v3

    .line 347
    add-int/lit16 v0, v0, 0x3e8

    .line 349
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 350
    const v1, 0xf4240

    mul-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    .line 351
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0x3a

    const/16 v11, 0x2d

    const/16 v9, 0x9

    const/4 v10, 0x2

    .line 368
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v8, "0"

    invoke-direct {v1, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, decimalFormat:Ljava/text/DecimalFormat;
    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 370
    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 371
    iget v8, p0, Ljava/sql/Timestamp;->nanos:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, theNanos:Ljava/lang/String;
    invoke-direct {p0, v6}, Ljava/sql/Timestamp;->stripTrailingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getYear()I

    move-result v8

    add-int/lit16 v8, v8, 0x76c

    const/4 v9, 0x4

    invoke-direct {p0, v8, v9}, Ljava/sql/Timestamp;->format(II)Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, year:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8, v10}, Ljava/sql/Timestamp;->format(II)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, month:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getDate()I

    move-result v8

    invoke-direct {p0, v8, v10}, Ljava/sql/Timestamp;->format(II)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, date:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getHours()I

    move-result v8

    invoke-direct {p0, v8, v10}, Ljava/sql/Timestamp;->format(II)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, hours:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMinutes()I

    move-result v8

    invoke-direct {p0, v8, v10}, Ljava/sql/Timestamp;->format(II)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, minutes:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getSeconds()I

    move-result v8

    invoke-direct {p0, v8, v10}, Ljava/sql/Timestamp;->format(II)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, seconds:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
