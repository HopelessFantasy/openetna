.class public Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/RecurrenceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySet"
.end annotation


# instance fields
.field private mDays:I

.field private mMonth:I

.field private mR:Landroid/pim/EventRecurrence;

.field private mTime:Landroid/text/format/Time;

.field private mYear:I


# direct methods
.method public constructor <init>(Z)V
    .registers 4
    .parameter "zulu"

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 304
    return-void
.end method

.method private static generateDaysList(Landroid/text/format/Time;Landroid/pim/EventRecurrence;)I
    .registers 15
    .parameter "generated"
    .parameter "r"

    .prologue
    const/4 v12, 0x1

    .line 379
    const/4 v4, 0x0

    .line 387
    .local v4, days:I
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 390
    .local v8, lastDayThisMonth:I
    iget v3, p1, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 391
    .local v3, count:I
    if-lez v3, :cond_5e

    .line 393
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 394
    .local v7, j:I
    :goto_d
    const/16 v10, 0x8

    if-lt v7, v10, :cond_14

    .line 395
    add-int/lit8 v7, v7, -0x7

    goto :goto_d

    .line 397
    :cond_14
    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 398
    .local v5, first:I
    if-lt v5, v7, :cond_3c

    .line 399
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x1

    .line 408
    :goto_1c
    iget-object v0, p1, Landroid/pim/EventRecurrence;->byday:[I

    .line 409
    .local v0, byday:[I
    iget-object v1, p1, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 410
    .local v1, bydayNum:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_21
    if-ge v6, v3, :cond_5e

    .line 411
    aget v9, v1, v6

    .line 412
    .local v9, v:I
    aget v10, v0, v6

    invoke-static {v10}, Landroid/pim/EventRecurrence;->day2TimeDay(I)I

    move-result v10

    sub-int/2addr v10, v5

    add-int/lit8 v7, v10, 0x1

    .line 413
    if-gtz v7, :cond_32

    .line 414
    add-int/lit8 v7, v7, 0x7

    .line 416
    :cond_32
    if-nez v9, :cond_41

    .line 418
    :goto_34
    if-gt v7, v8, :cond_4d

    .line 421
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 418
    add-int/lit8 v7, v7, 0x7

    goto :goto_34

    .line 401
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v6           #i:I
    .end local v9           #v:I
    :cond_3c
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x8

    goto :goto_1c

    .line 424
    .restart local v0       #byday:[I
    .restart local v1       #bydayNum:[I
    .restart local v6       #i:I
    .restart local v9       #v:I
    :cond_41
    if-lez v9, :cond_50

    .line 427
    sub-int v10, v9, v12

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v7, v10

    .line 428
    if-gt v7, v8, :cond_4d

    .line 432
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 410
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 438
    :cond_50
    :goto_50
    if-gt v7, v8, :cond_55

    add-int/lit8 v7, v7, 0x7

    goto :goto_50

    .line 444
    :cond_55
    mul-int/lit8 v10, v9, 0x7

    add-int/2addr v7, v10

    .line 445
    if-lt v7, v12, :cond_4d

    .line 448
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_4d

    .line 458
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v5           #first:I
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_5e
    iget v10, p1, Landroid/pim/EventRecurrence;->freq:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_a1

    .line 459
    iget v3, p1, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 460
    if-eqz v3, :cond_a1

    .line 461
    iget-object v2, p1, Landroid/pim/EventRecurrence;->bymonthday:[I

    .line 462
    .local v2, bymonthday:[I
    iget v10, p1, Landroid/pim/EventRecurrence;->bydayCount:I

    if-nez v10, :cond_86

    .line 463
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6e
    if-ge v6, v3, :cond_a1

    .line 464
    aget v9, v2, v6

    .line 465
    .restart local v9       #v:I
    if-ltz v9, :cond_7a

    .line 466
    shl-int v10, v12, v9

    or-int/2addr v4, v10

    .line 463
    :cond_77
    :goto_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 468
    :cond_7a
    add-int v10, v8, v9

    add-int/lit8 v7, v10, 0x1

    .line 469
    .restart local v7       #j:I
    if-lt v7, v12, :cond_77

    if-gt v7, v8, :cond_77

    .line 470
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_77

    .line 477
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_86
    const/4 v7, 0x1

    .restart local v7       #j:I
    :goto_87
    if-gt v7, v8, :cond_a1

    .line 479
    shl-int v10, v12, v7

    and-int/2addr v10, v4

    if-eqz v10, :cond_95

    .line 480
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_8f
    if-ge v6, v3, :cond_9b

    .line 481
    aget v10, v2, v6

    if-ne v10, v7, :cond_98

    .line 477
    .end local v6           #i:I
    :cond_95
    :goto_95
    add-int/lit8 v7, v7, 0x1

    goto :goto_87

    .line 480
    .restart local v6       #i:I
    :cond_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 485
    :cond_9b
    shl-int v10, v12, v7

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v4, v10

    goto :goto_95

    .line 492
    .end local v2           #bymonthday:[I
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_a1
    return v4
.end method


# virtual methods
.method get(Landroid/text/format/Time;I)Z
    .registers 9
    .parameter "iterator"
    .parameter "day"

    .prologue
    const/4 v5, 0x1

    .line 315
    iget v1, p1, Landroid/text/format/Time;->year:I

    .line 316
    .local v1, realYear:I
    iget v0, p1, Landroid/text/format/Time;->month:I

    .line 318
    .local v0, realMonth:I
    const/4 v2, 0x0

    .line 326
    .local v2, t:Landroid/text/format/Time;
    if-lt p2, v5, :cond_c

    const/16 v3, 0x1c

    if-le p2, v3, :cond_1a

    .line 328
    :cond_c
    iget-object v2, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 329
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 330
    invoke-static {v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 331
    iget v1, v2, Landroid/text/format/Time;->year:I

    .line 332
    iget v0, v2, Landroid/text/format/Time;->month:I

    .line 333
    iget p2, v2, Landroid/text/format/Time;->monthDay:I

    .line 346
    :cond_1a
    iget v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v1, v3, :cond_22

    iget v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v0, v3, :cond_38

    .line 347
    :cond_22
    if-nez v2, :cond_2c

    .line 348
    iget-object v2, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 349
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 350
    invoke-static {v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 358
    :cond_2c
    iput v1, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mYear:I

    .line 359
    iput v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mMonth:I

    .line 360
    iget-object v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mR:Landroid/pim/EventRecurrence;

    invoke-static {v2, v3}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Landroid/pim/EventRecurrence;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mDays:I

    .line 365
    :cond_38
    iget v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mDays:I

    shl-int v4, v5, p2

    and-int/2addr v3, v4

    if-eqz v3, :cond_41

    move v3, v5

    :goto_40
    return v3

    :cond_41
    const/4 v3, 0x0

    goto :goto_40
.end method

.method setRecurrence(Landroid/pim/EventRecurrence;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mYear:I

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mMonth:I

    .line 310
    iput-object p1, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mR:Landroid/pim/EventRecurrence;

    .line 311
    return-void
.end method
