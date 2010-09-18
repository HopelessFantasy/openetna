.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field private static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZ"

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1352
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 354
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 355
    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 356
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 357
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 4
    .parameter "template"
    .parameter "value"

    .prologue
    .line 389
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 390
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 391
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 392
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 393
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 409
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 410
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 411
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 413
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .registers 5
    .parameter "locale"

    .prologue
    const/4 v2, 0x1

    .line 415
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 416
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 417
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 418
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 419
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 420
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 421
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 422
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 423
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V
    .registers 22
    .parameter "buffer"
    .parameter "position"
    .parameter
    .parameter "format"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/FieldPosition;>;"
    const/4 v7, -0x1

    .line 428
    .local v7, field:I
    const-string v13, "GyMdkHmsSEDFwWahKzZ"

    move-object v0, v13

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 429
    .local v9, index:I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_1c

    .line 431
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "text.03"

    move-object v0, v14

    move/from16 v1, p4

    invoke-static {v0, v1}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 435
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 436
    .local v4, beginPosition:I
    const/4 v5, 0x0

    .line 438
    .local v5, dateFormatField:Ljava/text/DateFormat$Field;
    packed-switch v9, :pswitch_data_20e

    .line 536
    :goto_24
    const/4 v13, -0x1

    if-eq v7, v13, :cond_3a

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 540
    :cond_3a
    if-eqz p3, :cond_1e3

    .line 541
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 542
    .restart local p2
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 543
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 544
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_5b
    :goto_5b
    return-void

    .line 440
    :pswitch_5c
    sget-object v5, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v13, v0

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    aget-object v13, v13, v14

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 444
    :pswitch_78
    sget-object v5, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 446
    .local v12, year:I
    const/4 v13, 0x4

    move/from16 v0, p5

    move v1, v13

    if-ge v0, v1, :cond_97

    .line 447
    const/4 v13, 0x2

    rem-int/lit8 v12, v12, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_24

    .line 449
    :cond_97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_24

    .line 453
    .end local v12           #year:I
    :pswitch_a2
    sget-object v5, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v13, v0

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 455
    .local v10, month:I
    const/4 v13, 0x2

    move/from16 v0, p5

    move v1, v13

    if-gt v0, v1, :cond_c2

    .line 456
    add-int/lit8 v13, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_24

    .line 457
    :cond_c2
    const/4 v13, 0x3

    move/from16 v0, p5

    move v1, v13

    if-ne v0, v1, :cond_d9

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v13, v0

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    aget-object v13, v13, v10

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 460
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v13, v0

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    aget-object v13, v13, v10

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 464
    .end local v10           #month:I
    :pswitch_ea
    sget-object v5, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 465
    const/4 v7, 0x5

    .line 466
    goto/16 :goto_24

    .line 468
    :pswitch_ef
    sget-object v5, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v13, v0

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 470
    .local v8, hour:I
    if-nez v8, :cond_10c

    const/16 v13, 0x18

    :goto_100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_24

    :cond_10c
    move v13, v8

    goto :goto_100

    .line 473
    .end local v8           #hour:I
    :pswitch_10e
    sget-object v5, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 474
    const/16 v7, 0xb

    .line 475
    goto/16 :goto_24

    .line 477
    :pswitch_114
    sget-object v5, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 478
    const/16 v7, 0xc

    .line 479
    goto/16 :goto_24

    .line 481
    :pswitch_11a
    sget-object v5, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 482
    const/16 v7, 0xd

    .line 483
    goto/16 :goto_24

    .line 485
    :pswitch_120
    sget-object v5, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v13, v0

    const/16 v14, 0xe

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 487
    .local v11, value:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_24

    .line 490
    .end local v11           #value:I
    :pswitch_139
    sget-object v5, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v13, v0

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 492
    .local v6, day:I
    const/4 v13, 0x4

    move/from16 v0, p5

    move v1, v13

    if-ge v0, v1, :cond_15c

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v13, v0

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    aget-object v13, v13, v6

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 495
    :cond_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v13, v0

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    aget-object v13, v13, v6

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 499
    .end local v6           #day:I
    :pswitch_16d
    sget-object v5, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 500
    const/4 v7, 0x6

    .line 501
    goto/16 :goto_24

    .line 503
    :pswitch_172
    sget-object v5, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 504
    const/16 v7, 0x8

    .line 505
    goto/16 :goto_24

    .line 507
    :pswitch_178
    sget-object v5, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 508
    const/4 v7, 0x3

    .line 509
    goto/16 :goto_24

    .line 511
    :pswitch_17d
    sget-object v5, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 512
    const/4 v7, 0x4

    .line 513
    goto/16 :goto_24

    .line 515
    :pswitch_182
    sget-object v5, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v13, v0

    iget-object v13, v13, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v14, v0

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    aget-object v13, v13, v14

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 519
    :pswitch_1a0
    sget-object v5, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v13, v0

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 521
    .restart local v8       #hour:I
    if-nez v8, :cond_1bd

    const/16 v13, 0xc

    :goto_1b1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_24

    :cond_1bd
    move v13, v8

    goto :goto_1b1

    .line 524
    .end local v8           #hour:I
    :pswitch_1bf
    sget-object v5, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 525
    const/16 v7, 0xa

    .line 526
    goto/16 :goto_24

    .line 528
    :pswitch_1c5
    sget-object v5, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 529
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_24

    .line 532
    :pswitch_1d4
    sget-object v5, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 533
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_24

    .line 547
    :cond_1e3
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v13

    if-eq v13, v5, :cond_1f5

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v13

    if-nez v13, :cond_5b

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v13

    if-ne v13, v9, :cond_5b

    :cond_1f5
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v13

    if-nez v13, :cond_5b

    .line 550
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_5b

    .line 438
    nop

    :pswitch_data_20e
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_78
        :pswitch_a2
        :pswitch_ea
        :pswitch_ef
        :pswitch_10e
        :pswitch_114
        :pswitch_11a
        :pswitch_120
        :pswitch_139
        :pswitch_16d
        :pswitch_172
        :pswitch_178
        :pswitch_17d
        :pswitch_182
        :pswitch_1a0
        :pswitch_1bf
        :pswitch_1c5
        :pswitch_1d4
    .end packed-switch
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .registers 9
    .parameter "buffer"
    .parameter "count"
    .parameter "value"

    .prologue
    .line 609
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 610
    .local v0, minimumIntegerDigits:I
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 611
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 612
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 613
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .registers 17
    .parameter "buffer"
    .parameter "count"
    .parameter "generalTimezone"

    .prologue
    .line 561
    if-eqz p3, :cond_88

    .line 562
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, id:Ljava/lang/String;
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v9

    .line 566
    .local v9, zones:[[Ljava/lang/String;
    const/4 v8, 0x0

    .line 567
    .local v8, zone:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_16
    if-ge v3, v5, :cond_24

    aget-object v2, v0, v3

    .line 568
    .local v2, element:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 569
    move-object v8, v2

    .line 573
    .end local v2           #element:[Ljava/lang/String;
    :cond_24
    if-nez v8, :cond_66

    .line 574
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v6, v10, v11

    .line 576
    .local v6, offset:I
    const/16 v7, 0x2b

    .line 577
    .local v7, sign:C
    if-gez v6, :cond_3f

    .line 578
    const/16 v7, 0x2d

    .line 579
    neg-int v6, v6

    .line 581
    :cond_3f
    const-string v10, "GMT"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 583
    const/4 v10, 0x2

    const v11, 0x36ee80

    div-int v11, v6, v11

    invoke-direct {p0, p1, v10, v11}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 584
    const/16 v10, 0x3a

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 585
    const/4 v10, 0x2

    const v11, 0x36ee80

    rem-int v11, v6, v11

    const v12, 0xea60

    div-int/2addr v11, v12

    invoke-direct {p0, p1, v10, v11}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 606
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #offset:I
    .end local v7           #sign:C
    .end local v8           #zone:[Ljava/lang/String;
    .end local v9           #zones:[[Ljava/lang/String;
    :goto_62
    return-void

    .line 567
    .restart local v0       #arr$:[[Ljava/lang/String;
    .restart local v2       #element:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #id:Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v8       #zone:[Ljava/lang/String;
    .restart local v9       #zones:[[Ljava/lang/String;
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 587
    .end local v2           #element:[Ljava/lang/String;
    :cond_66
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_7d

    const/4 v10, 0x0

    move v1, v10

    .line 588
    .local v1, daylight:I
    :goto_72
    const/4 v10, 0x4

    if-ge p2, v10, :cond_80

    .line 589
    add-int/lit8 v10, v1, 0x2

    aget-object v10, v8, v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_62

    .line 587
    .end local v1           #daylight:I
    :cond_7d
    const/4 v10, 0x2

    move v1, v10

    goto :goto_72

    .line 591
    .restart local v1       #daylight:I
    :cond_80
    add-int/lit8 v10, v1, 0x1

    aget-object v10, v8, v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_62

    .line 595
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #daylight:I
    .end local v3           #i$:I
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v8           #zone:[Ljava/lang/String;
    .end local v9           #zones:[[Ljava/lang/String;
    :cond_88
    iget-object v10, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v6, v10, v11

    .line 597
    .restart local v6       #offset:I
    const/16 v7, 0x2b

    .line 598
    .restart local v7       #sign:C
    if-gez v6, :cond_a1

    .line 599
    const/16 v7, 0x2d

    .line 600
    neg-int v6, v6

    .line 602
    :cond_a1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 603
    const/4 v10, 0x2

    const v11, 0x36ee80

    div-int v11, v6, v11

    invoke-direct {p0, p1, v10, v11}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 604
    const/4 v10, 0x2

    const v11, 0x36ee80

    rem-int v11, v6, v11

    const v12, 0xea60

    div-int/2addr v11, v12

    invoke-direct {p0, p1, v10, v11}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_62
.end method

.method private static defaultPattern()Ljava/lang/String;
    .registers 5

    .prologue
    .line 660
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 661
    .local v0, bundle:Ljava/util/ResourceBundle;
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getStyleName(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, styleName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .registers 5
    .parameter "position"
    .parameter "offset"
    .parameter "zone"

    .prologue
    .line 693
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 694
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 695
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;
    .registers 16
    .parameter "date"
    .parameter "buffer"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/Vector",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 886
    .local p4, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 887
    .local v10, quote:Z
    const/4 v7, -0x1

    .local v7, last:I
    const/4 v5, 0x0

    .line 888
    .local v5, count:I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 889
    if-eqz p3, :cond_d

    .line 890
    invoke-virtual {p3}, Ljava/text/FieldPosition;->clear()V

    .line 893
    :cond_d
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 894
    .local v9, patternLength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_14
    if-ge v6, v9, :cond_76

    .line 895
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 896
    .local v8, next:I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_3f

    .line 897
    if-lez v5, :cond_2b

    .line 898
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 899
    const/4 v5, 0x0

    .line 901
    :cond_2b
    if-ne v7, v8, :cond_3a

    .line 902
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 903
    const/4 v7, -0x1

    .line 907
    :goto_33
    if-nez v10, :cond_3c

    const/4 v0, 0x1

    move v10, v0

    .line 894
    :goto_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 905
    :cond_3a
    move v7, v8

    goto :goto_33

    .line 907
    :cond_3c
    const/4 v0, 0x0

    move v10, v0

    goto :goto_37

    .line 910
    :cond_3f
    if-nez v10, :cond_65

    if-eq v7, v8, :cond_53

    const/16 v0, 0x61

    if-lt v8, v0, :cond_4b

    const/16 v0, 0x7a

    if-le v8, v0, :cond_53

    :cond_4b
    const/16 v0, 0x41

    if-lt v8, v0, :cond_65

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_65

    .line 912
    :cond_53
    if-ne v7, v8, :cond_58

    .line 913
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 915
    :cond_58
    if-lez v5, :cond_62

    .line 916
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 918
    :cond_62
    move v7, v8

    .line 919
    const/4 v5, 0x1

    goto :goto_37

    .line 922
    :cond_65
    if-lez v5, :cond_70

    .line 923
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 924
    const/4 v5, 0x0

    .line 926
    :cond_70
    const/4 v7, -0x1

    .line 927
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 930
    .end local v8           #next:I
    :cond_76
    if-lez v5, :cond_80

    .line 931
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;CI)V

    .line 933
    :cond_80
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .registers 10
    .parameter "date"

    .prologue
    .line 728
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 729
    .local v2, buffer:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 732
    .local v3, fields:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    .line 735
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, as:Ljava/text/AttributedString;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_36

    .line 739
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 740
    .local v5, pos:Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 741
    .local v1, attribute:Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 738
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 746
    .end local v1           #attribute:Ljava/text/Format$Field;
    .end local v5           #pos:Ljava/text/FieldPosition;
    :cond_36
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .registers 22
    .parameter "string"
    .parameter "offset"
    .parameter "format"
    .parameter "count"

    .prologue
    .line 965
    const-string v5, "GyMdkHmsSEDFwWahKzZ"

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 966
    .local v13, index:I
    const/4 v5, -0x1

    if-ne v13, v5, :cond_1b

    .line 968
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "text.03"

    move-object v0, v6

    move/from16 v1, p3

    invoke-static {v0, v1}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 971
    :cond_1b
    const/4 v11, -0x1

    .line 972
    .local v11, field:I
    const/4 v6, 0x0

    .line 973
    .local v6, absolute:I
    if-gez p4, :cond_26

    .line 974
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 975
    move/from16 v6, p4

    .line 977
    :cond_26
    packed-switch v13, :pswitch_data_1e2

    move v9, v11

    .line 1083
    .end local v11           #field:I
    .local v9, field:I
    :goto_2a
    const/4 v5, -0x1

    if-eq v9, v5, :cond_1de

    .line 1084
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v5

    .line 1086
    .end local v6           #absolute:I
    :goto_38
    return v5

    .line 979
    .end local v9           #field:I
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    .end local v6           #absolute:I
    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto :goto_38

    .line 981
    .end local v9           #field:I
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_4f
    const/4 v5, 0x3

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_57

    .line 982
    const/4 v9, 0x1

    .end local v11           #field:I
    .restart local v9       #field:I
    goto :goto_2a

    .line 984
    .end local v9           #field:I
    .restart local v11       #field:I
    :cond_57
    new-instance v14, Ljava/text/ParsePosition;

    move-object v0, v14

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 985
    .local v14, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 986
    .local v15, result:Ljava/lang/Number;
    if-nez v15, :cond_74

    .line 987
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto :goto_38

    .line 989
    .end local v9           #field:I
    .restart local v11       #field:I
    :cond_74
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 991
    .local v16, year:I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int v5, v5, p2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9a

    .end local v6           #absolute:I
    if-ltz v16, :cond_9a

    .line 992
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move v5, v0

    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v5, v5, 0x64

    add-int v16, v16, v5

    .line 993
    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_9a

    .line 994
    add-int/lit8 v16, v16, 0x64

    .line 997
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 998
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto :goto_38

    .line 1002
    .end local v9           #field:I
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    .end local v16           #year:I
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_ad
    const/4 v5, 0x2

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_c2

    .line 1003
    const/4 v9, 0x2

    const/4 v10, -0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .line 1006
    .end local v9           #field:I
    .restart local v11       #field:I
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    .end local v6           #absolute:I
    move-result v13

    .line 1008
    if-gez v13, :cond_ef

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .end local v9           #field:I
    .restart local v11       #field:I
    :cond_ef
    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    move v5, v13

    .line 1012
    goto/16 :goto_38

    .line 1014
    .end local v9           #field:I
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_f3
    const/4 v9, 0x5

    .line 1015
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1017
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_f6
    new-instance v14, Ljava/text/ParsePosition;

    move-object v0, v14

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1018
    .restart local v14       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1019
    .restart local v15       #result:Ljava/lang/Number;
    if-nez v15, :cond_114

    .line 1020
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .line 1022
    .end local v9           #field:I
    .restart local v11       #field:I
    :cond_114
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1023
    .local v12, hour:I
    const/16 v5, 0x18

    if-ne v12, v5, :cond_11d

    .line 1024
    const/4 v12, 0x0

    .line 1026
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 1027
    .end local v6           #absolute:I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .line 1029
    .end local v9           #field:I
    .end local v12           #hour:I
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_12e
    const/16 v9, 0xb

    .line 1030
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1032
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_132
    const/16 v9, 0xc

    .line 1033
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1035
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_136
    const/16 v9, 0xd

    .line 1036
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1038
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_13a
    const/16 v9, 0xe

    .line 1039
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1041
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    .end local v6           #absolute:I
    move-result v13

    .line 1043
    if-gez v13, :cond_16b

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .end local v9           #field:I
    .restart local v11       #field:I
    :cond_16b
    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    move v5, v13

    .line 1047
    goto/16 :goto_38

    .line 1049
    .end local v9           #field:I
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_16f
    const/4 v9, 0x6

    .line 1050
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1052
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_172
    const/16 v9, 0x8

    .line 1053
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1055
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_176
    const/4 v9, 0x3

    .line 1056
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1058
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_179
    const/4 v9, 0x4

    .line 1059
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1061
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    iget-object v5, v5, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    .end local v6           #absolute:I
    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .line 1064
    .end local v9           #field:I
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_194
    new-instance v14, Ljava/text/ParsePosition;

    move-object v0, v14

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1065
    .restart local v14       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 1066
    .restart local v15       #result:Ljava/lang/Number;
    if-nez v15, :cond_1b2

    .line 1067
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .line 1069
    .end local v9           #field:I
    .restart local v11       #field:I
    :cond_1b2
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1070
    .restart local v12       #hour:I
    const/16 v5, 0xc

    if-ne v12, v5, :cond_1bb

    .line 1071
    const/4 v12, 0x0

    .line 1073
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 1074
    .end local v6           #absolute:I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .line 1076
    .end local v9           #field:I
    .end local v12           #hour:I
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    .restart local v6       #absolute:I
    .restart local v11       #field:I
    :pswitch_1cc
    const/16 v9, 0xa

    .line 1077
    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_2a

    .line 1079
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_1d0
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    .line 1081
    .end local v9           #field:I
    .restart local v11       #field:I
    :pswitch_1d7
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result v5

    move v9, v11

    .end local v11           #field:I
    .restart local v9       #field:I
    goto/16 :goto_38

    :cond_1de
    move/from16 v5, p2

    .line 1086
    goto/16 :goto_38

    .line 977
    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_39
        :pswitch_4f
        :pswitch_ad
        :pswitch_f3
        :pswitch_f6
        :pswitch_12e
        :pswitch_132
        :pswitch_136
        :pswitch_13a
        :pswitch_13e
        :pswitch_16f
        :pswitch_172
        :pswitch_176
        :pswitch_179
        :pswitch_17c
        :pswitch_194
        :pswitch_1cc
        :pswitch_1d0
        :pswitch_1d7
    .end packed-switch
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .registers 10
    .parameter "max"
    .parameter "string"
    .parameter "offset"
    .parameter "field"
    .parameter "skew"

    .prologue
    .line 1213
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1214
    .local v0, position:Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 1215
    .local v1, result:Ljava/lang/Number;
    if-nez v1, :cond_13

    .line 1216
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1219
    :goto_12
    return v2

    .line 1218
    :cond_13
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1219
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_12
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 10
    .parameter "max"
    .parameter "string"
    .parameter "position"

    .prologue
    .line 1184
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 1185
    .local v3, result:I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1186
    .local v1, index:I
    if-lez p1, :cond_11

    sub-int v4, v2, v1

    if-ge p1, v4, :cond_11

    .line 1187
    add-int v2, v1, p1

    .line 1190
    :cond_11
    :goto_11
    if-ge v1, v2, :cond_26

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_23

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_26

    .line 1191
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1193
    :cond_26
    if-nez p1, :cond_32

    .line 1194
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1195
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 1208
    :goto_31
    return-object v4

    .line 1199
    :cond_32
    :goto_32
    if-ge v1, v2, :cond_48

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_48

    .line 1200
    add-int/lit8 v1, v1, 0x1

    .line 1201
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_32

    .line 1203
    .end local v0           #digit:I
    :cond_48
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_53

    .line 1204
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1205
    const/4 v4, 0x0

    goto :goto_31

    .line 1207
    :cond_53
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1208
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_31
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 14
    .parameter "string"
    .parameter "offset"
    .parameter "text"
    .parameter "field"

    .prologue
    const/4 v1, 0x1

    const/4 v8, -0x1

    .line 1223
    const/4 v6, -0x1

    .line 1224
    .local v6, found:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    array-length v0, p3

    if-ge v7, v0, :cond_35

    .line 1225
    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 1224
    :cond_f
    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1228
    :cond_12
    aget-object v3, p3, v7

    const/4 v4, 0x0

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1231
    if-eq v6, v8, :cond_33

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v2, p3, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_f

    .line 1232
    :cond_33
    move v6, v7

    goto :goto_f

    .line 1236
    :cond_35
    if-eq v6, v8, :cond_44

    .line 1237
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1238
    aget-object v0, p3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1240
    :goto_43
    return v0

    :cond_44
    neg-int v0, p2

    sub-int/2addr v0, v1

    goto :goto_43
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .registers 29
    .parameter "string"
    .parameter "offset"

    .prologue
    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v25

    .line 1247
    .local v25, zones:[[Ljava/lang/String;
    const-string v5, "GMT"

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v5

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    .line 1248
    .local v13, foundGMT:Z
    if-eqz v13, :cond_1c

    .line 1249
    add-int/lit8 p2, p2, 0x3

    .line 1252
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, p2

    move v1, v5

    if-ge v0, v1, :cond_dd

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .local v23, sign:C
    const/16 v5, 0x2b

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_37

    const/16 v5, 0x2d

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_dd

    .line 1254
    :cond_37
    new-instance v20, Ljava/text/ParsePosition;

    add-int/lit8 v5, p2, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1255
    .local v20, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v22

    .line 1256
    .local v22, result:Ljava/lang/Number;
    if-nez v22, :cond_59

    .line 1257
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 1300
    .end local v20           #position:Ljava/text/ParsePosition;
    .end local v22           #result:Ljava/lang/Number;
    .end local v23           #sign:C
    :goto_58
    return v5

    .line 1259
    .restart local v20       #position:Ljava/text/ParsePosition;
    .restart local v22       #result:Ljava/lang/Number;
    .restart local v23       #sign:C
    :cond_59
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 1260
    .local v14, hour:I
    const v5, 0x36ee80

    mul-int v21, v14, v5

    .line 1261
    .local v21, raw:I
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getIndex()I

    move-result v16

    .line 1262
    .local v16, index:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_ca

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_ca

    .line 1263
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v22

    .line 1265
    if-nez v22, :cond_9b

    .line 1266
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto :goto_58

    .line 1268
    :cond_9b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v19

    .line 1269
    .local v19, minute:I
    const v5, 0xea60

    mul-int v5, v5, v19

    add-int v21, v21, v5

    .line 1273
    .end local v19           #minute:I
    :cond_a6
    :goto_a6
    const/16 v5, 0x2d

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_b2

    .line 1274
    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    .line 1276
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    new-instance v6, Ljava/util/SimpleTimeZone;

    const-string v7, ""

    move-object v0, v6

    move/from16 v1, v21

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1277
    invoke-virtual/range {v20 .. v20}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    goto :goto_58

    .line 1270
    :cond_ca
    const/16 v5, 0x18

    if-lt v14, v5, :cond_a6

    .line 1271
    div-int/lit8 v5, v14, 0x64

    const v6, 0x36ee80

    mul-int/2addr v5, v6

    rem-int/lit8 v6, v14, 0x64

    const v7, 0xea60

    mul-int/2addr v6, v7

    add-int v21, v5, v6

    goto :goto_a6

    .line 1279
    .end local v14           #hour:I
    .end local v16           #index:I
    .end local v20           #position:Ljava/text/ParsePosition;
    .end local v21           #raw:I
    .end local v22           #result:Ljava/lang/Number;
    .end local v23           #sign:C
    :cond_dd
    if-eqz v13, :cond_f1

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move/from16 v5, p2

    .line 1281
    goto/16 :goto_58

    .line 1283
    :cond_f1
    move-object/from16 v11, v25

    .local v11, arr$:[[Ljava/lang/String;
    move-object v0, v11

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_f8
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_164

    aget-object v12, v11, v15

    .line 1284
    .local v12, element:[Ljava/lang/String;
    const/16 v17, 0x1

    .local v17, j:I
    :goto_101
    const/4 v5, 0x5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_161

    .line 1285
    const/4 v6, 0x1

    aget-object v8, v12, v17

    const/4 v9, 0x0

    aget-object v5, v12, v17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 1287
    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1288
    .local v24, zone:Ljava/util/TimeZone;
    if-nez v24, :cond_12c

    .line 1289
    move/from16 v0, p2

    neg-int v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto/16 :goto_58

    .line 1291
    :cond_12c
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v21

    .line 1292
    .restart local v21       #raw:I
    const/4 v5, 0x3

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_141

    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_141

    .line 1293
    const v5, 0x36ee80

    add-int v21, v21, v5

    .line 1295
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move-object v5, v0

    new-instance v6, Ljava/util/SimpleTimeZone;

    const-string v7, ""

    move-object v0, v6

    move/from16 v1, v21

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1296
    aget-object v5, v12, v17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, p2

    goto/16 :goto_58

    .line 1284
    .end local v21           #raw:I
    .end local v24           #zone:Ljava/util/TimeZone;
    :cond_15e
    add-int/lit8 v17, v17, 0x1

    goto :goto_101

    .line 1283
    :cond_161
    add-int/lit8 v15, v15, 0x1

    goto :goto_f8

    .line 1300
    .end local v12           #element:[Ljava/lang/String;
    .end local v17           #j:I
    :cond_164
    move/from16 v0, p2

    neg-int v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    goto/16 :goto_58
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1369
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1370
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1372
    .local v2, version:I
    if-lez v2, :cond_35

    .line 1373
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1377
    .local v0, date:Ljava/util/Date;
    :goto_1a
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1378
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1379
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1380
    return-void

    .line 1375
    .end local v0           #date:Ljava/util/Date;
    :cond_35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_1a
.end method

.method private validateFormat(C)V
    .registers 5
    .parameter "format"

    .prologue
    .line 787
    const-string v1, "GyMdkHmsSEDFwWahKzZ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 788
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 790
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "text.03"

    invoke-static {v2, p1}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_15
    return-void
.end method

.method private validatePattern(Ljava/lang/String;)V
    .registers 10
    .parameter "template"

    .prologue
    .line 807
    const/4 v5, 0x0

    .line 808
    .local v5, quote:Z
    const/4 v2, -0x1

    .local v2, last:I
    const/4 v0, 0x0

    .line 810
    .local v0, count:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 811
    .local v4, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v4, :cond_53

    .line 812
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 813
    .local v3, next:I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_28

    .line 814
    if-lez v0, :cond_19

    .line 815
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 816
    const/4 v0, 0x0

    .line 818
    :cond_19
    if-ne v2, v3, :cond_23

    .line 819
    const/4 v2, -0x1

    .line 823
    :goto_1c
    if-nez v5, :cond_25

    const/4 v6, 0x1

    move v5, v6

    .line 811
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 821
    :cond_23
    move v2, v3

    goto :goto_1c

    .line 823
    :cond_25
    const/4 v6, 0x0

    move v5, v6

    goto :goto_20

    .line 826
    :cond_28
    if-nez v5, :cond_4a

    if-eq v2, v3, :cond_3c

    const/16 v6, 0x61

    if-lt v3, v6, :cond_34

    const/16 v6, 0x7a

    if-le v3, v6, :cond_3c

    :cond_34
    const/16 v6, 0x41

    if-lt v3, v6, :cond_4a

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_4a

    .line 828
    :cond_3c
    if-ne v2, v3, :cond_41

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 831
    :cond_41
    if-lez v0, :cond_47

    .line 832
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 834
    :cond_47
    move v2, v3

    .line 835
    const/4 v0, 0x1

    goto :goto_20

    .line 838
    :cond_4a
    if-lez v0, :cond_51

    .line 839
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 840
    const/4 v0, 0x0

    .line 842
    :cond_51
    const/4 v2, -0x1

    goto :goto_20

    .line 845
    .end local v3           #next:I
    :cond_53
    if-lez v0, :cond_59

    .line 846
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 849
    :cond_59
    if-eqz v5, :cond_67

    .line 851
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "text.04"

    invoke-static {v7}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 854
    :cond_67
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1359
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1360
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1361
    const-string v1, "formatData"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1362
    const-string v1, "pattern"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1363
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1364
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1365
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 5
    .parameter "template"

    .prologue
    .line 624
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZ"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 2
    .parameter "template"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 640
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 653
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 654
    .local v0, clone:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 655
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 656
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 681
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 688
    :goto_5
    return v2

    .line 684
    :cond_6
    instance-of v2, p1, Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_c

    move v2, v4

    .line 685
    goto :goto_5

    .line 687
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    move-object v1, v0

    .line 688
    .local v1, simple:Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v1, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2, v3}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v5

    goto :goto_5

    :cond_2c
    move v2, v4

    goto :goto_5
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "date"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/Vector;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .parameter "object"

    .prologue
    .line 714
    if-nez p1, :cond_8

    .line 715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 717
    :cond_8
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_13

    .line 718
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 721
    :goto_12
    return-object v0

    .line 720
    .restart local p1
    :cond_13
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_27

    .line 721
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_12

    .line 724
    .restart local p1
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/DateFormatSymbols;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 960
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 16
    .parameter "string"
    .parameter "position"

    .prologue
    .line 1113
    const/4 v9, 0x0

    .line 1114
    .local v9, quote:Z
    const/4 v4, -0x1

    .local v4, last:I
    const/4 v0, 0x0

    .local v0, count:I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1115
    .local v7, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1116
    .local v5, length:I
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 1117
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    .line 1118
    .local v10, zone:Ljava/util/TimeZone;
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1119
    .local v8, patternLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v8, :cond_ac

    .line 1120
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1121
    .local v6, next:I
    const/16 v11, 0x27

    if-ne v6, v11, :cond_5b

    .line 1122
    if-lez v0, :cond_3b

    .line 1123
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_3a

    .line 1124
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    .line 1180
    .end local v6           #next:I
    :goto_39
    return-object v11

    .line 1126
    .restart local v6       #next:I
    :cond_3a
    const/4 v0, 0x0

    .line 1128
    :cond_3b
    if-ne v4, v6, :cond_56

    .line 1129
    if-ge v7, v5, :cond_47

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-eq v11, v12, :cond_4c

    .line 1130
    :cond_47
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1132
    :cond_4c
    add-int/lit8 v7, v7, 0x1

    .line 1133
    const/4 v4, -0x1

    .line 1137
    :goto_4f
    if-nez v9, :cond_58

    const/4 v11, 0x1

    move v9, v11

    .line 1119
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1135
    :cond_56
    move v4, v6

    goto :goto_4f

    .line 1137
    :cond_58
    const/4 v11, 0x0

    move v9, v11

    goto :goto_53

    .line 1140
    :cond_5b
    if-nez v9, :cond_89

    if-eq v4, v6, :cond_6f

    const/16 v11, 0x61

    if-lt v6, v11, :cond_67

    const/16 v11, 0x7a

    if-le v6, v11, :cond_6f

    :cond_67
    const/16 v11, 0x41

    if-lt v6, v11, :cond_89

    const/16 v11, 0x5a

    if-gt v6, v11, :cond_89

    .line 1142
    :cond_6f
    if-ne v4, v6, :cond_74

    .line 1143
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 1145
    :cond_74
    if-lez v0, :cond_86

    .line 1146
    int-to-char v11, v4

    neg-int v12, v0

    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_86

    .line 1147
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1150
    :cond_86
    move v4, v6

    .line 1151
    const/4 v0, 0x1

    goto :goto_53

    .line 1154
    :cond_89
    if-lez v0, :cond_9b

    .line 1155
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_9a

    .line 1156
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1158
    :cond_9a
    const/4 v0, 0x0

    .line 1160
    :cond_9b
    const/4 v4, -0x1

    .line 1161
    if-ge v7, v5, :cond_a4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v6, :cond_a9

    .line 1162
    :cond_a4
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto :goto_39

    .line 1164
    :cond_a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 1167
    .end local v6           #next:I
    :cond_ac
    if-lez v0, :cond_be

    .line 1168
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_be

    .line 1169
    neg-int v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto/16 :goto_39

    .line 1174
    :cond_be
    :try_start_be
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c3} :catch_cf

    move-result-object v1

    .line 1178
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1179
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v11, v1

    .line 1180
    goto/16 :goto_39

    .line 1175
    .end local v1           #date:Ljava/util/Date;
    :catch_cf
    move-exception v11

    move-object v2, v11

    .line 1176
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v11

    goto/16 :goto_39
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 1312
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1313
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1314
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1315
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 1316
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1326
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1327
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1337
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZ"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1349
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
