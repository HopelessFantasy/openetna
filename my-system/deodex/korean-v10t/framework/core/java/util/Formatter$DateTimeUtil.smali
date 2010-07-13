.class Ljava/util/Formatter$DateTimeUtil;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeUtil"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private dateFormatSymbols:Ljava/text/DateFormatSymbols;

.field private locale:Ljava/util/Locale;

.field private result:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2251
    iput-object p1, p0, Ljava/util/Formatter$DateTimeUtil;->locale:Ljava/util/Locale;

    .line 2252
    return-void
.end method

.method private getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 3

    .prologue
    .line 2608
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    if-nez v0, :cond_d

    .line 2609
    new-instance v0, Ljava/text/DateFormatSymbols;

    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    .line 2611
    :cond_d
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->dateFormatSymbols:Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method private static paddingZeros(JI)Ljava/lang/String;
    .registers 9
    .parameter "number"
    .parameter "length"

    .prologue
    .line 2590
    move v0, p2

    .line 2591
    .local v0, len:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2592
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2593
    const/4 v2, 0x0

    .line 2594
    .local v2, startIndex:I
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_13

    .line 2595
    add-int/lit8 v0, v0, 0x1

    .line 2596
    const/4 v2, 0x1

    .line 2598
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v0, v4

    .line 2599
    if-lez v0, :cond_24

    .line 2600
    new-array v3, v0, [C

    .line 2601
    .local v3, zeros:[C
    const/16 v4, 0x30

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 2602
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 2604
    .end local v3           #zeros:[C
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private transform_A()V
    .registers 4

    .prologue
    .line 2437
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2438
    .local v0, day:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    return-void
.end method

.method private transform_B()V
    .registers 4

    .prologue
    .line 2447
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2448
    .local v0, month:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    return-void
.end method

.method private transform_C()V
    .registers 6

    .prologue
    .line 2426
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2427
    .local v0, year:I
    div-int/lit8 v0, v0, 0x64

    .line 2428
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    return-void
.end method

.method private transform_D()V
    .registers 3

    .prologue
    const/16 v1, 0x2f

    .line 2560
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_m()V

    .line 2561
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2562
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_d()V

    .line 2563
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2564
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_y()V

    .line 2565
    return-void
.end method

.method private transform_F()V
    .registers 3

    .prologue
    const/16 v1, 0x2d

    .line 2568
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_Y()V

    .line 2569
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2570
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_m()V

    .line 2571
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2572
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_d()V

    .line 2573
    return-void
.end method

.method private transform_H()V
    .registers 6

    .prologue
    .line 2531
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2532
    .local v0, hour:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    return-void
.end method

.method private transform_I()V
    .registers 6

    .prologue
    .line 2523
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2524
    .local v0, hour:I
    if-nez v0, :cond_c

    .line 2525
    const/16 v0, 0xc

    .line 2527
    :cond_c
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    return-void
.end method

.method private transform_L()V
    .registers 6

    .prologue
    .line 2495
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2496
    .local v0, millisecond:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    return-void
.end method

.method private transform_M()V
    .registers 6

    .prologue
    .line 2505
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2506
    .local v0, minute:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    return-void
.end method

.method private transform_N()V
    .registers 7

    .prologue
    .line 2490
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v2, v4

    .line 2491
    .local v0, nanosecond:J
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-static {v0, v1, v3}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2492
    return-void
.end method

.method private transform_Q()V
    .registers 4

    .prologue
    .line 2452
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2453
    .local v0, milliSeconds:J
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2454
    return-void
.end method

.method private transform_R()V
    .registers 3

    .prologue
    .line 2536
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_H()V

    .line 2537
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2538
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_M()V

    .line 2539
    return-void
.end method

.method private transform_S()V
    .registers 6

    .prologue
    .line 2500
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2501
    .local v0, second:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    return-void
.end method

.method private transform_T()V
    .registers 3

    .prologue
    const/16 v1, 0x3a

    .line 2542
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_H()V

    .line 2543
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2544
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_M()V

    .line 2545
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2546
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_S()V

    .line 2547
    return-void
.end method

.method private transform_Y()V
    .registers 6

    .prologue
    .line 2421
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2422
    .local v0, year:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    return-void
.end method

.method private transform_Z()V
    .registers 6

    .prologue
    .line 2463
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 2464
    .local v0, timeZone:Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/util/Formatter$DateTimeUtil;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    return-void
.end method

.method private transform_a()V
    .registers 4

    .prologue
    .line 2432
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2433
    .local v0, day:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    return-void
.end method

.method private transform_b()V
    .registers 4

    .prologue
    .line 2442
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2443
    .local v0, month:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    return-void
.end method

.method private transform_c()V
    .registers 3

    .prologue
    const/16 v1, 0x20

    .line 2576
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_a()V

    .line 2577
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2578
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_b()V

    .line 2579
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2580
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_d()V

    .line 2581
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2582
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_T()V

    .line 2583
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2584
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_Z()V

    .line 2585
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2586
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_Y()V

    .line 2587
    return-void
.end method

.method private transform_d()V
    .registers 6

    .prologue
    .line 2397
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2398
    .local v0, day:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    return-void
.end method

.method private transform_e()V
    .registers 4

    .prologue
    .line 2392
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2393
    .local v0, day:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2394
    return-void
.end method

.method private transform_j()V
    .registers 6

    .prologue
    .line 2410
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2411
    .local v0, day:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    return-void
.end method

.method private transform_k()V
    .registers 4

    .prologue
    .line 2518
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2519
    .local v0, hour:I
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2520
    return-void
.end method

.method private transform_l()V
    .registers 4

    .prologue
    .line 2510
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2511
    .local v0, hour:I
    if-nez v0, :cond_c

    .line 2512
    const/16 v0, 0xc

    .line 2514
    :cond_c
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2515
    return-void
.end method

.method private transform_m()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 2402
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2405
    .local v0, month:I
    add-int/lit8 v0, v0, 0x1

    .line 2406
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    return-void
.end method

.method private transform_p(Z)V
    .registers 6
    .parameter "isLowerCase"

    .prologue
    .line 2480
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2481
    .local v0, i:I
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    .line 2482
    .local v1, s:Ljava/lang/String;
    if-eqz p1, :cond_1a

    .line 2483
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2485
    :cond_1a
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2486
    return-void
.end method

.method private transform_r()V
    .registers 3

    .prologue
    const/16 v1, 0x3a

    .line 2550
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_I()V

    .line 2551
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2552
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_M()V

    .line 2553
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2554
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_S()V

    .line 2555
    iget-object v0, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2556
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Formatter$DateTimeUtil;->transform_p(Z)V

    .line 2557
    return-void
.end method

.method private transform_s()V
    .registers 5

    .prologue
    .line 2457
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2458
    .local v0, milliSeconds:J
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2459
    iget-object v2, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2460
    return-void
.end method

.method private transform_y()V
    .registers 6

    .prologue
    .line 2415
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2416
    .local v0, year:I
    rem-int/lit8 v0, v0, 0x64

    .line 2417
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    return-void
.end method

.method private transform_z()V
    .registers 6

    .prologue
    .line 2470
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2471
    .local v0, zoneOffset:I
    const v1, 0x36ee80

    div-int/2addr v0, v1

    .line 2472
    mul-int/lit8 v0, v0, 0x64

    .line 2473
    if-ltz v0, :cond_17

    .line 2474
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2476
    :cond_17
    iget-object v1, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Ljava/util/Formatter$DateTimeUtil;->paddingZeros(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    return-void
.end method


# virtual methods
.method transform(Ljava/util/Formatter$FormatToken;Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .registers 8
    .parameter "formatToken"
    .parameter "aCalendar"
    .parameter "aResult"

    .prologue
    .line 2256
    iput-object p3, p0, Ljava/util/Formatter$DateTimeUtil;->result:Ljava/lang/StringBuilder;

    .line 2257
    iput-object p2, p0, Ljava/util/Formatter$DateTimeUtil;->calendar:Ljava/util/Calendar;

    .line 2258
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    move-result v0

    .line 2260
    .local v0, suffix:C
    packed-switch v0, :pswitch_data_a8

    .line 2384
    :pswitch_b
    new-instance v1, Ljava/util/UnknownFormatConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2262
    :pswitch_2e
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_H()V

    .line 2389
    :goto_31
    return-void

    .line 2266
    :pswitch_32
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_I()V

    goto :goto_31

    .line 2270
    :pswitch_36
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_M()V

    goto :goto_31

    .line 2274
    :pswitch_3a
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_S()V

    goto :goto_31

    .line 2278
    :pswitch_3e
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_L()V

    goto :goto_31

    .line 2282
    :pswitch_42
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_N()V

    goto :goto_31

    .line 2286
    :pswitch_46
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_k()V

    goto :goto_31

    .line 2290
    :pswitch_4a
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_l()V

    goto :goto_31

    .line 2294
    :pswitch_4e
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/Formatter$DateTimeUtil;->transform_p(Z)V

    goto :goto_31

    .line 2298
    :pswitch_53
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_s()V

    goto :goto_31

    .line 2302
    :pswitch_57
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_z()V

    goto :goto_31

    .line 2306
    :pswitch_5b
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_Z()V

    goto :goto_31

    .line 2310
    :pswitch_5f
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_Q()V

    goto :goto_31

    .line 2314
    :pswitch_63
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_B()V

    goto :goto_31

    .line 2319
    :pswitch_67
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_b()V

    goto :goto_31

    .line 2323
    :pswitch_6b
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_A()V

    goto :goto_31

    .line 2327
    :pswitch_6f
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_a()V

    goto :goto_31

    .line 2331
    :pswitch_73
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_C()V

    goto :goto_31

    .line 2335
    :pswitch_77
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_Y()V

    goto :goto_31

    .line 2339
    :pswitch_7b
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_y()V

    goto :goto_31

    .line 2343
    :pswitch_7f
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_j()V

    goto :goto_31

    .line 2347
    :pswitch_83
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_m()V

    goto :goto_31

    .line 2351
    :pswitch_87
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_d()V

    goto :goto_31

    .line 2355
    :pswitch_8b
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_e()V

    goto :goto_31

    .line 2359
    :pswitch_8f
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_R()V

    goto :goto_31

    .line 2364
    :pswitch_93
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_T()V

    goto :goto_31

    .line 2368
    :pswitch_97
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_r()V

    goto :goto_31

    .line 2372
    :pswitch_9b
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_D()V

    goto :goto_31

    .line 2376
    :pswitch_9f
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_F()V

    goto :goto_31

    .line 2380
    :pswitch_a3
    invoke-direct {p0}, Ljava/util/Formatter$DateTimeUtil;->transform_c()V

    goto :goto_31

    .line 2260
    nop

    :pswitch_data_a8
    .packed-switch 0x41
        :pswitch_6b
        :pswitch_63
        :pswitch_73
        :pswitch_9b
        :pswitch_b
        :pswitch_9f
        :pswitch_b
        :pswitch_2e
        :pswitch_32
        :pswitch_b
        :pswitch_b
        :pswitch_3e
        :pswitch_36
        :pswitch_42
        :pswitch_b
        :pswitch_b
        :pswitch_5f
        :pswitch_8f
        :pswitch_3a
        :pswitch_93
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_77
        :pswitch_5b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6f
        :pswitch_67
        :pswitch_a3
        :pswitch_87
        :pswitch_8b
        :pswitch_b
        :pswitch_b
        :pswitch_67
        :pswitch_b
        :pswitch_7f
        :pswitch_46
        :pswitch_4a
        :pswitch_83
        :pswitch_b
        :pswitch_b
        :pswitch_4e
        :pswitch_b
        :pswitch_97
        :pswitch_53
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_7b
        :pswitch_57
    .end packed-switch
.end method
