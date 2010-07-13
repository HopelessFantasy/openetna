.class public Lcom/android/providers/calendar/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I = null

.field private static final DAYS_PER_MONTH:[I = null

.field private static final MAX_ALLOWED_ITERATIONS:I = 0x7d0

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "RecurrenceProcessor"

.field private static final USE_BYLIST:I = 0x1

.field private static final USE_ITERATOR:I


# instance fields
.field private mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 1079
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1081
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1079
    nop

    :array_12
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 1081
    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-string v2, "UTC"

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 32
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 34
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 35
    new-instance v0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    .line 41
    return-void
.end method

.method private static filter(Landroid/pim/EventRecurrence;Landroid/text/format/Time;)I
    .registers 8
    .parameter "r"
    .parameter "iterator"

    .prologue
    .line 183
    iget v2, p0, Landroid/pim/EventRecurrence;->freq:I

    .line 185
    .local v2, freq:I
    const/4 v0, 0x6

    if-lt v0, v2, :cond_19

    .line 187
    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    if-lez v0, :cond_19

    .line 188
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bymonth:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    iget v3, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([III)Z

    move-result v0

    .line 190
    .local v0, found:Z
    if-nez v0, :cond_19

    .line 191
    const/4 p0, 0x1

    .line 271
    .end local v0           #found:Z
    .end local v2           #freq:I
    .end local p0
    .end local p1
    :goto_18
    return p0

    .line 195
    .restart local v2       #freq:I
    .restart local p0
    .restart local p1
    :cond_19
    const/4 v0, 0x5

    if-lt v0, v2, :cond_36

    .line 198
    iget v0, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    if-lez v0, :cond_36

    .line 199
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byweekno:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 202
    .restart local v0       #found:Z
    if-nez v0, :cond_36

    .line 203
    const/4 p0, 0x2

    goto :goto_18

    .line 207
    .end local v0           #found:Z
    :cond_36
    const/4 v0, 0x4

    if-lt v0, v2, :cond_7d

    .line 209
    iget v0, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    if-lez v0, :cond_51

    .line 210
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byyearday:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    iget v3, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 212
    .restart local v0       #found:Z
    if-nez v0, :cond_51

    .line 213
    const/4 p0, 0x3

    goto :goto_18

    .line 217
    .end local v0           #found:Z
    :cond_51
    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-lez v0, :cond_68

    .line 218
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bymonthday:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 221
    .restart local v0       #found:Z
    if-nez v0, :cond_68

    .line 222
    const/4 p0, 0x4

    goto :goto_18

    .line 228
    .end local v0           #found:Z
    :cond_68
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-lez v0, :cond_7d

    .line 229
    iget-object v1, p0, Landroid/pim/EventRecurrence;->byday:[I

    .line 230
    .local v1, a:[I
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 231
    .local v0, N:I
    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v4

    .line 232
    .local v4, v:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_77
    if-ge v3, v0, :cond_96

    .line 233
    aget v5, v1, v3

    if-ne v5, v4, :cond_93

    .line 240
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v3           #i:I
    .end local v4           #v:I
    :cond_7d
    const/4 v0, 0x3

    if-lt v0, v2, :cond_98

    .line 242
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byhour:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byhourCount:I

    iget v3, p1, Landroid/text/format/Time;->hour:I

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 245
    .local v0, found:Z
    if-nez v0, :cond_98

    .line 246
    const/4 p0, 0x6

    goto :goto_18

    .line 232
    .local v0, N:I
    .restart local v1       #a:[I
    .restart local v3       #i:I
    .restart local v4       #v:I
    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 237
    :cond_96
    const/4 p0, 0x5

    goto :goto_18

    .line 249
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v3           #i:I
    .end local v4           #v:I
    :cond_98
    const/4 v0, 0x2

    if-lt v0, v2, :cond_af

    .line 251
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byminute:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byminuteCount:I

    iget v3, p1, Landroid/text/format/Time;->minute:I

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 254
    .local v0, found:Z
    if-nez v0, :cond_af

    .line 255
    const/4 p0, 0x7

    goto/16 :goto_18

    .line 258
    .end local v0           #found:Z
    :cond_af
    const/4 v0, 0x1

    if-lt v0, v2, :cond_c7

    .line 260
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bysecond:[I

    iget p0, p0, Landroid/pim/EventRecurrence;->bysecondCount:I

    .end local p0
    iget v1, p1, Landroid/text/format/Time;->second:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->getActualMaximum(I)I

    .end local v2           #freq:I
    move-result p1

    .end local p1
    invoke-static {v0, p0, v1, p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result p0

    .line 263
    .local p0, found:Z
    if-nez p0, :cond_c7

    .line 264
    const/16 p0, 0x8

    goto/16 :goto_18

    .line 271
    .end local p0           #found:Z
    :cond_c7
    const/4 p0, 0x0

    goto/16 :goto_18
.end method

.method static isLeapYear(I)Z
    .registers 2
    .parameter "year"

    .prologue
    .line 1066
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static listContains([III)Z
    .registers 5
    .parameter "a"
    .parameter "N"
    .parameter "v"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_c

    .line 139
    aget v1, p0, v0

    if-ne v1, p2, :cond_9

    .line 140
    const/4 v1, 0x1

    .line 143
    :goto_8
    return v1

    .line 138
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_c
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private static listContains([IIII)Z
    .registers 7
    .parameter "a"
    .parameter "N"
    .parameter "v"
    .parameter "max"

    .prologue
    const/4 v2, 0x1

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_11

    .line 157
    aget v1, p0, v0

    .line 158
    .local v1, w:I
    if-lez v1, :cond_b

    .line 159
    if-ne v1, p2, :cond_e

    .line 169
    .end local v1           #w:I
    :cond_a
    :goto_a
    return v2

    .line 163
    .restart local v1       #w:I
    :cond_b
    add-int/2addr p3, v1

    .line 164
    if-eq p3, p2, :cond_a

    .line 156
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    .end local v1           #w:I
    :cond_11
    const/4 v2, 0x0

    goto :goto_a
.end method

.method static monthLength(II)I
    .registers 5
    .parameter "year"
    .parameter "month"

    .prologue
    const/16 v2, 0x1c

    .line 1092
    sget-object v1, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v1, p1

    .line 1093
    .local v0, n:I
    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1096
    :goto_9
    return v1

    :cond_a
    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x1d

    goto :goto_9

    :cond_13
    move v1, v2

    goto :goto_9
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .registers 5
    .parameter "normalized"

    .prologue
    .line 1147
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .registers 5
    .parameter "date"
    .parameter "val"

    .prologue
    .line 1153
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1154
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1155
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1156
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1157
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1158
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1159
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .registers 9
    .parameter "date"

    .prologue
    .line 983
    iget v5, p0, Landroid/text/format/Time;->second:I

    .line 984
    .local v5, second:I
    iget v2, p0, Landroid/text/format/Time;->minute:I

    .line 985
    .local v2, minute:I
    iget v1, p0, Landroid/text/format/Time;->hour:I

    .line 986
    .local v1, hour:I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 987
    .local v4, monthDay:I
    iget v3, p0, Landroid/text/format/Time;->month:I

    .line 988
    .local v3, month:I
    iget v6, p0, Landroid/text/format/Time;->year:I

    .line 990
    .local v6, year:I
    if-gez v5, :cond_40

    const/16 v0, 0x3b

    sub-int v0, v5, v0

    :goto_12
    div-int/lit8 v0, v0, 0x3c

    .line 991
    .local v0, addMinutes:I
    mul-int/lit8 v7, v0, 0x3c

    sub-int/2addr v5, v7

    .line 992
    add-int/2addr v2, v0

    .line 993
    if-gez v2, :cond_42

    const/16 v0, 0x3b

    sub-int v0, v2, v0

    .end local v0           #addMinutes:I
    :goto_1e
    div-int/lit8 v0, v0, 0x3c

    .line 994
    .local v0, addHours:I
    mul-int/lit8 v7, v0, 0x3c

    sub-int/2addr v2, v7

    .line 995
    add-int/2addr v1, v0

    .line 996
    if-gez v1, :cond_44

    const/16 v0, 0x17

    sub-int v0, v1, v0

    .end local v0           #addHours:I
    :goto_2a
    div-int/lit8 v0, v0, 0x18

    .line 997
    .local v0, addDays:I
    mul-int/lit8 v7, v0, 0x18

    sub-int/2addr v1, v7

    .line 998
    add-int/2addr v0, v4

    .end local v4           #monthDay:I
    .local v0, monthDay:I
    move v4, v0

    .line 1003
    .end local v0           #monthDay:I
    .restart local v4       #monthDay:I
    :goto_31
    if-gtz v4, :cond_4e

    .line 1011
    const/4 v0, 0x1

    if-le v3, v0, :cond_46

    invoke-static {v6}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    .line 1012
    .local v0, days:I
    :goto_3a
    add-int/2addr v0, v4

    .line 1013
    .end local v4           #monthDay:I
    .local v0, monthDay:I
    add-int/lit8 v4, v6, -0x1

    .end local v6           #year:I
    .local v4, year:I
    move v6, v4

    .end local v4           #year:I
    .restart local v6       #year:I
    move v4, v0

    .line 1014
    .end local v0           #monthDay:I
    .local v4, monthDay:I
    goto :goto_31

    :cond_40
    move v0, v5

    .line 990
    goto :goto_12

    .local v0, addMinutes:I
    :cond_42
    move v0, v2

    .line 993
    goto :goto_1e

    .local v0, addHours:I
    :cond_44
    move v0, v1

    .line 996
    goto :goto_2a

    .line 1011
    .end local v0           #addHours:I
    :cond_46
    const/4 v0, 0x1

    sub-int v0, v6, v0

    invoke-static {v0}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    goto :goto_3a

    .line 1016
    :cond_4e
    if-gez v3, :cond_7b

    .line 1017
    add-int/lit8 v0, v3, 0x1

    div-int/lit8 v0, v0, 0xc

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .line 1018
    .local v0, years:I
    add-int/2addr v6, v0

    .line 1019
    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v3, v0

    .end local v3           #month:I
    .local v0, month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .line 1029
    .end local v6           #year:I
    .local v4, year:I
    :goto_5d
    if-nez v0, :cond_a4

    .line 1030
    invoke-static {v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v6

    .line 1031
    .local v6, yearLength:I
    if-le v3, v6, :cond_a4

    .line 1032
    add-int/lit8 v4, v4, 0x1

    .line 1033
    sub-int/2addr v3, v6

    move v6, v4

    .line 1036
    .end local v4           #year:I
    .local v6, year:I
    :goto_69
    invoke-static {v6, v0}, Lcom/android/providers/calendar/RecurrenceProcessor;->monthLength(II)I

    move-result v4

    .line 1037
    .local v4, monthLength:I
    if-le v3, v4, :cond_89

    .line 1038
    sub-int/2addr v3, v4

    .line 1039
    add-int/lit8 v0, v0, 0x1

    .line 1040
    const/16 v4, 0xc

    if-lt v0, v4, :cond_a2

    .line 1041
    .end local v4           #monthLength:I
    add-int/lit8 v0, v0, -0xc

    .line 1042
    add-int/lit8 v4, v6, 0x1

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5d

    .line 1020
    .end local v0           #month:I
    .local v3, month:I
    .local v4, monthDay:I
    .restart local v6       #year:I
    :cond_7b
    const/16 v0, 0xc

    if-lt v3, v0, :cond_a6

    .line 1021
    div-int/lit8 v0, v3, 0xc

    .line 1022
    .local v0, years:I
    add-int/2addr v6, v0

    .line 1023
    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v3, v0

    .end local v3           #month:I
    .local v0, month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5d

    .line 1049
    .local v4, monthLength:I
    .restart local v6       #year:I
    :cond_89
    iput v5, p0, Landroid/text/format/Time;->second:I

    .line 1050
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 1051
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 1052
    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    .line 1053
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1054
    iput v6, p0, Landroid/text/format/Time;->year:I

    .line 1055
    invoke-static {v6, v0, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->weekDay(III)I

    move-result v1

    .end local v1           #hour:I
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 1056
    invoke-static {v6, v0, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearDay(III)I

    move-result v0

    .end local v0           #month:I
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 1057
    return-void

    .end local v4           #monthLength:I
    .restart local v0       #month:I
    .restart local v1       #hour:I
    :cond_a2
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5d

    :cond_a4
    move v6, v4

    .end local v4           #year:I
    .restart local v6       #year:I
    goto :goto_69

    .end local v0           #month:I
    .local v3, month:I
    .local v4, monthDay:I
    :cond_a6
    move v0, v3

    .end local v3           #month:I
    .restart local v0       #month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5d
.end method

.method private static useBYX(III)Z
    .registers 4
    .parameter "freq"
    .parameter "freqConstant"
    .parameter "count"

    .prologue
    .line 296
    if-le p0, p1, :cond_6

    if-lez p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static weekDay(III)I
    .registers 5
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1109
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 1110
    add-int/lit8 p1, p1, 0xc

    .line 1111
    add-int/lit8 p0, p0, -0x1

    .line 1113
    :cond_7
    mul-int/lit8 v0, p1, 0xd

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .registers 6
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1125
    sget-object v1, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 1126
    .local v0, yearDay:I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_13

    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1127
    add-int/lit8 v0, v0, 0x1

    .line 1129
    :cond_13
    return v0
.end method

.method static yearLength(I)I
    .registers 2
    .parameter "year"

    .prologue
    .line 1076
    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x16d

    goto :goto_8
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V
    .registers 67
    .parameter "dtstart"
    .parameter "r"
    .parameter "rangeStartDateValue"
    .parameter "rangeEndDateValue"
    .parameter "add"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Landroid/pim/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    .line 622
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 623
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    .line 624
    .local v18, dtstartDateValue:J
    const/4 v14, 0x0

    .line 627
    .local v14, count:I
    if-eqz p7, :cond_1f

    cmp-long v55, v18, p3

    if-ltz v55, :cond_1f

    cmp-long v55, v18, p5

    if-gez v55, :cond_1f

    .line 629
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 630
    add-int/lit8 v14, v14, 0x1

    .line 633
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v31, v0

    .line 634
    .local v31, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v45, v0

    .line 635
    .local v45, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    .line 636
    .local v42, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object v3, v0

    .line 637
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 641
    .local v16, days:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
    :try_start_3c
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->setRecurrence(Landroid/pim/EventRecurrence;)V

    .line 642
    const-wide v55, 0x7fffffffffffffffL

    cmp-long v55, p5, v55

    if-nez v55, :cond_a0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_a0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    if-nez v55, :cond_a0

    .line 643
    new-instance v55, Landroid/pim/DateException;

    const-string v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_64
    .catch Landroid/pim/DateException; {:try_start_3c .. :try_end_64} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_64} :catch_cc

    .line 959
    :catch_64
    move-exception v55

    move-object/from16 v20, v55

    .line 960
    .local v20, e:Landroid/pim/DateException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "DateException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    throw v20

    .line 649
    .end local v20           #e:Landroid/pim/DateException;
    :cond_a0
    :try_start_a0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v26, v0

    .line 650
    .local v26, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    move/from16 v25, v0

    .line 651
    .local v25, freq:I
    packed-switch v25, :pswitch_data_448

    .line 679
    new-instance v55, Landroid/pim/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad freq="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_cc
    .catch Landroid/pim/DateException; {:try_start_a0 .. :try_end_cc} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_cc} :catch_cc

    .line 964
    .end local v25           #freq:I
    .end local v26           #freqAmount:I
    :catch_cc
    move-exception v55

    move-object/from16 v44, v55

    .line 965
    .local v44, t:Ljava/lang/RuntimeException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "RuntimeException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    throw v44

    .line 654
    .end local v44           #t:Ljava/lang/RuntimeException;
    .restart local v25       #freq:I
    .restart local v26       #freqAmount:I
    :pswitch_108
    const/16 v27, 0x1

    .line 681
    .local v27, freqField:I
    :cond_10a
    :goto_10a
    if-gtz v26, :cond_10e

    .line 682
    const/16 v26, 0x1

    .line 685
    :cond_10e
    :try_start_10e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthCount:I

    move v12, v0

    .line 686
    .local v12, bymonthCount:I
    const/16 v55, 0x6

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 687
    .local v52, usebymonth:Z
    const/16 v55, 0x5

    move/from16 v0, v25

    move/from16 v1, v55

    if-lt v0, v1, :cond_231

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_136

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_231

    :cond_136
    const/16 v55, 0x1

    move/from16 v49, v55

    .line 689
    .local v49, useDays:Z
    :goto_13a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byhourCount:I

    move v10, v0

    .line 690
    .local v10, byhourCount:I
    const/16 v55, 0x3

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 691
    .local v50, usebyhour:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byminuteCount:I

    move v11, v0

    .line 692
    .local v11, byminuteCount:I
    const/16 v55, 0x2

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 693
    .local v51, usebyminute:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bysecondCount:I

    move v13, v0

    .line 694
    .local v13, bysecondCount:I
    const/16 v55, 0x1

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    .line 697
    .local v53, usebysecond:Z
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 698
    const/16 v55, 0x5

    move/from16 v0, v27

    move/from16 v1, v55

    if-ne v0, v1, :cond_183

    .line 699
    if-eqz v49, :cond_183

    .line 705
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 710
    :cond_183
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_237

    .line 712
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 716
    .local v48, untilStr:Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1b4

    .line 717
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x5a

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 720
    :cond_1b4
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 725
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 726
    invoke-static/range {v45 .. v45}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v46

    .line 731
    .end local v48           #untilStr:Ljava/lang/String;
    .local v46, untilDateValue:J
    :goto_1cc
    const/16 v55, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 732
    const/16 v55, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 741
    const/16 v21, 0x0

    .line 744
    .local v21, eventEnded:Z
    const/16 v22, 0x0

    .local v22, failsafe:I
    move/from16 v23, v22

    .line 747
    .end local v22           #failsafe:I
    .local v23, failsafe:I
    :goto_1e4
    const/16 v39, 0x0

    .line 748
    .local v39, monthIndex:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #failsafe:I
    .restart local v22       #failsafe:I
    const/16 v55, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v55

    if-le v0, v1, :cond_23d

    .line 749
    new-instance v55, Landroid/pim/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Recurrence processing stuck: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 657
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v13           #bysecondCount:I
    .end local v21           #eventEnded:Z
    .end local v22           #failsafe:I
    .end local v27           #freqField:I
    .end local v39           #monthIndex:I
    .end local v46           #untilDateValue:J
    .end local v49           #useDays:Z
    .end local v50           #usebyhour:Z
    .end local v51           #usebyminute:Z
    .end local v52           #usebymonth:Z
    .end local v53           #usebysecond:Z
    :pswitch_20d
    const/16 v27, 0x2

    .line 658
    .restart local v27       #freqField:I
    goto/16 :goto_10a

    .line 660
    .end local v27           #freqField:I
    :pswitch_211
    const/16 v27, 0x3

    .line 661
    .restart local v27       #freqField:I
    goto/16 :goto_10a

    .line 663
    .end local v27           #freqField:I
    :pswitch_215
    const/16 v27, 0x4

    .line 664
    .restart local v27       #freqField:I
    goto/16 :goto_10a

    .line 666
    .end local v27           #freqField:I
    :pswitch_219
    const/16 v27, 0x4

    .line 667
    .restart local v27       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v26, v55, 0x7

    .line 668
    if-gtz v26, :cond_10a

    .line 669
    const/16 v26, 0x7

    goto/16 :goto_10a

    .line 673
    .end local v27           #freqField:I
    :pswitch_229
    const/16 v27, 0x5

    .line 674
    .restart local v27       #freqField:I
    goto/16 :goto_10a

    .line 676
    .end local v27           #freqField:I
    :pswitch_22d
    const/16 v27, 0x6

    .line 677
    .restart local v27       #freqField:I
    goto/16 :goto_10a

    .line 687
    .restart local v12       #bymonthCount:I
    .restart local v52       #usebymonth:Z
    :cond_231
    const/16 v55, 0x0

    move/from16 v49, v55

    goto/16 :goto_13a

    .line 728
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v13       #bysecondCount:I
    .restart local v49       #useDays:Z
    .restart local v50       #usebyhour:Z
    .restart local v51       #usebyminute:Z
    .restart local v53       #usebysecond:Z
    :cond_237
    const-wide v46, 0x7fffffffffffffffL

    .restart local v46       #untilDateValue:J
    goto :goto_1cc

    .line 752
    .restart local v21       #eventEnded:Z
    .restart local v22       #failsafe:I
    .restart local v39       #monthIndex:I
    :cond_23d
    invoke-static/range {v31 .. v31}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 754
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v9, v0

    .line 755
    .local v9, iteratorYear:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v35, v55, 0x1

    .line 756
    .local v35, iteratorMonth:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v32, v0

    .line 757
    .local v32, iteratorDay:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v33, v0

    .line 758
    .local v33, iteratorHour:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v34, v0

    .line 759
    .local v34, iteratorMinute:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v36, v0

    .line 762
    .local v36, iteratorSecond:I
    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 767
    :cond_26b
    if-eqz v52, :cond_2e5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v55, v55, v39

    move/from16 v8, v55

    .line 770
    .local v8, month:I
    :goto_277
    add-int/lit8 v8, v8, -0x1

    .line 773
    const/4 v15, 0x1

    .line 774
    .local v15, dayIndex:I
    const/16 v37, 0x0

    .line 779
    .local v37, lastDayToExamine:I
    if-eqz v49, :cond_296

    .line 783
    const/16 v55, 0x5

    move/from16 v0, v25

    move/from16 v1, v55

    if-ne v0, v1, :cond_2e8

    .line 784
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v17, v0

    .line 785
    .local v17, dow:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v17

    .line 786
    add-int/lit8 v37, v15, 0x6

    .line 798
    .end local v17           #dow:I
    :cond_296
    :goto_296
    if-eqz v49, :cond_33d

    .line 799
    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_2f2

    .line 800
    add-int/lit8 v15, v15, 0x1

    .line 904
    :goto_2a5
    if-eqz v49, :cond_2ac

    move v0, v15

    move/from16 v1, v37

    if-le v0, v1, :cond_296

    .line 905
    :cond_2ac
    add-int/lit8 v39, v39, 0x1

    .line 906
    if-eqz v52, :cond_2b5

    move/from16 v0, v39

    move v1, v12

    if-lt v0, v1, :cond_26b

    .line 912
    :cond_2b5
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v41, v0

    .line 913
    .local v41, oldDay:I
    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 914
    const/16 v40, 0x1

    .line 916
    .local v40, n:I
    :goto_2c3
    mul-int v54, v26, v40

    .line 917
    .local v54, value:I
    packed-switch v27, :pswitch_data_45a

    .line 943
    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad field="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    .end local v8           #month:I
    .end local v15           #dayIndex:I
    .end local v37           #lastDayToExamine:I
    .end local v40           #n:I
    .end local v41           #oldDay:I
    .end local v54           #value:I
    :cond_2e5
    move/from16 v8, v35

    .line 767
    goto :goto_277

    .line 788
    .restart local v8       #month:I
    .restart local v15       #dayIndex:I
    .restart local v37       #lastDayToExamine:I
    :cond_2e8
    const/16 v55, 0x4

    move-object v0, v3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v37

    goto :goto_296

    .line 803
    :cond_2f2
    move v7, v15

    .line 811
    .local v7, day:I
    :goto_2f3
    const/16 v30, 0x0

    .line 813
    .local v30, hourIndex:I
    :cond_2f5
    if-eqz v50, :cond_340

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v55, v55, v30

    move/from16 v6, v55

    .line 819
    .local v6, hour:I
    :goto_301
    const/16 v38, 0x0

    .line 821
    .local v38, minuteIndex:I
    :cond_303
    if-eqz v51, :cond_343

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v55, v55, v38

    move/from16 v5, v55

    .line 827
    .local v5, minute:I
    :goto_30f
    const/16 v43, 0x0

    .line 829
    .local v43, secondIndex:I
    :cond_311
    if-eqz v53, :cond_346

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v55, v55, v43

    move/from16 v4, v55

    .line 837
    .local v4, second:I
    :goto_31d
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 838
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 840
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v28

    .line 844
    .local v28, genDateValue:J
    cmp-long v55, v28, v18

    if-ltz v55, :cond_378

    .line 846
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor;->filter(Landroid/pim/EventRecurrence;Landroid/text/format/Time;)I

    move-result v24

    .line 847
    .local v24, filtered:I
    if-nez v24, :cond_378

    .line 854
    if-nez p7, :cond_349

    .line 855
    add-int/lit8 v14, v14, 0x1

    .line 861
    :cond_338
    :goto_338
    cmp-long v55, v28, v46

    if-lez v55, :cond_350

    .line 969
    :cond_33c
    return-void

    .line 806
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v24           #filtered:I
    .end local v28           #genDateValue:J
    .end local v30           #hourIndex:I
    .end local v38           #minuteIndex:I
    .end local v43           #secondIndex:I
    :cond_33d
    move/from16 v7, v32

    .restart local v7       #day:I
    goto :goto_2f3

    .restart local v30       #hourIndex:I
    :cond_340
    move/from16 v6, v33

    .line 813
    goto :goto_301

    .restart local v6       #hour:I
    .restart local v38       #minuteIndex:I
    :cond_343
    move/from16 v5, v34

    .line 821
    goto :goto_30f

    .restart local v5       #minute:I
    .restart local v43       #secondIndex:I
    :cond_346
    move/from16 v4, v36

    .line 829
    goto :goto_31d

    .line 856
    .restart local v4       #second:I
    .restart local v24       #filtered:I
    .restart local v28       #genDateValue:J
    :cond_349
    cmp-long v55, v18, v28

    if-eqz v55, :cond_338

    .line 857
    add-int/lit8 v14, v14, 0x1

    goto :goto_338

    .line 871
    :cond_350
    cmp-long v55, v28, p5

    if-gez v55, :cond_33c

    .line 880
    cmp-long v55, v28, p3

    if-ltz v55, :cond_365

    .line 884
    if-eqz p7, :cond_397

    .line 885
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_365
    :goto_365
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_378

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    move v1, v14

    if-eq v0, v1, :cond_33c

    .line 897
    .end local v24           #filtered:I
    :cond_378
    add-int/lit8 v43, v43, 0x1

    .line 898
    if-eqz v53, :cond_381

    move/from16 v0, v43

    move v1, v13

    if-lt v0, v1, :cond_311

    .line 899
    :cond_381
    add-int/lit8 v38, v38, 0x1

    .line 900
    if-eqz v51, :cond_38a

    move/from16 v0, v38

    move v1, v11

    if-lt v0, v1, :cond_303

    .line 901
    :cond_38a
    add-int/lit8 v30, v30, 0x1

    .line 902
    if-eqz v50, :cond_393

    move/from16 v0, v30

    move v1, v10

    if-lt v0, v1, :cond_2f5

    .line 903
    :cond_393
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2a5

    .line 887
    .restart local v24       #filtered:I
    :cond_397
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_365

    .line 919
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v24           #filtered:I
    .end local v28           #genDateValue:J
    .end local v30           #hourIndex:I
    .end local v38           #minuteIndex:I
    .end local v43           #secondIndex:I
    .restart local v40       #n:I
    .restart local v41       #oldDay:I
    .restart local v54       #value:I
    :pswitch_3a3
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 946
    :goto_3b1
    invoke-static/range {v31 .. v31}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 947
    const/16 v55, 0x6

    move/from16 v0, v27

    move/from16 v1, v55

    if-eq v0, v1, :cond_431

    const/16 v55, 0x5

    move/from16 v0, v27

    move/from16 v1, v55

    if-eq v0, v1, :cond_431

    :cond_3c4
    move/from16 v23, v22

    .line 956
    .end local v22           #failsafe:I
    .restart local v23       #failsafe:I
    goto/16 :goto_1e4

    .line 922
    .end local v23           #failsafe:I
    .restart local v22       #failsafe:I
    :pswitch_3c8
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_3b1

    .line 925
    :pswitch_3d7
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_3b1

    .line 928
    :pswitch_3e6
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_3b1

    .line 931
    :pswitch_3f5
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_3b1

    .line 934
    :pswitch_404
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_3b1

    .line 937
    :pswitch_413
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_3b1

    .line 940
    :pswitch_422
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_3b1

    .line 950
    :cond_431
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v41

    if-eq v0, v1, :cond_3c4

    .line 953
    add-int/lit8 v40, v40, 0x1

    .line 954
    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_445
    .catch Landroid/pim/DateException; {:try_start_10e .. :try_end_445} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_10e .. :try_end_445} :catch_cc

    goto/16 :goto_2c3

    .line 651
    nop

    :pswitch_data_448
    .packed-switch 0x1
        :pswitch_108
        :pswitch_20d
        :pswitch_211
        :pswitch_215
        :pswitch_219
        :pswitch_229
        :pswitch_22d
    .end packed-switch

    .line 917
    :pswitch_data_45a
    .packed-switch 0x1
        :pswitch_3a3
        :pswitch_3c8
        :pswitch_3d7
        :pswitch_3e6
        :pswitch_3f5
        :pswitch_404
        :pswitch_413
        :pswitch_422
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J
    .registers 41
    .parameter "dtstart"
    .parameter "recur"
    .parameter "rangeStartMillis"
    .parameter "rangeEndMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    .line 523
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 524
    .local v32, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v6

    .line 535
    .local v6, rangeStartDateValue:J
    const-wide/16 v3, -0x1

    cmp-long v3, p5, v3

    if-eqz v3, :cond_76

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v8

    .line 542
    .local v8, rangeEndDateValue:J
    :goto_4a
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 544
    .local v11, dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v3, v0

    if-eqz v3, :cond_7c

    .line 545
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object/from16 v21, v0

    .local v21, arr$:[Landroid/pim/EventRecurrence;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v29, 0x0

    .local v29, i$:I
    :goto_63
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_7c

    aget-object v5, v21, v29

    .line 546
    .local v5, rrule:Landroid/pim/EventRecurrence;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 545
    add-int/lit8 v29, v29, 0x1

    goto :goto_63

    .line 539
    .end local v5           #rrule:Landroid/pim/EventRecurrence;
    .end local v8           #rangeEndDateValue:J
    .end local v11           #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .end local v21           #arr$:[Landroid/pim/EventRecurrence;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_76
    const-wide v8, 0x7fffffffffffffffL

    .restart local v8       #rangeEndDateValue:J
    goto :goto_4a

    .line 550
    .restart local v11       #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_7c
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v3, v0

    if-eqz v3, :cond_b6

    .line 551
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object/from16 v21, v0

    .local v21, arr$:[J
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_90
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_b6

    aget-wide v23, v21, v29

    .line 554
    .local v23, dt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v25

    .line 556
    .local v25, dtvalue:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v29, v29, 0x1

    goto :goto_90

    .line 559
    .end local v21           #arr$:[J
    .end local v23           #dt:J
    .end local v25           #dtvalue:J
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_b6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object v3, v0

    if-eqz v3, :cond_e3

    .line 560
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object/from16 v21, v0

    .local v21, arr$:[Landroid/pim/EventRecurrence;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_ca
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_e3

    aget-object v14, v21, v29

    .line 561
    .local v14, exrule:Landroid/pim/EventRecurrence;
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 560
    add-int/lit8 v29, v29, 0x1

    goto :goto_ca

    .line 565
    .end local v14           #exrule:Landroid/pim/EventRecurrence;
    .end local v21           #arr$:[Landroid/pim/EventRecurrence;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_e3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object v3, v0

    if-eqz v3, :cond_11d

    .line 566
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object/from16 v21, v0

    .local v21, arr$:[J
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_f7
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_11d

    aget-wide v23, v21, v29

    .line 569
    .restart local v23       #dt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v25

    .line 571
    .restart local v25       #dtvalue:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v29, v29, 0x1

    goto :goto_f7

    .line 574
    .end local v21           #arr$:[J
    .end local v23           #dt:J
    .end local v25           #dtvalue:J
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_11d
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 577
    const/4 v3, 0x0

    new-array v3, v3, [J

    .line 591
    :goto_126
    return-object v3

    .line 584
    :cond_127
    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v30

    .line 585
    .local v30, len:I
    move/from16 v0, v30

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 586
    .local v22, dates:[J
    const/16 v27, 0x0

    .line 587
    .local v27, i:I
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_137
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_160

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    .line 588
    .local v33, val:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/calendar/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 589
    add-int/lit8 v28, v27, 0x1

    .end local v27           #i:I
    .local v28, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    aput-wide v3, v22, v27

    move/from16 v27, v28

    .end local v28           #i:I
    .restart local v27       #i:I
    goto :goto_137

    .end local v33           #val:Ljava/lang/Long;
    :cond_160
    move-object/from16 v3, v22

    .line 591
    goto :goto_126
.end method

.method generateByList(III)I
    .registers 5
    .parameter "count"
    .parameter "freq"
    .parameter "byFreq"

    .prologue
    const/4 v0, 0x0

    .line 283
    if-lt p3, p2, :cond_4

    .line 289
    :cond_3
    :goto_3
    return v0

    .line 286
    :cond_4
    if-eqz p1, :cond_3

    .line 289
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J
    .registers 24
    .parameter "dtstart"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    .line 66
    const-wide/16 v15, -0x1

    .line 67
    .local v15, lastTime:J
    const/4 v13, 0x0

    .line 71
    .local v13, hasCount:Z
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v2, v0

    if-eqz v2, :cond_7e

    .line 72
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v9, v0

    .local v9, arr$:[Landroid/pim/EventRecurrence;
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_14
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_4e

    aget-object v18, v9, v14

    .line 73
    .local v18, rrule:Landroid/pim/EventRecurrence;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move v2, v0

    if-eqz v2, :cond_26

    .line 74
    const/4 v13, 0x1

    .line 72
    :cond_23
    :goto_23
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    .line 75
    :cond_26
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_4b

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v2, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    .line 79
    .local v19, untilTime:J
    cmp-long v2, v19, v15

    if-lez v2, :cond_23

    .line 80
    move-wide/from16 v15, v19

    goto :goto_23

    .line 85
    .end local v19           #untilTime:J
    :cond_4b
    const-wide/16 v2, -0x1

    .line 128
    .end local v9           #arr$:[Landroid/pim/EventRecurrence;
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v18           #rrule:Landroid/pim/EventRecurrence;
    :goto_4d
    return-wide v2

    .line 88
    .restart local v9       #arr$:[Landroid/pim/EventRecurrence;
    .restart local v14       #i$:I
    .restart local v17       #len$:I
    :cond_4e
    const-wide/16 v2, -0x1

    cmp-long v2, v15, v2

    if-eqz v2, :cond_74

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_74

    .line 89
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v9, v0

    .local v9, arr$:[J
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_65
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_74

    aget-wide v11, v9, v14

    .line 90
    .local v11, dt:J
    cmp-long v2, v11, v15

    if-lez v2, :cond_71

    .line 91
    move-wide v15, v11

    .line 89
    :cond_71
    add-int/lit8 v14, v14, 0x1

    goto :goto_65

    .line 98
    .end local v9           #arr$:[J
    .end local v11           #dt:J
    :cond_74
    const-wide/16 v2, -0x1

    cmp-long v2, v15, v2

    if-eqz v2, :cond_ae

    if-nez v13, :cond_ae

    move-wide v2, v15

    .line 99
    goto :goto_4d

    .line 101
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_7e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_ae

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object v2, v0

    if-nez v2, :cond_ae

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object v2, v0

    if-nez v2, :cond_ae

    .line 104
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v9, v0

    .restart local v9       #arr$:[J
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_9d
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_ac

    aget-wide v11, v9, v14

    .line 105
    .restart local v11       #dt:J
    cmp-long v2, v11, v15

    if-lez v2, :cond_a9

    .line 106
    move-wide v15, v11

    .line 104
    :cond_a9
    add-int/lit8 v14, v14, 0x1

    goto :goto_9d

    .end local v11           #dt:J
    :cond_ac
    move-wide v2, v15

    .line 109
    goto :goto_4d

    .line 114
    .end local v9           #arr$:[J
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_ae
    if-nez v13, :cond_b7

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_d9

    .line 117
    :cond_b7
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J

    move-result-object v10

    .line 123
    .local v10, dates:[J
    array-length v2, v10

    if-nez v2, :cond_d2

    .line 124
    const-wide/16 v2, 0x0

    goto/16 :goto_4d

    .line 126
    :cond_d2
    array-length v2, v10

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v2, v10, v2

    goto/16 :goto_4d

    .line 128
    .end local v10           #dates:[J
    :cond_d9
    const-wide/16 v2, -0x1

    goto/16 :goto_4d
.end method
