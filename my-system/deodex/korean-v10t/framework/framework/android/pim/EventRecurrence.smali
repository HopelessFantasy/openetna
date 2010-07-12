.class public Landroid/pim/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/high16 v0, 0x2

    iput v0, p0, Landroid/pim/EventRecurrence;->wkst:I

    .line 41
    return-void
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .registers 6
    .parameter "s"
    .parameter "i"

    .prologue
    .line 243
    iget-object v2, p0, Landroid/pim/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 244
    .local v0, n:I
    if-eqz v0, :cond_9

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    :cond_9
    iget-object v2, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .registers 6
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 230
    if-lez p2, :cond_1c

    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 p2, p2, -0x1

    .line 233
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, p2, :cond_17

    .line 234
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 237
    :cond_17
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .end local v0           #i:I
    :cond_1c
    return-void
.end method

.method public static calendarDay2Day(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_32

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_1c
    const/high16 v0, 0x1

    .line 117
    :goto_1e
    return v0

    .line 107
    :pswitch_1f
    const/high16 v0, 0x2

    goto :goto_1e

    .line 109
    :pswitch_22
    const/high16 v0, 0x4

    goto :goto_1e

    .line 111
    :pswitch_25
    const/high16 v0, 0x8

    goto :goto_1e

    .line 113
    :pswitch_28
    const/high16 v0, 0x10

    goto :goto_1e

    .line 115
    :pswitch_2b
    const/high16 v0, 0x20

    goto :goto_1e

    .line 117
    :pswitch_2e
    const/high16 v0, 0x40

    goto :goto_1e

    .line 102
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 175
    sparse-switch p0, :sswitch_data_2a

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :sswitch_1c
    const/4 v0, 0x1

    .line 190
    :goto_1d
    return v0

    .line 180
    :sswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 182
    :sswitch_20
    const/4 v0, 0x3

    goto :goto_1d

    .line 184
    :sswitch_22
    const/4 v0, 0x4

    goto :goto_1d

    .line 186
    :sswitch_24
    const/4 v0, 0x5

    goto :goto_1d

    .line 188
    :sswitch_26
    const/4 v0, 0x6

    goto :goto_1d

    .line 190
    :sswitch_28
    const/4 v0, 0x7

    goto :goto_1d

    .line 175
    :sswitch_data_2a
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1e
        0x40000 -> :sswitch_20
        0x80000 -> :sswitch_22
        0x100000 -> :sswitch_24
        0x200000 -> :sswitch_26
        0x400000 -> :sswitch_28
    .end sparse-switch
.end method

.method private static day2String(I)Ljava/lang/String;
    .registers 4
    .parameter "day"

    .prologue
    .line 207
    sparse-switch p0, :sswitch_data_32

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :sswitch_1c
    const-string v0, "SU"

    .line 221
    :goto_1e
    return-object v0

    .line 211
    :sswitch_1f
    const-string v0, "MO"

    goto :goto_1e

    .line 213
    :sswitch_22
    const-string v0, "TU"

    goto :goto_1e

    .line 215
    :sswitch_25
    const-string v0, "WE"

    goto :goto_1e

    .line 217
    :sswitch_28
    const-string v0, "TH"

    goto :goto_1e

    .line 219
    :sswitch_2b
    const-string v0, "FR"

    goto :goto_1e

    .line 221
    :sswitch_2e
    const-string v0, "SA"

    goto :goto_1e

    .line 207
    nop

    :sswitch_data_32
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1f
        0x40000 -> :sswitch_22
        0x80000 -> :sswitch_25
        0x100000 -> :sswitch_28
        0x200000 -> :sswitch_2b
        0x400000 -> :sswitch_2e
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 147
    sparse-switch p0, :sswitch_data_2a

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :sswitch_1c
    const/4 v0, 0x0

    .line 162
    :goto_1d
    return v0

    .line 152
    :sswitch_1e
    const/4 v0, 0x1

    goto :goto_1d

    .line 154
    :sswitch_20
    const/4 v0, 0x2

    goto :goto_1d

    .line 156
    :sswitch_22
    const/4 v0, 0x3

    goto :goto_1d

    .line 158
    :sswitch_24
    const/4 v0, 0x4

    goto :goto_1d

    .line 160
    :sswitch_26
    const/4 v0, 0x5

    goto :goto_1d

    .line 162
    :sswitch_28
    const/4 v0, 0x6

    goto :goto_1d

    .line 147
    :sswitch_data_2a
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1e
        0x40000 -> :sswitch_20
        0x80000 -> :sswitch_22
        0x100000 -> :sswitch_24
        0x200000 -> :sswitch_26
        0x400000 -> :sswitch_28
    .end sparse-switch
.end method

.method private dayToString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 6
    .parameter "r"
    .parameter "day"

    .prologue
    .line 410
    sparse-switch p2, :sswitch_data_54

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :sswitch_1c
    const v0, 0x104022b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_23
    return-object v0

    .line 412
    :sswitch_24
    const v0, 0x104022c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 413
    :sswitch_2c
    const v0, 0x104022d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 414
    :sswitch_34
    const v0, 0x104022e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 415
    :sswitch_3c
    const v0, 0x104022f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 416
    :sswitch_44
    const v0, 0x1040230

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 417
    :sswitch_4c
    const v0, 0x1040231

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 410
    :sswitch_data_54
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_24
        0x40000 -> :sswitch_2c
        0x80000 -> :sswitch_34
        0x100000 -> :sswitch_3c
        0x200000 -> :sswitch_44
        0x400000 -> :sswitch_4c
    .end sparse-switch
.end method

.method public static timeDay2Day(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 125
    packed-switch p0, :pswitch_data_32

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_1c
    const/high16 v0, 0x1

    .line 140
    :goto_1e
    return v0

    .line 130
    :pswitch_1f
    const/high16 v0, 0x2

    goto :goto_1e

    .line 132
    :pswitch_22
    const/high16 v0, 0x4

    goto :goto_1e

    .line 134
    :pswitch_25
    const/high16 v0, 0x8

    goto :goto_1e

    .line 136
    :pswitch_28
    const/high16 v0, 0x10

    goto :goto_1e

    .line 138
    :pswitch_2b
    const/high16 v0, 0x20

    goto :goto_1e

    .line 140
    :pswitch_2e
    const/high16 v0, 0x40

    goto :goto_1e

    .line 125
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public getRepeatString()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 329
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 332
    .local v5, r:Landroid/content/res/Resources;
    iget v6, p0, Landroid/pim/EventRecurrence;->freq:I

    packed-switch v6, :pswitch_data_90

    move-object v6, v9

    .line 374
    :goto_d
    return-object v6

    .line 334
    :pswitch_e
    const v6, 0x10401eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 336
    :pswitch_16
    invoke-virtual {p0}, Landroid/pim/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 337
    const v6, 0x10401ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 339
    :cond_24
    const v6, 0x10401ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, format:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v2, days:Ljava/lang/StringBuilder;
    iget v6, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    sub-int v0, v6, v7

    .line 345
    .local v0, count:I
    if-ltz v0, :cond_64

    .line 346
    const/4 v4, 0x0

    .local v4, i:I
    :goto_37
    if-ge v4, v0, :cond_4c

    .line 347
    iget-object v6, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v6, v6, v4

    invoke-direct {p0, v5, v6}, Landroid/pim/EventRecurrence;->dayToString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 350
    :cond_4c
    iget-object v6, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6}, Landroid/pim/EventRecurrence;->dayToString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 359
    .end local v4           #i:I
    :cond_64
    iget-object v6, p0, Landroid/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v6, :cond_6a

    move-object v6, v9

    .line 360
    goto :goto_d

    .line 363
    :cond_6a
    iget-object v6, p0, Landroid/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v1

    .line 364
    .local v1, day:I
    new-array v6, v7, [Ljava/lang/Object;

    invoke-direct {p0, v5, v1}, Landroid/pim/EventRecurrence;->dayToString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 368
    .end local v0           #count:I
    .end local v1           #day:I
    .end local v2           #days:Ljava/lang/StringBuilder;
    .end local v3           #format:Ljava/lang/String;
    :pswitch_7f
    const v6, 0x10401ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 371
    :pswitch_87
    const v6, 0x10401ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    .line 332
    :pswitch_data_90
    .packed-switch 0x4
        :pswitch_e
        :pswitch_16
        :pswitch_7f
        :pswitch_87
    .end packed-switch
.end method

.method public native parse(Ljava/lang/String;)V
.end method

.method public repeatsMonthlyOnDayCount()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    iget v0, p0, Landroid/pim/EventRecurrence;->freq:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 406
    :goto_8
    return v0

    .line 402
    :cond_9
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-ne v0, v3, :cond_11

    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-eqz v0, :cond_13

    :cond_11
    move v0, v2

    .line 403
    goto :goto_8

    :cond_13
    move v0, v3

    .line 406
    goto :goto_8
.end method

.method public repeatsOnEveryWeekDay()Z
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 378
    iget v3, p0, Landroid/pim/EventRecurrence;->freq:I

    if-eq v3, v5, :cond_8

    move v3, v4

    .line 394
    :goto_7
    return v3

    .line 382
    :cond_8
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 383
    .local v0, count:I
    if-eq v0, v5, :cond_e

    move v3, v4

    .line 384
    goto :goto_7

    .line 387
    :cond_e
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_22

    .line 388
    iget-object v3, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v1, v3, v2

    .line 389
    .local v1, day:I
    const/high16 v3, 0x1

    if-eq v1, v3, :cond_1d

    const/high16 v3, 0x40

    if-ne v1, v3, :cond_1f

    :cond_1d
    move v3, v4

    .line 390
    goto :goto_7

    .line 387
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 394
    .end local v1           #day:I
    :cond_22
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .registers 2
    .parameter "date"

    .prologue
    .line 49
    iput-object p1, p0, Landroid/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const-string v6, ";BYSECOND="

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v2, s:Ljava/lang/StringBuilder;
    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget v3, p0, Landroid/pim/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_ea

    .line 283
    :goto_11
    iget-object v3, p0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 284
    const-string v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v3, p0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_23
    iget v3, p0, Landroid/pim/EventRecurrence;->count:I

    if-eqz v3, :cond_31

    .line 289
    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget v3, p0, Landroid/pim/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    :cond_31
    iget v3, p0, Landroid/pim/EventRecurrence;->interval:I

    if-eqz v3, :cond_3f

    .line 294
    const-string v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget v3, p0, Landroid/pim/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    :cond_3f
    iget v3, p0, Landroid/pim/EventRecurrence;->wkst:I

    if-eqz v3, :cond_51

    .line 299
    const-string v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget v3, p0, Landroid/pim/EventRecurrence;->wkst:I

    invoke-static {v3}, Landroid/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_51
    const-string v3, ";BYSECOND="

    iget v3, p0, Landroid/pim/EventRecurrence;->bysecondCount:I

    iget-object v4, p0, Landroid/pim/EventRecurrence;->bysecond:[I

    invoke-static {v2, v6, v3, v4}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 304
    const-string v3, ";BYMINUTE="

    iget v4, p0, Landroid/pim/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 305
    const-string v3, ";BYSECOND="

    iget v3, p0, Landroid/pim/EventRecurrence;->byhourCount:I

    iget-object v4, p0, Landroid/pim/EventRecurrence;->byhour:[I

    invoke-static {v2, v6, v3, v4}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 308
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 309
    .local v0, count:I
    if-lez v0, :cond_b7

    .line 310
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v0, v0, -0x1

    .line 312
    const/4 v1, 0x0

    .local v1, i:I
    :goto_78
    if-ge v1, v0, :cond_b4

    .line 313
    invoke-direct {p0, v2, v1}, Landroid/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 314
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 261
    .end local v0           #count:I
    .end local v1           #i:I
    :pswitch_85
    const-string v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 264
    :pswitch_8b
    const-string v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 267
    :pswitch_91
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 270
    :pswitch_98
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 273
    :pswitch_9f
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 276
    :pswitch_a6
    const-string v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 279
    :pswitch_ad
    const-string v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 316
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_b4
    invoke-direct {p0, v2, v0}, Landroid/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 319
    .end local v1           #i:I
    :cond_b7
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 320
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 321
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 322
    const-string v3, ";BYMONTH="

    iget v4, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 323
    const-string v3, ";BYSETPOS="

    iget v4, p0, Landroid/pim/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 258
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_85
        :pswitch_8b
        :pswitch_91
        :pswitch_98
        :pswitch_9f
        :pswitch_a6
        :pswitch_ad
    .end packed-switch
.end method
