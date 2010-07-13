.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static creationYear:I = 0x0

.field private static final serialVersionUID:J = 0x686a81014b597419L


# instance fields
.field private transient milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    sput v0, Ljava/util/Date;->creationYear:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 56
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 76
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 77
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 78
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 12
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 102
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 103
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 104
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 14
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 130
    .local v0, cal:Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 131
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 132
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->milliseconds:J

    .line 159
    return-void
.end method

.method public static UTC(IIIIII)J
    .registers 13
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 759
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 760
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 761
    add-int/lit16 v1, p0, 0x76c

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 762
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static parse(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "string"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 375
    const/4 v7, 0x0

    .local v7, i:I
    array-length v6, p1

    .local v6, alength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, slength:I
    :goto_7
    if-ge v7, v6, :cond_19

    .line 376
    const/4 v1, 0x1

    aget-object v3, p1, v7

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v7

    .line 380
    :goto_15
    return v0

    .line 375
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 380
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 23
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    if-nez p0, :cond_11

    .line 400
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string v2, "luni.06"

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 403
    .restart local p0
    :cond_11
    const/4 v11, 0x0

    .line 404
    .local v11, sign:C
    const/4 v8, 0x0

    .line 405
    .local v8, commentLevel:I
    const/4 v9, 0x0

    .local v9, offset:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, length:I
    const/4 v12, 0x0

    .line 406
    .local v12, state:I
    const/4 v13, -0x1

    .local v13, year:I
    const/4 v3, -0x1

    .local v3, month:I
    const/4 v4, -0x1

    .line 407
    .local v4, date:I
    const/4 v5, -0x1

    .local v5, hour:I
    const/4 v6, -0x1

    .local v6, minute:I
    const/4 v7, -0x1

    .local v7, second:I
    const/4 v15, 0x0

    .line 408
    .local v15, zoneOffset:I
    const/4 v14, 0x0

    .line 409
    .local v14, zone:Z
    const/4 v2, 0x0

    .local v2, PAD:I
    const/4 v2, 0x1

    .local v2, LETTERS:I
    const/4 v2, 0x2

    .line 410
    .local v2, NUMBERS:I
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #NUMBERS:I
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, buffer:Ljava/lang/StringBuffer;
    move/from16 v18, v14

    .end local v14           #zone:Z
    .local v18, zone:Z
    move/from16 v19, v15

    .end local v15           #zoneOffset:I
    .local v19, zoneOffset:I
    move/from16 v17, v13

    .end local v13           #year:I
    .local v17, year:I
    move v15, v12

    .end local v12           #state:I
    .local v15, state:I
    move v14, v11

    .end local v11           #sign:C
    .local v14, sign:C
    move v11, v9

    .line 412
    .end local v9           #offset:I
    .local v11, offset:I
    :goto_32
    if-gt v11, v10, :cond_2d7

    .line 413
    if-ge v11, v10, :cond_c3

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 414
    .local v9, next:C
    :goto_3d
    add-int/lit8 v13, v11, 0x1

    .line 416
    .end local v11           #offset:I
    .local v13, offset:I
    const/16 v11, 0x28

    if-ne v9, v11, :cond_45

    .line 417
    add-int/lit8 v8, v8, 0x1

    .line 419
    :cond_45
    if-lez v8, :cond_373

    .line 420
    const/16 v11, 0x29

    if-ne v9, v11, :cond_4d

    .line 421
    add-int/lit8 v8, v8, -0x1

    .line 423
    :cond_4d
    if-nez v8, :cond_370

    .line 424
    const/16 v9, 0x20

    move v11, v9

    .line 430
    .end local v9           #next:C
    .local v11, next:I
    :goto_52
    const/4 v9, 0x0

    .line 431
    .local v9, nextState:I
    const/16 v12, 0x61

    if-gt v12, v11, :cond_5b

    const/16 v12, 0x7a

    if-le v11, v12, :cond_63

    :cond_5b
    const/16 v12, 0x41

    if-gt v12, v11, :cond_c7

    const/16 v12, 0x5a

    if-gt v11, v12, :cond_c7

    .line 432
    :cond_63
    const/4 v9, 0x1

    move v12, v9

    .line 439
    .end local v9           #nextState:I
    .local v12, nextState:I
    :goto_65
    const/4 v9, 0x2

    if-ne v15, v9, :cond_1e0

    const/4 v9, 0x2

    if-eq v12, v9, :cond_1e0

    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 441
    .local v9, digit:I
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 442
    .end local v15           #state:I
    const/16 v15, 0x2b

    if-eq v14, v15, :cond_7f

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_f3

    .line 443
    :cond_7f
    if-nez v19, :cond_ed

    .line 444
    const/4 v15, 0x1

    .line 445
    .end local v18           #zone:Z
    .local v15, zone:Z
    const/16 v16, 0x2d

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_eb

    neg-int v9, v9

    move v14, v9

    .line 446
    .end local v9           #digit:I
    .end local v19           #zoneOffset:I
    .local v14, zoneOffset:I
    :goto_8b
    const/4 v9, 0x0

    .local v9, sign:C
    move/from16 v16, v14

    .end local v14           #zoneOffset:I
    .local v16, zoneOffset:I
    move/from16 v14, v17

    .line 532
    .end local v17           #year:I
    .local v14, year:I
    :goto_90
    const/16 v17, 0x2b

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_a5

    const/16 v17, -0x1

    move v0, v14

    move/from16 v1, v17

    if-eq v0, v1, :cond_2c0

    const/16 v17, 0x2d

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_2c0

    .line 533
    :cond_a5
    move v9, v11

    .line 539
    :cond_a6
    :goto_a6
    const/16 v17, 0x1

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_b4

    const/16 v17, 0x2

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_b7

    .line 540
    :cond_b4
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    :cond_b7
    move v11, v12

    .local v11, state:I
    move/from16 v18, v15

    .end local v15           #zone:Z
    .restart local v18       #zone:Z
    move/from16 v19, v16

    .end local v16           #zoneOffset:I
    .restart local v19       #zoneOffset:I
    move/from16 v17, v14

    .end local v14           #year:I
    .restart local v17       #year:I
    move v15, v11

    .end local v11           #state:I
    .local v15, state:I
    move v14, v9

    .end local v9           #sign:C
    .local v14, sign:C
    move v11, v13

    .line 543
    .end local v13           #offset:I
    .local v11, offset:I
    goto/16 :goto_32

    .line 413
    .end local v12           #nextState:I
    :cond_c3
    const/16 v9, 0xd

    goto/16 :goto_3d

    .line 433
    .local v9, nextState:I
    .local v11, next:I
    .restart local v13       #offset:I
    :cond_c7
    const/16 v12, 0x30

    if-gt v12, v11, :cond_d2

    const/16 v12, 0x39

    if-gt v11, v12, :cond_d2

    .line 434
    const/4 v9, 0x2

    move v12, v9

    .end local v9           #nextState:I
    .restart local v12       #nextState:I
    goto :goto_65

    .line 435
    .end local v12           #nextState:I
    .restart local v9       #nextState:I
    :cond_d2
    invoke-static {v11}, Ljava/lang/Character;->isSpace(C)Z

    move-result v12

    if-nez v12, :cond_36d

    const-string v12, ",+-:/"

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/16 v16, -0x1

    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_36d

    .line 436
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .end local v18           #zone:Z
    .local v9, digit:I
    .restart local v12       #nextState:I
    .local v15, zone:Z
    .restart local p0
    :cond_eb
    move v14, v9

    .line 445
    goto :goto_8b

    .line 448
    .end local v15           #zone:Z
    .restart local v18       #zone:Z
    :cond_ed
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 450
    .restart local p0
    :cond_f3
    const/16 v15, 0x46

    if-lt v9, v15, :cond_121

    .line 451
    const/4 v15, -0x1

    move/from16 v0, v17

    move v1, v15

    if-ne v0, v1, :cond_11b

    invoke-static {v11}, Ljava/lang/Character;->isSpace(C)Z

    move-result v15

    if-nez v15, :cond_10f

    const/16 v15, 0x2c

    if-eq v11, v15, :cond_10f

    const/16 v15, 0x2f

    if-eq v11, v15, :cond_10f

    const/16 v15, 0xd

    if-ne v11, v15, :cond_11b

    .line 454
    :cond_10f
    move v9, v9

    .end local v17           #year:I
    .local v9, year:I
    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move/from16 v21, v9

    .end local v9           #year:I
    .local v21, year:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v21

    .end local v21           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 456
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_11b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 458
    .restart local p0
    :cond_121
    const/16 v15, 0x3a

    if-ne v11, v15, :cond_145

    .line 459
    const/4 v15, -0x1

    if-ne v5, v15, :cond_132

    .line 460
    move v5, v9

    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 461
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_132
    const/4 v15, -0x1

    if-ne v6, v15, :cond_13f

    .line 462
    move v6, v9

    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 464
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_13f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 466
    .restart local p0
    :cond_145
    const/16 v15, 0x2f

    if-ne v11, v15, :cond_16b

    .line 467
    const/4 v15, -0x1

    if-ne v3, v15, :cond_158

    .line 468
    const/4 v3, 0x1

    sub-int v3, v9, v3

    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 469
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_158
    const/4 v15, -0x1

    if-ne v4, v15, :cond_165

    .line 470
    move v4, v9

    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 472
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_165
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 474
    .restart local p0
    :cond_16b
    invoke-static {v11}, Ljava/lang/Character;->isSpace(C)Z

    move-result v15

    if-nez v15, :cond_17d

    const/16 v15, 0x2c

    if-eq v11, v15, :cond_17d

    const/16 v15, 0x2d

    if-eq v11, v15, :cond_17d

    const/16 v15, 0xd

    if-ne v11, v15, :cond_1c2

    .line 476
    :cond_17d
    const/4 v15, -0x1

    if-eq v5, v15, :cond_18d

    const/4 v15, -0x1

    if-ne v6, v15, :cond_18d

    .line 477
    move v6, v9

    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 478
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_18d
    const/4 v15, -0x1

    if-eq v6, v15, :cond_19d

    const/4 v15, -0x1

    if-ne v7, v15, :cond_19d

    .line 479
    move v7, v9

    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 480
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_19d
    const/4 v15, -0x1

    if-ne v4, v15, :cond_1aa

    .line 481
    move v4, v9

    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 482
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_1aa
    const/4 v15, -0x1

    move/from16 v0, v17

    move v1, v15

    if-ne v0, v1, :cond_1bc

    .line 483
    move v9, v9

    .end local v17           #year:I
    .local v9, year:I
    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move/from16 v21, v9

    .end local v9           #year:I
    .restart local v21       #year:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v21

    .end local v21           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 485
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_1bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 487
    .restart local p0
    :cond_1c2
    const/4 v15, -0x1

    move/from16 v0, v17

    move v1, v15

    if-ne v0, v1, :cond_1da

    const/4 v15, -0x1

    if-eq v3, v15, :cond_1da

    const/4 v15, -0x1

    if-eq v4, v15, :cond_1da

    .line 488
    move v9, v9

    .end local v17           #year:I
    .local v9, year:I
    move/from16 v15, v18

    .end local v18           #zone:Z
    .restart local v15       #zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move/from16 v21, v9

    .end local v9           #year:I
    .restart local v21       #year:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v21

    .end local v21           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 490
    .end local v15           #zone:Z
    .end local v16           #zoneOffset:I
    .local v9, digit:I
    .local v14, sign:C
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_1da
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 492
    .end local v9           #digit:I
    .local v15, state:I
    .restart local p0
    :cond_1e0
    const/4 v9, 0x1

    if-ne v15, v9, :cond_364

    const/4 v9, 0x1

    if-eq v12, v9, :cond_364

    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 494
    .local v15, text:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 495
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v16, 0x1

    move v0, v9

    move/from16 v1, v16

    if-ne v0, v1, :cond_203

    .line 496
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 498
    .restart local p0
    :cond_203
    const-string v9, "AM"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_226

    .line 499
    const/16 v9, 0xc

    if-ne v5, v9, :cond_219

    .line 500
    const/4 v5, 0x0

    move/from16 v15, v18

    .end local v18           #zone:Z
    .local v15, zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 501
    .end local v9           #sign:C
    .end local v16           #zoneOffset:I
    .local v14, sign:C
    .local v15, text:Ljava/lang/String;
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_219
    const/4 v9, 0x1

    if-lt v5, v9, :cond_220

    const/16 v9, 0xc

    if-le v5, v9, :cond_364

    .line 502
    :cond_220
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 504
    .restart local p0
    :cond_226
    const-string v9, "PM"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24b

    .line 505
    const/16 v9, 0xc

    if-ne v5, v9, :cond_23e

    .line 506
    const/4 v5, 0x0

    .line 510
    :cond_233
    add-int/lit8 v5, v5, 0xc

    move/from16 v15, v18

    .end local v18           #zone:Z
    .local v15, zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .restart local v9       #sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 507
    .end local v9           #sign:C
    .end local v16           #zoneOffset:I
    .local v14, sign:C
    .local v15, text:Ljava/lang/String;
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_23e
    const/4 v9, 0x1

    if-lt v5, v9, :cond_245

    const/16 v9, 0xc

    if-le v5, v9, :cond_233

    .line 508
    :cond_245
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 512
    .restart local p0
    :cond_24b
    new-instance v9, Ljava/text/DateFormatSymbols;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 513
    .local v9, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v9}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v16

    .local v16, weekdays:[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v9

    .line 516
    .local v9, months:[Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .end local v16           #weekdays:[Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_272

    move/from16 v15, v18

    .end local v18           #zone:Z
    .local v15, zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .local v16, zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 517
    .end local v16           #zoneOffset:I
    .local v9, months:[Ljava/lang/String;
    .local v14, sign:C
    .local v15, text:Ljava/lang/String;
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_272
    const/16 v16, -0x1

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_289

    invoke-static {v15, v9}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_289

    .end local v9           #months:[Ljava/lang/String;
    move/from16 v15, v18

    .end local v18           #zone:Z
    .local v15, zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 519
    .end local v9           #sign:C
    .end local v16           #zoneOffset:I
    .local v14, sign:C
    .local v15, text:Ljava/lang/String;
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_289
    const-string v9, "GMT"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a1

    const-string v9, "UT"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a1

    const-string v9, "UTC"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2ab

    .line 521
    :cond_2a1
    const/4 v9, 0x1

    .line 522
    .end local v18           #zone:Z
    .local v9, zone:Z
    const/4 v15, 0x0

    .end local v19           #zoneOffset:I
    .local v15, zoneOffset:I
    move/from16 v16, v15

    .end local v15           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v15, v9

    .end local v9           #zone:Z
    .local v15, zone:Z
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 523
    .end local v9           #sign:C
    .end local v16           #zoneOffset:I
    .local v14, sign:C
    .local v15, text:Ljava/lang/String;
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_2ab
    invoke-static {v15}, Ljava/util/Date;->zone(Ljava/lang/String;)I

    move-result v9

    .local v9, value:I
    if-eqz v9, :cond_2ba

    .line 524
    const/4 v15, 0x1

    .line 525
    .end local v18           #zone:Z
    .local v15, zone:Z
    move v9, v9

    .end local v19           #zoneOffset:I
    .local v9, zoneOffset:I
    move/from16 v16, v9

    .end local v9           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .local v9, sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .line 527
    .end local v16           #zoneOffset:I
    .local v9, value:I
    .local v14, sign:C
    .local v15, text:Ljava/lang/String;
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_2ba
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 534
    .end local v17           #year:I
    .end local v18           #zone:Z
    .end local v19           #zoneOffset:I
    .local v9, sign:C
    .local v14, year:I
    .local v15, zone:Z
    .restart local v16       #zoneOffset:I
    .restart local p0
    :cond_2c0
    invoke-static {v11}, Ljava/lang/Character;->isSpace(C)Z

    move-result v17

    if-nez v17, :cond_a6

    const/16 v17, 0x2c

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_a6

    const/16 v17, 0x2

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_a6

    .line 536
    const/4 v9, 0x0

    goto/16 :goto_a6

    .line 545
    .end local v9           #sign:C
    .end local v12           #nextState:I
    .end local v13           #offset:I
    .end local v16           #zoneOffset:I
    .local v11, offset:I
    .local v14, sign:C
    .local v15, state:I
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_2d7
    const/16 p0, -0x1

    move/from16 v0, v17

    move/from16 v1, p0

    if-eq v0, v1, :cond_35b

    .end local p0
    const/16 p0, -0x1

    move v0, v3

    move/from16 v1, p0

    if-eq v0, v1, :cond_35b

    const/16 p0, -0x1

    move v0, v4

    move/from16 v1, p0

    if-eq v0, v1, :cond_35b

    .line 546
    const/16 p0, -0x1

    move v0, v5

    move/from16 v1, p0

    if-ne v0, v1, :cond_2f5

    .line 547
    const/4 v5, 0x0

    .line 549
    :cond_2f5
    const/16 p0, -0x1

    move v0, v6

    move/from16 v1, p0

    if-ne v0, v1, :cond_2fd

    .line 550
    const/4 v6, 0x0

    .line 552
    :cond_2fd
    const/16 p0, -0x1

    move v0, v7

    move/from16 v1, p0

    if-ne v0, v1, :cond_305

    .line 553
    const/4 v7, 0x0

    .line 555
    :cond_305
    sget p0, Ljava/util/Date;->creationYear:I

    const/16 v2, 0x50

    sub-int p0, p0, v2

    move/from16 v0, v17

    move/from16 v1, p0

    if-ge v0, v1, :cond_336

    .line 556
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x7d0

    move/from16 p0, v0

    .line 560
    .end local v17           #year:I
    .local p0, year:I
    :goto_317
    if-eqz v18, :cond_348

    .line 561
    const/16 v2, 0x18

    move/from16 v0, v19

    move v1, v2

    if-ge v0, v1, :cond_327

    const/16 v2, -0x18

    move/from16 v0, v19

    move v1, v2

    if-gt v0, v1, :cond_345

    .line 562
    :cond_327
    div-int/lit8 v2, v19, 0x64

    sub-int/2addr v5, v2

    .line 563
    rem-int/lit8 v2, v19, 0x64

    sub-int/2addr v6, v2

    .line 567
    :goto_32d
    const/16 v2, 0x76c

    sub-int v2, p0, v2

    invoke-static/range {v2 .. v7}, Ljava/util/Date;->UTC(IIIIII)J

    move-result-wide v2

    .line 569
    .end local v8           #commentLevel:I
    .end local v10           #length:I
    .end local v11           #offset:I
    .end local v14           #sign:C
    :goto_335
    return-wide v2

    .line 557
    .end local p0           #year:I
    .restart local v8       #commentLevel:I
    .restart local v10       #length:I
    .restart local v11       #offset:I
    .restart local v14       #sign:C
    .restart local v17       #year:I
    :cond_336
    const/16 p0, 0x64

    move/from16 v0, v17

    move/from16 v1, p0

    if-ge v0, v1, :cond_361

    .line 558
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x76c

    move/from16 p0, v0

    .end local v17           #year:I
    .restart local p0       #year:I
    goto :goto_317

    .line 565
    :cond_345
    sub-int v5, v5, v19

    goto :goto_32d

    .line 569
    :cond_348
    new-instance v8, Ljava/util/Date;

    .end local v8           #commentLevel:I
    const/16 v2, 0x76c

    sub-int v9, p0, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v14}, Ljava/util/Date;-><init>(IIIIII)V

    .end local v10           #length:I
    .end local v11           #offset:I
    .end local v14           #sign:C
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_335

    .line 572
    .end local p0           #year:I
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    .restart local v8       #commentLevel:I
    .restart local v10       #length:I
    .restart local v11       #offset:I
    .restart local v14       #sign:C
    .restart local v17       #year:I
    :cond_35b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .end local v2           #buffer:Ljava/lang/StringBuffer;
    :cond_361
    move/from16 p0, v17

    .end local v17           #year:I
    .restart local p0       #year:I
    goto :goto_317

    .end local v15           #state:I
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    .local v11, next:I
    .restart local v12       #nextState:I
    .restart local v13       #offset:I
    .restart local v17       #year:I
    .local p0, string:Ljava/lang/String;
    :cond_364
    move/from16 v15, v18

    .end local v18           #zone:Z
    .local v15, zone:Z
    move/from16 v16, v19

    .end local v19           #zoneOffset:I
    .restart local v16       #zoneOffset:I
    move v9, v14

    .end local v14           #sign:C
    .restart local v9       #sign:C
    move/from16 v14, v17

    .end local v17           #year:I
    .local v14, year:I
    goto/16 :goto_90

    .end local v12           #nextState:I
    .end local v16           #zoneOffset:I
    .local v9, nextState:I
    .local v14, sign:C
    .local v15, state:I
    .restart local v17       #year:I
    .restart local v18       #zone:Z
    .restart local v19       #zoneOffset:I
    :cond_36d
    move v12, v9

    .end local v9           #nextState:I
    .restart local v12       #nextState:I
    goto/16 :goto_65

    .end local v11           #next:I
    .end local v12           #nextState:I
    .local v9, next:C
    :cond_370
    move v11, v13

    .end local v13           #offset:I
    .local v11, offset:I
    goto/16 :goto_32

    .end local v11           #offset:I
    .restart local v13       #offset:I
    :cond_373
    move v11, v9

    .local v11, next:I
    goto/16 :goto_52
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 801
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 802
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 795
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 796
    return-void
.end method

.method private static zone(Ljava/lang/String;)I
    .registers 5
    .parameter "text"

    .prologue
    const/4 v3, -0x5

    const/4 v2, -0x6

    const/4 v1, -0x7

    .line 766
    const-string v0, "EST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    .line 790
    :goto_c
    return v0

    .line 769
    :cond_d
    const-string v0, "EDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 770
    const/4 v0, -0x4

    goto :goto_c

    .line 772
    :cond_17
    const-string v0, "CST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    .line 773
    goto :goto_c

    .line 775
    :cond_21
    const-string v0, "CDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v3

    .line 776
    goto :goto_c

    .line 778
    :cond_2b
    const-string v0, "MST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v1

    .line 779
    goto :goto_c

    .line 781
    :cond_35
    const-string v0, "MDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v2

    .line 782
    goto :goto_c

    .line 784
    :cond_3f
    const-string v0, "PST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 785
    const/4 v0, -0x8

    goto :goto_c

    .line 787
    :cond_49
    const-string v0, "PDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    .line 788
    goto :goto_c

    .line 790
    :cond_53
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .registers 6
    .parameter "date"

    .prologue
    .line 171
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public before(Ljava/util/Date;)Z
    .registers 6
    .parameter "date"

    .prologue
    .line 184
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 198
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 200
    :goto_4
    return-object v1

    .line 199
    :catch_5
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .registers 6
    .parameter "date"

    .prologue
    .line 215
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 216
    const/4 v0, -0x1

    .line 221
    :goto_9
    return v0

    .line 218
    :cond_a
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 219
    const/4 v0, 0x0

    goto :goto_9

    .line 221
    :cond_14
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 239
    if-eq p1, p0, :cond_10

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    check-cast p1, Ljava/util/Date;

    .end local p1
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getDate()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDay()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHours()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 329
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    return-wide v0
.end method

.method public getTimezoneOffset()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 344
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    const v2, 0xea60

    div-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0x76c

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 371
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setDate(I)V
    .registers 5
    .parameter "day"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 587
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 588
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 589
    return-void
.end method

.method public setHours(I)V
    .registers 5
    .parameter "hour"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 603
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 604
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 605
    return-void
.end method

.method public setMinutes(I)V
    .registers 5
    .parameter "minute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 619
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 620
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 621
    return-void
.end method

.method public setMonth(I)V
    .registers 5
    .parameter "month"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 634
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 635
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 636
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 637
    return-void
.end method

.method public setSeconds(I)V
    .registers 5
    .parameter "second"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 651
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 652
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 653
    return-void
.end method

.method public setTime(J)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 664
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    .line 665
    return-void
.end method

.method public setYear(I)V
    .registers 5
    .parameter "year"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 678
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 679
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    add-int/lit16 v2, p1, 0x76c

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 680
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Date;->milliseconds:J

    .line 681
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 694
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "d MMM "

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 695
    .local v0, format1:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, " HH:mm:ss \'GMT\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 697
    .local v1, format2:Ljava/text/SimpleDateFormat;
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 698
    .local v3, gmtZone:Ljava/util/TimeZone;
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 699
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 700
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 701
    .local v2, gc:Ljava/util/GregorianCalendar;
    iget-wide v4, p0, Ljava/util/Date;->milliseconds:J

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toLocaleString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E MMM dd HH:mm:ss z "

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
