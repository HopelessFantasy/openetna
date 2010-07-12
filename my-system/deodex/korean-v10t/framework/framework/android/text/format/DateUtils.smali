.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000

.field public static final FORMAT_CAP_NOON:I = 0x400

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"

.field public static final LENGTH_LONG:I = 0xa

.field public static final LENGTH_MEDIUM:I = 0x14

.field public static final LENGTH_SHORT:I = 0x1e

.field public static final LENGTH_SHORTER:I = 0x28

.field public static final LENGTH_SHORTEST:I = 0x32

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_5c

    sput-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_6e

    sput-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_80

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_92

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .line 74
    new-array v0, v2, [I

    fill-array-data v0, :array_a4

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 88
    new-array v0, v2, [I

    fill-array-data v0, :array_c0

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .line 102
    new-array v0, v2, [I

    fill-array-data v0, :array_dc

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 116
    new-array v0, v2, [I

    fill-array-data v0, :array_f8

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_114

    sput-object v0, Landroid/text/format/DateUtils;->sAmPm:[I

    .line 203
    new-array v0, v3, [I

    fill-array-data v0, :array_11c

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 229
    new-array v0, v3, [I

    fill-array-data v0, :array_140

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 38
    nop

    :array_5c
    .array-data 0x4
        0x2bt 0x2t 0x4t 0x1t
        0x2ct 0x2t 0x4t 0x1t
        0x2dt 0x2t 0x4t 0x1t
        0x2et 0x2t 0x4t 0x1t
        0x2ft 0x2t 0x4t 0x1t
        0x30t 0x2t 0x4t 0x1t
        0x31t 0x2t 0x4t 0x1t
    .end array-data

    .line 47
    :array_6e
    .array-data 0x4
        0x32t 0x2t 0x4t 0x1t
        0x33t 0x2t 0x4t 0x1t
        0x34t 0x2t 0x4t 0x1t
        0x35t 0x2t 0x4t 0x1t
        0x36t 0x2t 0x4t 0x1t
        0x37t 0x2t 0x4t 0x1t
        0x38t 0x2t 0x4t 0x1t
    .end array-data

    .line 56
    :array_80
    .array-data 0x4
        0x39t 0x2t 0x4t 0x1t
        0x3at 0x2t 0x4t 0x1t
        0x3bt 0x2t 0x4t 0x1t
        0x3ct 0x2t 0x4t 0x1t
        0x3dt 0x2t 0x4t 0x1t
        0x3et 0x2t 0x4t 0x1t
        0x3ft 0x2t 0x4t 0x1t
    .end array-data

    .line 65
    :array_92
    .array-data 0x4
        0x47t 0x2t 0x4t 0x1t
        0x48t 0x2t 0x4t 0x1t
        0x49t 0x2t 0x4t 0x1t
        0x4at 0x2t 0x4t 0x1t
        0x4bt 0x2t 0x4t 0x1t
        0x4ct 0x2t 0x4t 0x1t
        0x4dt 0x2t 0x4t 0x1t
    .end array-data

    .line 74
    :array_a4
    .array-data 0x4
        0x5at 0x2t 0x4t 0x1t
        0x5bt 0x2t 0x4t 0x1t
        0x5ct 0x2t 0x4t 0x1t
        0x5dt 0x2t 0x4t 0x1t
        0x5et 0x2t 0x4t 0x1t
        0x5ft 0x2t 0x4t 0x1t
        0x60t 0x2t 0x4t 0x1t
        0x61t 0x2t 0x4t 0x1t
        0x62t 0x2t 0x4t 0x1t
        0x63t 0x2t 0x4t 0x1t
        0x64t 0x2t 0x4t 0x1t
        0x65t 0x2t 0x4t 0x1t
    .end array-data

    .line 88
    :array_c0
    .array-data 0x4
        0x4et 0x2t 0x4t 0x1t
        0x4ft 0x2t 0x4t 0x1t
        0x50t 0x2t 0x4t 0x1t
        0x51t 0x2t 0x4t 0x1t
        0x52t 0x2t 0x4t 0x1t
        0x53t 0x2t 0x4t 0x1t
        0x54t 0x2t 0x4t 0x1t
        0x55t 0x2t 0x4t 0x1t
        0x56t 0x2t 0x4t 0x1t
        0x57t 0x2t 0x4t 0x1t
        0x58t 0x2t 0x4t 0x1t
        0x59t 0x2t 0x4t 0x1t
    .end array-data

    .line 102
    :array_dc
    .array-data 0x4
        0x66t 0x2t 0x4t 0x1t
        0x67t 0x2t 0x4t 0x1t
        0x68t 0x2t 0x4t 0x1t
        0x69t 0x2t 0x4t 0x1t
        0x6at 0x2t 0x4t 0x1t
        0x6bt 0x2t 0x4t 0x1t
        0x6ct 0x2t 0x4t 0x1t
        0x6dt 0x2t 0x4t 0x1t
        0x6et 0x2t 0x4t 0x1t
        0x6ft 0x2t 0x4t 0x1t
        0x70t 0x2t 0x4t 0x1t
        0x71t 0x2t 0x4t 0x1t
    .end array-data

    .line 116
    :array_f8
    .array-data 0x4
        0x72t 0x2t 0x4t 0x1t
        0x73t 0x2t 0x4t 0x1t
        0x74t 0x2t 0x4t 0x1t
        0x75t 0x2t 0x4t 0x1t
        0x76t 0x2t 0x4t 0x1t
        0x77t 0x2t 0x4t 0x1t
        0x78t 0x2t 0x4t 0x1t
        0x79t 0x2t 0x4t 0x1t
        0x7at 0x2t 0x4t 0x1t
        0x7bt 0x2t 0x4t 0x1t
        0x7ct 0x2t 0x4t 0x1t
        0x7dt 0x2t 0x4t 0x1t
    .end array-data

    .line 130
    :array_114
    .array-data 0x4
        0xeft 0x1t 0x4t 0x1t
        0xf0t 0x1t 0x4t 0x1t
    .end array-data

    .line 203
    :array_11c
    .array-data 0x4
        0xft 0x2t 0x4t 0x1t
        0x10t 0x2t 0x4t 0x1t
        0x11t 0x2t 0x4t 0x1t
        0x12t 0x2t 0x4t 0x1t
        0x13t 0x2t 0x4t 0x1t
        0x14t 0x2t 0x4t 0x1t
        0x15t 0x2t 0x4t 0x1t
        0x16t 0x2t 0x4t 0x1t
        0x17t 0x2t 0x4t 0x1t
        0x18t 0x2t 0x4t 0x1t
        0x19t 0x2t 0x4t 0x1t
        0x1at 0x2t 0x4t 0x1t
        0x1bt 0x2t 0x4t 0x1t
        0x1ct 0x2t 0x4t 0x1t
        0x1dt 0x2t 0x4t 0x1t
        0x1et 0x2t 0x4t 0x1t
    .end array-data

    .line 229
    :array_140
    .array-data 0x4
        0x1ft 0x2t 0x4t 0x1t
        0x20t 0x2t 0x4t 0x1t
        0x21t 0x2t 0x4t 0x1t
        0x22t 0x2t 0x4t 0x1t
        0x23t 0x2t 0x4t 0x1t
        0x24t 0x2t 0x4t 0x1t
        0x25t 0x2t 0x4t 0x1t
        0x26t 0x2t 0x4t 0x1t
        0x17t 0x2t 0x4t 0x1t
        0x18t 0x2t 0x4t 0x1t
        0x19t 0x2t 0x4t 0x1t
        0x1at 0x2t 0x4t 0x1t
        0x1bt 0x2t 0x4t 0x1t
        0x1ct 0x2t 0x4t 0x1t
        0x1dt 0x2t 0x4t 0x1t
        0x1et 0x2t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 4
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 1187
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 1188
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1189
    return-void
.end method

.method private static final check(III)I
    .registers 6
    .parameter "lowerBound"
    .parameter "upperBound"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    .line 988
    if-lt p2, p0, :cond_5

    if-gt p2, p1, :cond_5

    .line 989
    return p2

    .line 991
    :cond_5
    new-instance v0, Landroid/pim/DateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field out of bounds.  max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final ctoi(Ljava/lang/String;I)I
    .registers 6
    .parameter "str"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x30

    .line 973
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 974
    .local v0, c:C
    if-lt v0, v2, :cond_f

    const/16 v1, 0x39

    if-gt v0, v1, :cond_f

    .line 975
    sub-int v1, v0, v2

    return v1

    .line 977
    :cond_f
    new-instance v1, Landroid/pim/DateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected numeric character.  Got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 35
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 1342
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 1343
    .local v17, res:Landroid/content/res/Resources;
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_158

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 1344
    .local v18, showTime:Z
    :goto_b
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_15d

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 1345
    .local v19, showWeekDay:Z
    :goto_12
    and-int/lit8 v4, p5, 0x4

    if-eqz v4, :cond_162

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 1346
    .local v20, showYear:Z
    :goto_19
    and-int/lit8 v4, p5, 0x8

    if-eqz v4, :cond_167

    const/4 v4, 0x1

    move v15, v4

    .line 1347
    .local v15, noYear:Z
    :goto_1f
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x2000

    move v4, v0

    if-eqz v4, :cond_16b

    const/4 v4, 0x1

    move v6, v4

    .line 1348
    .local v6, useUTC:Z
    :goto_28
    const v4, 0x88000

    and-int v4, v4, p5

    if-eqz v4, :cond_16f

    const/4 v4, 0x1

    move v5, v4

    .line 1349
    .local v5, abbrevWeekDay:Z
    :goto_31
    const/high16 v4, 0x9

    and-int v4, v4, p5

    if-eqz v4, :cond_173

    const/4 v4, 0x1

    .line 1350
    .local v4, abbrevMonth:Z
    :goto_38
    and-int/lit8 v7, p5, 0x20

    if-eqz v7, :cond_176

    const/4 v7, 0x1

    move v13, v7

    .line 1351
    .local v13, noMonthDay:Z
    :goto_3e
    const/high16 v7, 0x2

    and-int v7, v7, p5

    if-eqz v7, :cond_17a

    const/4 v7, 0x1

    move/from16 v16, v7

    .line 1356
    .local v16, numericDate:Z
    :goto_47
    cmp-long v7, p1, p3

    if-nez v7, :cond_17f

    const/4 v7, 0x1

    move v11, v7

    .line 1358
    .local v11, isInstant:Z
    :goto_4d
    if-eqz v6, :cond_183

    new-instance v7, Landroid/text/format/Time;

    const-string v8, "UTC"

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v7

    .line 1359
    .local v21, startDate:Landroid/text/format/Time;
    :goto_58
    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1363
    if-eqz v11, :cond_18c

    .line 1364
    move-object/from16 p2, v21

    .line 1365
    .end local p1
    .local p2, endDate:Landroid/text/format/Time;
    const/16 p1, 0x0

    .local p1, dayDistance:I
    move-object/from16 p4, p2

    .line 1388
    .end local v6           #useUTC:Z
    .end local p2           #endDate:Landroid/text/format/Time;
    .end local p3
    .local p4, endDate:Ljava/lang/Object;
    :goto_67
    if-nez v11, :cond_a4

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 p3, v0

    or-int p2, p2, p3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 p3, v0

    or-int p2, p2, p3

    if-nez p2, :cond_a4

    if-eqz v18, :cond_8b

    const/16 p2, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_a4

    .line 1391
    :cond_8b
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 p1, v0

    .end local p1           #dayDistance:I
    const/16 p2, 0x1

    sub-int p1, p1, p2

    move/from16 v0, p1

    move-object/from16 v1, p4

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1392
    const/16 p1, 0x1

    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1395
    :cond_a4
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    .line 1396
    .local v22, startDay:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v23, v0

    .line 1397
    .local v23, startMonthNum:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v27, v0

    .line 1399
    .local v27, startYear:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v6, v0

    .line 1400
    .local v6, endDay:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    .line 1401
    .local v7, endMonthNum:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v10, v0

    .line 1403
    .local v10, endYear:I
    const-string p2, ""

    .line 1404
    .local p2, startWeekDayString:Ljava/lang/String;
    const-string p1, ""

    .line 1405
    .local p1, endWeekDayString:Ljava/lang/String;
    if-eqz v19, :cond_686

    .line 1406
    const-string p1, ""

    .line 1407
    .local p1, weekDayFormat:Ljava/lang/String;
    if-eqz v5, :cond_1bc

    .line 1408
    const-string p1, "%a"

    .line 1412
    :goto_d1
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1413
    if-eqz v11, :cond_1c0

    move-object/from16 p1, p2

    .local p1, endWeekDayString:Ljava/lang/String;
    :goto_dd
    move-object/from16 v9, p1

    .end local p1           #endWeekDayString:Ljava/lang/String;
    .local v9, endWeekDayString:Ljava/lang/String;
    move-object/from16 v26, p2

    .line 1416
    .end local p2           #startWeekDayString:Ljava/lang/String;
    .local v26, startWeekDayString:Ljava/lang/String;
    :goto_e1
    const-string p2, ""

    .line 1417
    .local p2, startTimeString:Ljava/lang/String;
    const-string p1, ""

    .line 1418
    .local p1, endTimeString:Ljava/lang/String;
    if-eqz v18, :cond_680

    .line 1419
    const-string p1, ""

    .line 1420
    .local p1, startTimeFormat:Ljava/lang/String;
    const-string v8, ""

    .line 1421
    .local v8, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x80

    move/from16 p1, v0

    if-eqz p1, :cond_1ca

    .end local p1           #startTimeFormat:Ljava/lang/String;
    const/16 p1, 0x1

    move/from16 p2, p1

    .line 1422
    .local p2, force24Hour:Z
    :goto_f7
    and-int/lit8 p1, p5, 0x40

    if-eqz p1, :cond_1d0

    const/16 p1, 0x1

    .line 1424
    .local p1, force12Hour:Z
    :goto_fd
    if-eqz p2, :cond_1d4

    .line 1425
    const/16 p0, 0x1

    .line 1431
    .local p0, use24Hour:Z
    :goto_101
    if-eqz p0, :cond_1e0

    .line 1432
    const p0, 0x10401aa

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #use24Hour:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .line 1503
    .end local v5           #abbrevWeekDay:Z
    .end local p2           #force24Hour:Z
    .local p1, startTimeFormat:Ljava/lang/String;
    :goto_110
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1504
    .local p1, startTimeString:Ljava/lang/String;
    if-eqz v11, :cond_35e

    move-object/from16 p0, p1

    .local p0, endTimeString:Ljava/lang/String;
    :goto_11c
    move-object/from16 p3, p0

    .end local p0           #endTimeString:Ljava/lang/String;
    .local p3, endTimeString:Ljava/lang/String;
    move-object/from16 v12, p1

    .line 1511
    .end local p1           #startTimeString:Ljava/lang/String;
    .local v12, startTimeString:Ljava/lang/String;
    :goto_120
    if-eqz v20, :cond_368

    move/from16 v5, v20

    .line 1528
    .end local v20           #showYear:Z
    .local v5, showYear:I
    :goto_124
    if-eqz v16, :cond_398

    .line 1529
    const p0, 0x10401f1

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .line 1560
    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    :goto_133
    if-eqz v19, :cond_42d

    .line 1561
    if-eqz v18, :cond_41e

    .line 1562
    const p0, 0x10401f4

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1574
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    :goto_144
    if-eqz v13, :cond_44d

    move/from16 v0, v23

    move v1, v7

    if-ne v0, v1, :cond_44d

    .line 1576
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .local p0, startDateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .line 1716
    .end local v4           #abbrevMonth:Z
    .end local v5           #showYear:I
    .end local v10           #endYear:I
    .end local v13           #noMonthDay:Z
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    .end local p2           #fullFormat:Ljava/lang/String;
    .end local p3           #endTimeString:Ljava/lang/String;
    .end local p4           #endDate:Ljava/lang/Object;
    .end local p5
    .local p0, fullFormat:Ljava/lang/String;
    :goto_157
    return-object p1

    .line 1343
    .end local v6           #endDay:I
    .end local v7           #endMonthNum:I
    .end local v9           #endWeekDayString:Ljava/lang/String;
    .end local v11           #isInstant:Z
    .end local v12           #startTimeString:Ljava/lang/String;
    .end local v15           #noYear:Z
    .end local v16           #numericDate:Z
    .end local v18           #showTime:Z
    .end local v19           #showWeekDay:Z
    .end local v21           #startDate:Landroid/text/format/Time;
    .end local v22           #startDay:I
    .end local v23           #startMonthNum:I
    .end local v26           #startWeekDayString:Ljava/lang/String;
    .end local v27           #startYear:I
    .local p0, context:Landroid/content/Context;
    .local p1, startMillis:J
    .local p3, endMillis:J
    .restart local p5
    :cond_158
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_b

    .line 1344
    .restart local v18       #showTime:Z
    :cond_15d
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_12

    .line 1345
    .restart local v19       #showWeekDay:Z
    :cond_162
    const/4 v4, 0x0

    move/from16 v20, v4

    goto/16 :goto_19

    .line 1346
    .restart local v20       #showYear:Z
    :cond_167
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_1f

    .line 1347
    .restart local v15       #noYear:Z
    :cond_16b
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_28

    .line 1348
    .local v6, useUTC:Z
    :cond_16f
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_31

    .line 1349
    .local v5, abbrevWeekDay:Z
    :cond_173
    const/4 v4, 0x0

    goto/16 :goto_38

    .line 1350
    .restart local v4       #abbrevMonth:Z
    :cond_176
    const/4 v7, 0x0

    move v13, v7

    goto/16 :goto_3e

    .line 1351
    .restart local v13       #noMonthDay:Z
    :cond_17a
    const/4 v7, 0x0

    move/from16 v16, v7

    goto/16 :goto_47

    .line 1356
    .restart local v16       #numericDate:Z
    :cond_17f
    const/4 v7, 0x0

    move v11, v7

    goto/16 :goto_4d

    .line 1358
    .restart local v11       #isInstant:Z
    :cond_183
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v21, v7

    goto/16 :goto_58

    .line 1367
    .restart local v21       #startDate:Landroid/text/format/Time;
    :cond_18c
    if-eqz v6, :cond_1b6

    new-instance v6, Landroid/text/format/Time;

    .end local v6           #useUTC:Z
    const-string v7, "UTC"

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1368
    .local v6, endDate:Landroid/text/format/Time;
    :goto_195
    move-object v0, v6

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1369
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v7, v0

    move-wide/from16 v0, p1

    move-wide v2, v7

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p2

    .line 1370
    .end local p1           #startMillis:J
    .local p2, startJulianDay:I
    iget-wide v7, v6, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    move-wide v2, v7

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    .line 1371
    .local p1, endJulianDay:I
    sub-int p1, p1, p2

    .local p1, dayDistance:I
    move-object/from16 p4, v6

    .end local p3           #endMillis:J
    .restart local p4       #endDate:Ljava/lang/Object;
    goto/16 :goto_67

    .line 1367
    .end local p2           #startJulianDay:I
    .end local p4           #endDate:Ljava/lang/Object;
    .local v6, useUTC:Z
    .local p1, startMillis:J
    .restart local p3       #endMillis:J
    :cond_1b6
    new-instance v6, Landroid/text/format/Time;

    .end local v6           #useUTC:Z
    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    goto :goto_195

    .line 1410
    .end local p3           #endMillis:J
    .local v6, endDay:I
    .restart local v7       #endMonthNum:I
    .restart local v10       #endYear:I
    .restart local v22       #startDay:I
    .restart local v23       #startMonthNum:I
    .restart local v27       #startYear:I
    .local p1, weekDayFormat:Ljava/lang/String;
    .local p2, startWeekDayString:Ljava/lang/String;
    .restart local p4       #endDate:Ljava/lang/Object;
    :cond_1bc
    const-string p1, "%A"

    goto/16 :goto_d1

    .line 1413
    :cond_1c0
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_dd

    .line 1421
    .end local p1           #weekDayFormat:Ljava/lang/String;
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .restart local v9       #endWeekDayString:Ljava/lang/String;
    .restart local v26       #startWeekDayString:Ljava/lang/String;
    .local p2, startTimeString:Ljava/lang/String;
    :cond_1ca
    const/16 p1, 0x0

    move/from16 p2, p1

    goto/16 :goto_f7

    .line 1422
    .local p2, force24Hour:Z
    :cond_1d0
    const/16 p1, 0x0

    goto/16 :goto_fd

    .line 1426
    .local p1, force12Hour:Z
    :cond_1d4
    if-eqz p1, :cond_1da

    .line 1427
    const/16 p0, 0x0

    .local p0, use24Hour:Z
    goto/16 :goto_101

    .line 1429
    .local p0, context:Landroid/content/Context;
    :cond_1da
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    .local p0, use24Hour:Z
    goto/16 :goto_101

    .line 1435
    :cond_1e0
    const p0, 0x84000

    and-int p0, p0, p5

    if-eqz p0, :cond_2a4

    .end local p0           #use24Hour:Z
    const/16 p0, 0x1

    .line 1436
    .local p0, abbrevTime:Z
    :goto_1e9
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x100

    move/from16 p1, v0

    if-eqz p1, :cond_2a8

    .end local p1           #force12Hour:Z
    const/16 p1, 0x1

    .line 1437
    .local p1, capAMPM:Z
    :goto_1f3
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x200

    move/from16 p2, v0

    if-eqz p2, :cond_2ac

    .end local p2           #force24Hour:Z
    const/16 p2, 0x1

    move/from16 v14, p2

    .line 1438
    .local v14, noNoon:Z
    :goto_1ff
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x400

    move/from16 p2, v0

    if-eqz p2, :cond_2b2

    const/16 p2, 0x1

    move/from16 p3, p2

    .line 1439
    .local p3, capNoon:Z
    :goto_20b
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x800

    move/from16 p2, v0

    if-eqz p2, :cond_2b8

    const/16 p2, 0x1

    move/from16 v12, p2

    .line 1440
    .local v12, noMidnight:Z
    :goto_217
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0x1000

    move/from16 p2, v0

    if-eqz p2, :cond_2be

    const/16 p2, 0x1

    .line 1442
    .local p2, capMidnight:Z
    :goto_221
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    .end local v5           #abbrevWeekDay:Z
    if-nez v5, :cond_2c2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_2c2

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 1443
    .local v24, startOnTheHour:Z
    :goto_232
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    if-nez v5, :cond_2c7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_2c7

    const/4 v5, 0x1

    .line 1444
    .local v5, endOnTheHour:Z
    :goto_241
    if-eqz p0, :cond_2d7

    if-eqz v24, :cond_2d7

    .line 1445
    if-eqz p1, :cond_2ca

    .line 1446
    const v25, 0x10401ac

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1462
    .local v25, startTimeFormat:Ljava/lang/String;
    :goto_252
    if-nez v11, :cond_67c

    .line 1463
    if-eqz p0, :cond_300

    if-eqz v5, :cond_300

    .line 1464
    if-eqz p1, :cond_2f3

    .line 1465
    const p0, 0x10401ac

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .line 1477
    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    :goto_265
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p1, v0

    .end local p1           #capAMPM:Z
    const/16 v8, 0xc

    move/from16 v0, p1

    move v1, v8

    if-ne v0, v1, :cond_329

    if-eqz v5, :cond_329

    if-nez v14, :cond_329

    .line 1478
    if-eqz p3, :cond_31c

    .line 1479
    const p0, 0x1040206

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .line 1492
    .restart local p0       #endTimeFormat:Ljava/lang/String;
    :cond_283
    :goto_283
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p1, v0

    const/16 p2, 0xc

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_678

    .end local p2           #capMidnight:Z
    if-eqz v24, :cond_678

    if-nez v14, :cond_678

    .line 1493
    if-eqz p3, :cond_351

    .line 1494
    const p1, 0x1040206

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local v25           #startTimeFormat:Ljava/lang/String;
    .local p1, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_110

    .line 1435
    .end local v12           #noMidnight:Z
    .end local v14           #noNoon:Z
    .end local v24           #startOnTheHour:Z
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p3           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p1, force12Hour:Z
    .local p2, force24Hour:Z
    :cond_2a4
    const/16 p0, 0x0

    goto/16 :goto_1e9

    .line 1436
    .end local p1           #force12Hour:Z
    .local p0, abbrevTime:Z
    :cond_2a8
    const/16 p1, 0x0

    goto/16 :goto_1f3

    .line 1437
    .end local p2           #force24Hour:Z
    .local p1, capAMPM:Z
    :cond_2ac
    const/16 p2, 0x0

    move/from16 v14, p2

    goto/16 :goto_1ff

    .line 1438
    .restart local v14       #noNoon:Z
    :cond_2b2
    const/16 p2, 0x0

    move/from16 p3, p2

    goto/16 :goto_20b

    .line 1439
    .restart local p3       #capNoon:Z
    :cond_2b8
    const/16 p2, 0x0

    move/from16 v12, p2

    goto/16 :goto_217

    .line 1440
    .restart local v12       #noMidnight:Z
    :cond_2be
    const/16 p2, 0x0

    goto/16 :goto_221

    .line 1442
    .end local v5           #abbrevWeekDay:Z
    .local p2, capMidnight:Z
    :cond_2c2
    const/4 v5, 0x0

    move/from16 v24, v5

    goto/16 :goto_232

    .line 1443
    .restart local v24       #startOnTheHour:Z
    :cond_2c7
    const/4 v5, 0x0

    goto/16 :goto_241

    .line 1448
    .local v5, endOnTheHour:Z
    :cond_2ca
    const v25, 0x10401ab

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_252

    .line 1451
    .end local v25           #startTimeFormat:Ljava/lang/String;
    :cond_2d7
    if-eqz p1, :cond_2e6

    .line 1452
    const v25, 0x10401a9

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_252

    .line 1454
    .end local v25           #startTimeFormat:Ljava/lang/String;
    :cond_2e6
    const v25, 0x10401a8

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_252

    .line 1467
    :cond_2f3
    const p0, 0x10401ab

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_265

    .line 1470
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_300
    if-eqz p1, :cond_30f

    .line 1471
    const p0, 0x10401a9

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_265

    .line 1473
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_30f
    const p0, 0x10401a8

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_265

    .line 1481
    .end local p1           #capAMPM:Z
    :cond_31c
    const p0, 0x1040205

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_283

    .line 1483
    :cond_329
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p1, v0

    if-nez p1, :cond_283

    if-eqz v5, :cond_283

    if-nez v12, :cond_283

    .line 1484
    if-eqz p2, :cond_344

    .line 1485
    const p0, 0x1040208

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_283

    .line 1487
    :cond_344
    const p0, 0x1040207

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_283

    .line 1496
    .end local p2           #capMidnight:Z
    :cond_351
    const p1, 0x1040205

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local v25           #startTimeFormat:Ljava/lang/String;
    .local p1, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_110

    .line 1504
    .end local v5           #endOnTheHour:Z
    .end local v12           #noMidnight:Z
    .end local v14           #noNoon:Z
    .end local v24           #startOnTheHour:Z
    .end local p3           #capNoon:Z
    .local p1, startTimeString:Ljava/lang/String;
    :cond_35e
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_11c

    .line 1515
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p1           #startTimeString:Ljava/lang/String;
    .local v12, startTimeString:Ljava/lang/String;
    .local p3, endTimeString:Ljava/lang/String;
    :cond_368
    if-eqz v15, :cond_370

    .line 1517
    const/16 p0, 0x0

    .end local v20           #showYear:Z
    .local p0, showYear:Z
    move/from16 v5, p0

    .local v5, showYear:I
    goto/16 :goto_124

    .line 1518
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v20       #showYear:Z
    :cond_370
    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_37b

    .line 1519
    const/16 p0, 0x1

    .end local v20           #showYear:Z
    .restart local p0       #showYear:Z
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_124

    .line 1522
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v20       #showYear:Z
    :cond_37b
    new-instance p0, Landroid/text/format/Time;

    invoke-direct/range {p0 .. p0}, Landroid/text/format/Time;-><init>()V

    .line 1523
    .local p0, currentTime:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Landroid/text/format/Time;->setToNow()V

    .line 1524
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 p0, v0

    .end local p0           #currentTime:Landroid/text/format/Time;
    move/from16 v0, v27

    move/from16 v1, p0

    if-eq v0, v1, :cond_395

    const/16 p0, 0x1

    .end local v20           #showYear:Z
    .local p0, showYear:Z
    :goto_391
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_124

    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v20       #showYear:Z
    :cond_395
    const/16 p0, 0x0

    goto :goto_391

    .line 1530
    .end local v20           #showYear:Z
    .restart local v5       #showYear:I
    :cond_398
    if-eqz v5, :cond_3dc

    .line 1531
    if-eqz v4, :cond_3bc

    .line 1532
    if-eqz v13, :cond_3ad

    .line 1533
    const p0, 0x1040228

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1535
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_3ad
    const p0, 0x1040227

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1538
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_3bc
    if-eqz v13, :cond_3cd

    .line 1539
    const p0, 0x104020c

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1541
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_3cd
    const p0, 0x104020b

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1545
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_3dc
    if-eqz v4, :cond_3fe

    .line 1546
    if-eqz v13, :cond_3ef

    .line 1547
    const p0, 0x104022a

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1549
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_3ef
    const p0, 0x1040229

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1552
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_3fe
    if-eqz v13, :cond_40f

    .line 1553
    const p0, 0x104020a

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1555
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_40f
    const p0, 0x1040209

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_133

    .line 1564
    :cond_41e
    const p0, 0x10401f5

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_144

    .line 1567
    .end local p2           #fullFormat:Ljava/lang/String;
    :cond_42d
    if-eqz v18, :cond_43e

    .line 1568
    const p0, 0x10401f6

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    goto/16 :goto_144

    .line 1570
    .end local p2           #fullFormat:Ljava/lang/String;
    :cond_43e
    const p0, 0x10401f7

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    goto/16 :goto_144

    .line 1580
    :cond_44d
    move/from16 v0, v27

    move v1, v10

    if-ne v0, v1, :cond_454

    if-eqz v13, :cond_492

    .line 1584
    :cond_454
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1585
    .local p5, startDateString:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1589
    .local p0, endDateString:Ljava/lang/String;
    const/16 p1, 0x6

    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x0

    aput-object v26, p1, p4

    .end local p4           #endDate:Ljava/lang/Object;
    const/16 p4, 0x1

    aput-object p5, p1, p4

    const/16 p4, 0x2

    aput-object v12, p1, p4

    const/16 p4, 0x3

    aput-object v9, p1, p4

    const/16 p4, 0x4

    aput-object p0, p1, p4

    const/16 p0, 0x5

    aput-object p3, p1, p0

    .end local p0           #endDateString:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, dateRange:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .line 1592
    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_157

    .line 1597
    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    .restart local p4       #endDate:Ljava/lang/Object;
    .local p5, flags:I
    :cond_492
    if-eqz v16, :cond_51c

    .line 1598
    const-string p0, "%m"

    .line 1605
    .local p0, monthFormat:Ljava/lang/String;
    :goto_496
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1606
    .local v8, startMonthString:Ljava/lang/String;
    const-string p2, "%-d"

    .end local p2           #fullFormat:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1607
    .local v4, startMonthDayString:Ljava/lang/String;
    const-string p2, "%Y"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1609
    .local v10, startYearString:Ljava/lang/String;
    if-eqz v11, :cond_52f

    const/16 p0, 0x0

    move-object/from16 p2, p0

    .line 1610
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p2, endMonthString:Ljava/lang/String;
    :goto_4b8
    if-eqz v11, :cond_53b

    const/16 p0, 0x0

    .line 1611
    .local p0, endMonthDayString:Ljava/lang/String;
    :goto_4bc
    if-eqz v11, :cond_547

    const/16 p4, 0x0

    .line 1613
    .end local v13           #noMonthDay:Z
    .local p4, endYearString:Ljava/lang/String;
    :goto_4c0
    move/from16 v0, v23

    move v1, v7

    if-eq v0, v1, :cond_552

    .line 1619
    const/16 p1, 0x0

    .line 1620
    .local p1, index:I
    if-eqz v19, :cond_4cb

    const/16 p1, 0x1

    .line 1621
    :cond_4cb
    if-eqz v5, :cond_4cf

    add-int/lit8 p1, p1, 0x2

    .line 1622
    :cond_4cf
    if-eqz v18, :cond_4d3

    add-int/lit8 p1, p1, 0x4

    .line 1623
    :cond_4d3
    if-eqz v16, :cond_4d7

    add-int/lit8 p1, p1, 0x8

    .line 1624
    :cond_4d7
    sget-object p5, Landroid/text/format/DateUtils;->sameYearTable:[I

    .end local p5           #flags:I
    aget p1, p5, p1

    .line 1625
    .local p1, resId:I
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1629
    .local p1, fullFormat:Ljava/lang/String;
    const/16 p5, 0xa

    move/from16 v0, p5

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p5, v0

    const/4 v5, 0x0

    aput-object v26, p5, v5

    .end local v5           #showYear:I
    const/4 v5, 0x1

    aput-object v8, p5, v5

    const/4 v5, 0x2

    aput-object v4, p5, v5

    const/4 v4, 0x3

    aput-object v10, p5, v4

    .end local v4           #startMonthDayString:Ljava/lang/String;
    const/4 v4, 0x4

    aput-object v12, p5, v4

    const/4 v4, 0x5

    aput-object v9, p5, v4

    const/4 v4, 0x6

    aput-object p2, p5, v4

    const/16 p2, 0x7

    aput-object p0, p5, p2

    .end local p2           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p4, p5, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p3, p5, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, dateRange:Ljava/lang/String;
    move-object/from16 v28, p1

    .end local p1           #fullFormat:Ljava/lang/String;
    .local v28, fullFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, v28

    .line 1634
    .end local v28           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_157

    .line 1599
    .end local v8           #startMonthString:Ljava/lang/String;
    .end local p0           #fullFormat:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .restart local v5       #showYear:I
    .local v10, endYear:I
    .restart local v13       #noMonthDay:Z
    .local p1, defaultDateFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    .local p4, endDate:Ljava/lang/Object;
    .restart local p5       #flags:I
    :cond_51c
    if-eqz v4, :cond_52b

    .line 1600
    const p0, 0x104030a

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, monthFormat:Ljava/lang/String;
    goto/16 :goto_496

    .line 1603
    .end local p0           #monthFormat:Ljava/lang/String;
    :cond_52b
    const-string p0, "%B"

    .restart local p0       #monthFormat:Ljava/lang/String;
    goto/16 :goto_496

    .line 1609
    .end local p2           #fullFormat:Ljava/lang/String;
    .local v4, startMonthDayString:Ljava/lang/String;
    .restart local v8       #startMonthString:Ljava/lang/String;
    .local v10, startYearString:Ljava/lang/String;
    :cond_52f
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 p2, p0

    goto/16 :goto_4b8

    .line 1610
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p2, endMonthString:Ljava/lang/String;
    :cond_53b
    const-string p0, "%-d"

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4bc

    .line 1611
    .local p0, endMonthDayString:Ljava/lang/String;
    :cond_547
    const-string v13, "%Y"

    .end local v13           #noMonthDay:Z
    move-object/from16 v0, p4

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_4c0

    .line 1637
    .local p4, endYearString:Ljava/lang/String;
    :cond_552
    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_5ae

    .line 1639
    const/16 p1, 0x0

    .line 1640
    .local p1, index:I
    if-eqz v19, :cond_55d

    const/16 p1, 0x1

    .line 1641
    :cond_55d
    if-eqz v5, :cond_561

    add-int/lit8 p1, p1, 0x2

    .line 1642
    :cond_561
    if-eqz v18, :cond_565

    add-int/lit8 p1, p1, 0x4

    .line 1643
    :cond_565
    if-eqz v16, :cond_569

    add-int/lit8 p1, p1, 0x8

    .line 1644
    :cond_569
    sget-object p5, Landroid/text/format/DateUtils;->sameMonthTable:[I

    .end local p5           #flags:I
    aget p1, p5, p1

    .line 1645
    .local p1, resId:I
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1649
    .local p1, fullFormat:Ljava/lang/String;
    const/16 p5, 0xa

    move/from16 v0, p5

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p5, v0

    const/4 v5, 0x0

    aput-object v26, p5, v5

    .end local v5           #showYear:I
    const/4 v5, 0x1

    aput-object v8, p5, v5

    const/4 v5, 0x2

    aput-object v4, p5, v5

    const/4 v4, 0x3

    aput-object v10, p5, v4

    .end local v4           #startMonthDayString:Ljava/lang/String;
    const/4 v4, 0x4

    aput-object v12, p5, v4

    const/4 v4, 0x5

    aput-object v9, p5, v4

    const/4 v4, 0x6

    aput-object p2, p5, v4

    const/16 p2, 0x7

    aput-object p0, p5, p2

    .end local p2           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p4, p5, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p3, p5, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, dateRange:Ljava/lang/String;
    move-object/from16 v28, p1

    .end local p1           #fullFormat:Ljava/lang/String;
    .restart local v28       #fullFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, v28

    .line 1654
    .end local v28           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_157

    .line 1658
    .restart local v4       #startMonthDayString:Ljava/lang/String;
    .restart local v5       #showYear:I
    .local p0, endMonthDayString:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    .restart local p2       #endMonthString:Ljava/lang/String;
    .restart local p5       #flags:I
    :cond_5ae
    and-int/lit8 p0, p5, 0x10

    if-eqz p0, :cond_605

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x1

    .line 1661
    .local p0, showDate:Z
    :goto_5b4
    if-nez v18, :cond_674

    if-nez p0, :cond_674

    if-nez v19, :cond_674

    const/16 p0, 0x1

    move/from16 p4, p0

    .line 1664
    .end local p0           #showDate:Z
    .local p4, showDate:I
    :goto_5be
    const-string p0, ""

    .line 1665
    .local p0, timeString:Ljava/lang/String;
    if-eqz v18, :cond_670

    .line 1668
    if-eqz v11, :cond_608

    .line 1671
    move-object/from16 p0, v12

    move-object/from16 p3, p0

    .line 1680
    .end local p0           #timeString:Ljava/lang/String;
    .end local p2           #endMonthString:Ljava/lang/String;
    .end local p5           #flags:I
    .local p3, timeString:Ljava/lang/String;
    :goto_5c8
    const-string p2, ""

    .line 1681
    .local p2, fullFormat:Ljava/lang/String;
    const-string p0, ""

    .line 1682
    .local p0, dateString:Ljava/lang/String;
    if-eqz p4, :cond_64e

    .line 1683
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1684
    if-eqz v19, :cond_63a

    .line 1685
    if-eqz v18, :cond_62e

    .line 1687
    const p1, 0x10401f9

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #defaultDateFormat:Ljava/lang/String;
    move-result-object p1

    .line 1715
    .end local p2           #fullFormat:Ljava/lang/String;
    .local p1, fullFormat:Ljava/lang/String;
    :goto_5e5
    const/16 p2, 0x3

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    const/16 p4, 0x0

    aput-object p3, p2, p4

    .end local p4           #showDate:I
    const/16 p3, 0x1

    aput-object v26, p2, p3

    .end local p3           #timeString:Ljava/lang/String;
    const/16 p3, 0x2

    aput-object p0, p2, p3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, dateRange:Ljava/lang/String;
    move-object/from16 v28, p1

    .end local p1           #fullFormat:Ljava/lang/String;
    .restart local v28       #fullFormat:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, v28

    .line 1716
    .end local v28           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_157

    .line 1658
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    .local p2, endMonthString:Ljava/lang/String;
    .local p3, endTimeString:Ljava/lang/String;
    .local p4, endYearString:Ljava/lang/String;
    .restart local p5       #flags:I
    :cond_605
    const/16 p0, 0x0

    goto :goto_5b4

    .line 1674
    .local p0, timeString:Ljava/lang/String;
    .local p4, showDate:I
    :cond_608
    const p0, 0x10401f8

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #timeString:Ljava/lang/String;
    move-result-object p0

    .line 1675
    .local p0, timeFormat:Ljava/lang/String;
    const/16 p2, 0x2

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #endMonthString:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object v12, p2, p5

    .end local p5           #flags:I
    const/16 p5, 0x1

    aput-object p3, p2, p5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, timeString:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p3, timeString:Ljava/lang/String;
    goto :goto_5c8

    .line 1690
    .local p0, dateString:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    :cond_62e
    const p1, 0x10401fa

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #defaultDateFormat:Ljava/lang/String;
    move-result-object p1

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p1, fullFormat:Ljava/lang/String;
    goto :goto_5e5

    .line 1693
    .local p1, defaultDateFormat:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    :cond_63a
    if-eqz v18, :cond_648

    .line 1695
    const p1, 0x10401fb

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #defaultDateFormat:Ljava/lang/String;
    move-result-object p1

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p1, fullFormat:Ljava/lang/String;
    goto :goto_5e5

    .local p1, defaultDateFormat:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    :cond_648
    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .line 1698
    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_157

    .line 1701
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    :cond_64e
    if-eqz v19, :cond_664

    .line 1702
    if-eqz v18, :cond_65e

    .line 1704
    const p1, 0x10401fe

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #defaultDateFormat:Ljava/lang/String;
    move-result-object p1

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p1, fullFormat:Ljava/lang/String;
    goto :goto_5e5

    .local p1, defaultDateFormat:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    :cond_65e
    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p1, v26

    .line 1707
    goto/16 :goto_157

    .line 1709
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    :cond_664
    if-eqz v18, :cond_66c

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p1, p3

    .line 1710
    goto/16 :goto_157

    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #fullFormat:Ljava/lang/String;
    :cond_66c
    move-object/from16 p1, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p1, fullFormat:Ljava/lang/String;
    goto/16 :goto_5e5

    .local p0, timeString:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    .local p2, endMonthString:Ljava/lang/String;
    .local p3, endTimeString:Ljava/lang/String;
    .restart local p5       #flags:I
    :cond_670
    move-object/from16 p3, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p3, timeString:Ljava/lang/String;
    goto/16 :goto_5c8

    .local p0, showDate:Z
    .local p3, endTimeString:Ljava/lang/String;
    .local p4, endYearString:Ljava/lang/String;
    :cond_674
    move/from16 p4, p0

    .local p4, showDate:I
    goto/16 :goto_5be

    .end local v8           #startMonthString:Ljava/lang/String;
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    .end local p2           #endMonthString:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v5, endOnTheHour:Z
    .local v10, endYear:I
    .local v12, noMidnight:Z
    .restart local v13       #noMonthDay:Z
    .restart local v14       #noNoon:Z
    .restart local v20       #showYear:Z
    .restart local v24       #startOnTheHour:Z
    .restart local v25       #startTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    .local p3, capNoon:Z
    .local p4, endDate:Ljava/lang/Object;
    :cond_678
    move-object/from16 p1, v25

    .end local v25           #startTimeFormat:Ljava/lang/String;
    .local p1, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_110

    .local v8, endTimeFormat:Ljava/lang/String;
    .restart local v25       #startTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    .local p1, capAMPM:Z
    .local p2, capMidnight:Z
    :cond_67c
    move-object/from16 p0, v8

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_283

    .end local v12           #noMidnight:Z
    .end local v14           #noNoon:Z
    .end local v24           #startOnTheHour:Z
    .end local v25           #startTimeFormat:Ljava/lang/String;
    .end local p3           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .local p0, context:Landroid/content/Context;
    .local p1, endTimeString:Ljava/lang/String;
    .local p2, startTimeString:Ljava/lang/String;
    :cond_680
    move-object/from16 p3, p1

    .end local p1           #endTimeString:Ljava/lang/String;
    .local p3, endTimeString:Ljava/lang/String;
    move-object/from16 v12, p2

    .end local p2           #startTimeString:Ljava/lang/String;
    .local v12, startTimeString:Ljava/lang/String;
    goto/16 :goto_120

    .end local v9           #endWeekDayString:Ljava/lang/String;
    .end local v12           #startTimeString:Ljava/lang/String;
    .end local v26           #startWeekDayString:Ljava/lang/String;
    .end local p3           #endTimeString:Ljava/lang/String;
    .local p1, endWeekDayString:Ljava/lang/String;
    .local p2, startWeekDayString:Ljava/lang/String;
    :cond_686
    move-object/from16 v9, p1

    .end local p1           #endWeekDayString:Ljava/lang/String;
    .restart local v9       #endWeekDayString:Ljava/lang/String;
    move-object/from16 v26, p2

    .end local p2           #startWeekDayString:Ljava/lang/String;
    .restart local v26       #startWeekDayString:Ljava/lang/String;
    goto/16 :goto_e1
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1762
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .registers 3
    .parameter "elapsedSeconds"

    .prologue
    .line 797
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .registers 17
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 808
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 810
    const-wide/16 v2, 0x0

    .line 811
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 812
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 814
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    .line 815
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 816
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 818
    :cond_17
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_25

    .line 819
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 820
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 822
    :cond_25
    move-wide v6, p1

    .line 825
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_34

    .line 826
    .end local p1
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object p0

    .line 828
    .end local p0
    :goto_33
    return-object p0

    .restart local p0
    :cond_34
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p0

    goto :goto_33
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .registers 13
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 870
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 871
    move-object v0, p0

    .line 872
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_41

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 877
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_17
    cmp-long v1, p2, v3

    if-gez v1, :cond_45

    .line 878
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    :goto_1e
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 884
    cmp-long v1, p4, v3

    if-gez v1, :cond_4f

    .line 885
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    :goto_33
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_40
    return-object v1

    .line 875
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_17

    .line 880
    :cond_45
    div-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 887
    :cond_4f
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 892
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_59
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_40
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .registers 16
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 837
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 838
    move-object v0, p0

    .line 839
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_47

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 844
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_19
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    cmp-long v1, p4, v3

    if-gez v1, :cond_4b

    .line 847
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    :goto_26
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    cmp-long v1, p6, v3

    if-gez v1, :cond_55

    .line 854
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 858
    :goto_39
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_46
    return-object v1

    .line 842
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_47
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_19

    .line 849
    :cond_4b
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 856
    :cond_55
    div-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 861
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_5f
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_46
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .registers 14
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 919
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 920
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 921
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 922
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 923
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 927
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3e

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3e

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3e

    .line 930
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 934
    .local v0, f:Ljava/text/DateFormat;
    :goto_39
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 932
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_3e
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_39
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .registers 4
    .parameter "ampm"

    .prologue
    .line 328
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 329
    .local v0, r:Landroid/content/res/Resources;
    sget-object v1, Landroid/text/format/DateUtils;->sAmPm:[I

    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .registers 5
    .parameter "dayOfWeek"
    .parameter "abbrev"

    .prologue
    .line 308
    sparse-switch p1, :sswitch_data_22

    .line 314
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 317
    .local v0, list:[I
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 318
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 309
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_13
    sget-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 310
    .end local v0           #list:[I
    :sswitch_16
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 311
    .end local v0           #list:[I
    :sswitch_19
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 312
    .end local v0           #list:[I
    :sswitch_1c
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 313
    .end local v0           #list:[I
    :sswitch_1f
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 308
    :sswitch_data_22
    .sparse-switch
        0xa -> :sswitch_13
        0x14 -> :sswitch_16
        0x1e -> :sswitch_19
        0x28 -> :sswitch_1c
        0x32 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .registers 5
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 348
    sparse-switch p1, :sswitch_data_22

    .line 354
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 357
    .local v0, list:[I
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 358
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 349
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_13
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 350
    .end local v0           #list:[I
    :sswitch_16
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 351
    .end local v0           #list:[I
    :sswitch_19
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 352
    .end local v0           #list:[I
    :sswitch_1c
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 353
    .end local v0           #list:[I
    :sswitch_1f
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 348
    :sswitch_data_22
    .sparse-switch
        0xa -> :sswitch_13
        0x14 -> :sswitch_16
        0x1e -> :sswitch_19
        0x28 -> :sswitch_1c
        0x32 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .registers 20
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 697
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 699
    .local v10, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 700
    .local v8, now:J
    sub-long v0, v8, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 705
    .local v6, duration:J
    const-wide/32 v0, 0x240c8400

    cmp-long v0, p5, v0

    if-lez v0, :cond_3e

    .line 706
    const-wide/32 p5, 0x240c8400

    .line 711
    :cond_18
    :goto_18
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 714
    .local v11, timeClause:Ljava/lang/CharSequence;
    cmp-long p5, v6, p5

    if-gez p5, :cond_49

    .end local p5
    move-wide v0, p1

    move-wide v2, v8

    move-wide v4, p3

    move/from16 v6, p7

    .line 715
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    .end local v6           #duration:J
    move-result-object p0

    .line 716
    .local p0, relativeClause:Ljava/lang/CharSequence;
    const p1, 0x10401fd

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    .end local p3
    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #relativeClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 722
    .local p0, result:Ljava/lang/String;
    :goto_3d
    return-object p0

    .line 707
    .end local v11           #timeClause:Ljava/lang/CharSequence;
    .restart local v6       #duration:J
    .local p0, c:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .restart local p5
    :cond_3e
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p5, v0

    if-gez v0, :cond_18

    .line 708
    const-wide/32 p5, 0x5265c00

    goto :goto_18

    .line 718
    .end local p5
    .restart local v11       #timeClause:Ljava/lang/CharSequence;
    :cond_49
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    .end local p3
    move-result-object p0

    .line 719
    .local p0, dateClause:Ljava/lang/CharSequence;
    const p1, 0x10401fc

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #dateClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, result:Ljava/lang/String;
    goto :goto_3d
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .registers 9
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 736
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 737
    .local v1, startTime:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 738
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 739
    .local v0, currentTime:Landroid/text/format/Time;
    invoke-virtual {v0, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 741
    iget-wide v1, v1, Landroid/text/format/Time;->gmtoff:J

    .end local v1           #startTime:Landroid/text/format/Time;
    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 742
    .local v1, startDay:I
    iget-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 744
    .local v0, currentDay:I
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .end local v0           #currentDay:I
    move-result v0

    .line 745
    .local v0, days:I
    cmp-long p1, p3, p1

    if-lez p1, :cond_33

    .end local p1
    const/4 p1, 0x1

    .line 747
    .local p1, past:Z
    :goto_26
    const/4 p2, 0x1

    if-ne v0, p2, :cond_3d

    .line 748
    if-eqz p1, :cond_35

    .line 749
    const p1, 0x10401d0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    .line 765
    .end local p0
    .end local p3
    :goto_32
    return-object p0

    .line 745
    .restart local p0
    .restart local p3
    :cond_33
    const/4 p1, 0x0

    goto :goto_26

    .line 751
    .restart local p1       #past:Z
    :cond_35
    const p1, 0x10401d1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_32

    .line 753
    .restart local p1       #past:Z
    :cond_3d
    if-nez v0, :cond_47

    .line 754
    const p1, 0x10401cf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_32

    .line 758
    .restart local p1       #past:Z
    :cond_47
    if-eqz p1, :cond_5f

    .line 759
    const p1, 0x10f0003

    .line 764
    .local p1, resId:I
    :goto_4c
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    .line 765
    .local p0, format:Ljava/lang/String;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .end local p1           #resId:I
    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 761
    .local p0, r:Landroid/content/res/Resources;
    .local p1, past:Z
    .restart local p3
    :cond_5f
    const p1, 0x10f0007

    .local p1, resId:I
    goto :goto_4c
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .registers 8
    .parameter "startTime"

    .prologue
    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .registers 13
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 418
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 419
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .registers 23
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 444
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 445
    .local v10, r:Landroid/content/res/Resources;
    const/high16 v4, 0xc

    and-int v4, v4, p6

    if-eqz v4, :cond_c3

    const/4 v4, 0x1

    .line 447
    .local v4, abbrevRelative:Z
    :goto_b
    cmp-long v5, p2, p0

    if-ltz v5, :cond_c6

    const/4 v5, 0x1

    move v9, v5

    .line 448
    .local v9, past:Z
    :goto_11
    sub-long v5, p2, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 452
    .local v5, duration:J
    and-int/lit8 v7, p6, 0x1

    if-eqz v7, :cond_ca

    const/4 v7, 0x1

    move v11, v7

    .line 453
    .local v11, showTime:Z
    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move v7, v0

    if-eqz v7, :cond_ce

    const/4 v7, 0x1

    .line 458
    .local v7, useUTC:Z
    :goto_25
    cmp-long v8, p0, p2

    if-nez v8, :cond_d1

    const/4 v8, 0x1

    .line 460
    .local v8, isInstant:Z
    :goto_2a
    if-eqz v7, :cond_d4

    new-instance v12, Landroid/text/format/Time;

    const-string v13, "UTC"

    invoke-direct {v12, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 461
    .local v12, startDate:Landroid/text/format/Time;
    :goto_33
    move-object v0, v12

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 465
    if-eqz v8, :cond_db

    .line 467
    move-object/from16 p3, v12

    .line 468
    .end local p2
    .local p3, endDate:Landroid/text/format/Time;
    const/16 p2, 0x0

    .line 493
    .end local v7           #useUTC:Z
    .end local p3           #endDate:Landroid/text/format/Time;
    .local p2, dayDistance:I
    :goto_3f
    if-nez v8, :cond_6f

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v8, v0

    .end local v8           #isInstant:Z
    or-int/2addr v7, v8

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v8, v0

    or-int/2addr v7, v8

    if-nez v7, :cond_6f

    if-eqz v11, :cond_5c

    const/4 v7, 0x1

    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_6f

    .line 495
    :cond_5c
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move v0, v7

    move-object/from16 v1, p3

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 496
    const/4 v7, 0x1

    move-object/from16 v0, p3

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 499
    :cond_6f
    iget v11, v12, Landroid/text/format/Time;->monthDay:I

    .line 500
    .local v11, startDay:I
    iget v7, v12, Landroid/text/format/Time;->month:I

    .line 501
    .local v7, startMonthNum:I
    iget v7, v12, Landroid/text/format/Time;->year:I

    .line 503
    .local v7, startYear:I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v7, v0

    .line 504
    .local v7, endDay:I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v8, v0

    .line 505
    .local v8, endMonthNum:I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 p3, v0

    .line 507
    .local p3, endYear:I
    const-wide/32 v12, 0xea60

    cmp-long p3, v5, v12

    if-gez p3, :cond_121

    .end local v12           #startDate:Landroid/text/format/Time;
    .end local p3           #endYear:I
    const-wide/32 v12, 0xea60

    cmp-long p3, p4, v12

    if-gez p3, :cond_121

    .line 509
    const-wide/16 p0, 0x3e8

    div-long p0, v5, p0

    .line 510
    .local p0, count:J
    if-eqz v9, :cond_117

    .line 512
    if-ne v11, v7, :cond_10b

    .line 514
    if-eqz v4, :cond_108

    .line 516
    const p2, 0x10f0008

    .line 668
    .end local v7           #endDay:I
    .local p2, resId:I
    :goto_a0
    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 p3, v0

    move-object v0, v10

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    .line 669
    .local p2, format:Ljava/lang/String;
    const/16 p3, 0x1

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    const/16 p4, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local p4
    move-result-object p0

    .end local p0           #count:J
    aput-object p0, p3, p4

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local v4           #abbrevRelative:Z
    .end local v5           #duration:J
    .end local v9           #past:Z
    .end local p2           #format:Ljava/lang/String;
    :goto_c2
    return-object p0

    .line 445
    .end local v8           #endMonthNum:I
    .end local v11           #startDay:I
    .local p0, time:J
    .local p2, now:J
    .restart local p4
    :cond_c3
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 447
    .restart local v4       #abbrevRelative:Z
    :cond_c6
    const/4 v5, 0x0

    move v9, v5

    goto/16 :goto_11

    .line 452
    .restart local v5       #duration:J
    .restart local v9       #past:Z
    :cond_ca
    const/4 v7, 0x0

    move v11, v7

    goto/16 :goto_1d

    .line 453
    .local v11, showTime:Z
    :cond_ce
    const/4 v7, 0x0

    goto/16 :goto_25

    .line 458
    .local v7, useUTC:Z
    :cond_d1
    const/4 v8, 0x0

    goto/16 :goto_2a

    .line 460
    .local v8, isInstant:Z
    :cond_d4
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    goto/16 :goto_33

    .line 472
    .restart local v12       #startDate:Landroid/text/format/Time;
    :cond_db
    if-eqz v7, :cond_102

    new-instance v7, Landroid/text/format/Time;

    .end local v7           #useUTC:Z
    const-string v13, "UTC"

    invoke-direct {v7, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 473
    .local v7, endDate:Landroid/text/format/Time;
    :goto_e4
    move-object v0, v7

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 474
    iget-wide v13, v12, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p0

    move-wide v2, v13

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v13

    .line 475
    .local v13, startJulianDay:I
    iget-wide v14, v7, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    move-wide v2, v14

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p2

    .line 476
    .local p2, endJulianDay:I
    sub-int p2, p2, v13

    .local p2, dayDistance:I
    move-object/from16 p3, v7

    .local p3, endDate:Ljava/lang/Object;
    goto/16 :goto_3f

    .line 472
    .end local v13           #startJulianDay:I
    .end local p3           #endDate:Ljava/lang/Object;
    .local v7, useUTC:Z
    .local p2, now:J
    :cond_102
    new-instance v7, Landroid/text/format/Time;

    .end local v7           #useUTC:Z
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    goto :goto_e4

    .line 520
    .end local v12           #startDate:Landroid/text/format/Time;
    .local v7, endDay:I
    .local v8, endMonthNum:I
    .local v11, startDay:I
    .local p0, count:J
    .local p2, dayDistance:I
    :cond_108
    const/high16 p2, 0x10f

    .local p2, resId:I
    goto :goto_a0

    .line 525
    .local p2, dayDistance:I
    :cond_10b
    const-wide/16 p0, 0x1

    .line 526
    if-eqz v4, :cond_113

    .line 528
    const p2, 0x10f000b

    .local p2, resId:I
    goto :goto_a0

    .line 532
    .local p2, dayDistance:I
    :cond_113
    const p2, 0x10f0003

    .local p2, resId:I
    goto :goto_a0

    .line 538
    .local p2, dayDistance:I
    :cond_117
    if-eqz v4, :cond_11d

    .line 540
    const p2, 0x10f000c

    .local p2, resId:I
    goto :goto_a0

    .line 544
    .local p2, dayDistance:I
    :cond_11d
    const p2, 0x10f0004

    .local p2, resId:I
    goto :goto_a0

    .line 548
    .local p0, time:J
    .local p2, dayDistance:I
    :cond_121
    const-wide/32 v12, 0x36ee80

    cmp-long p3, v5, v12

    if-gez p3, :cond_15e

    const-wide/32 v12, 0x36ee80

    cmp-long p3, p4, v12

    if-gez p3, :cond_15e

    .line 550
    const-wide/32 p0, 0xea60

    div-long p0, v5, p0

    .line 551
    .local p0, count:J
    if-eqz v9, :cond_152

    .line 553
    if-ne v11, v7, :cond_144

    .line 555
    if-eqz v4, :cond_13f

    .line 557
    const p2, 0x10f0009

    .local p2, resId:I
    goto/16 :goto_a0

    .line 561
    .local p2, dayDistance:I
    :cond_13f
    const p2, 0x10f0001

    .local p2, resId:I
    goto/16 :goto_a0

    .line 566
    .local p2, dayDistance:I
    :cond_144
    const-wide/16 p0, 0x1

    .line 567
    if-eqz v4, :cond_14d

    .line 569
    const p2, 0x10f000b

    .local p2, resId:I
    goto/16 :goto_a0

    .line 573
    .local p2, dayDistance:I
    :cond_14d
    const p2, 0x10f0003

    .local p2, resId:I
    goto/16 :goto_a0

    .line 579
    .local p2, dayDistance:I
    :cond_152
    if-eqz v4, :cond_159

    .line 581
    const p2, 0x10f000d

    .local p2, resId:I
    goto/16 :goto_a0

    .line 585
    .local p2, dayDistance:I
    :cond_159
    const p2, 0x10f0005

    .local p2, resId:I
    goto/16 :goto_a0

    .line 589
    .local p0, time:J
    .local p2, dayDistance:I
    :cond_15e
    const-wide/32 v12, 0x5265c00

    cmp-long p3, v5, v12

    if-gez p3, :cond_19b

    const-wide/32 v12, 0x5265c00

    cmp-long p3, p4, v12

    if-gez p3, :cond_19b

    .line 591
    const-wide/32 p0, 0x36ee80

    div-long p0, v5, p0

    .line 592
    .local p0, count:J
    if-eqz v9, :cond_18f

    .line 594
    if-ne v11, v7, :cond_181

    .line 596
    if-eqz v4, :cond_17c

    .line 598
    const p2, 0x10f000a

    .local p2, resId:I
    goto/16 :goto_a0

    .line 602
    .local p2, dayDistance:I
    :cond_17c
    const p2, 0x10f0002

    .local p2, resId:I
    goto/16 :goto_a0

    .line 607
    .local p2, dayDistance:I
    :cond_181
    const-wide/16 p0, 0x1

    .line 608
    if-eqz v4, :cond_18a

    .line 610
    const p2, 0x10f000b

    .local p2, resId:I
    goto/16 :goto_a0

    .line 614
    .local p2, dayDistance:I
    :cond_18a
    const p2, 0x10f0003

    .local p2, resId:I
    goto/16 :goto_a0

    .line 620
    .local p2, dayDistance:I
    :cond_18f
    if-eqz v4, :cond_196

    .line 622
    const p2, 0x10f000e

    .local p2, resId:I
    goto/16 :goto_a0

    .line 626
    .local p2, dayDistance:I
    :cond_196
    const p2, 0x10f0006

    .local p2, resId:I
    goto/16 :goto_a0

    .line 630
    .local p0, time:J
    .local p2, dayDistance:I
    :cond_19b
    const-wide/32 v7, 0x240c8400

    cmp-long p3, v5, v7

    if-gez p3, :cond_1d6

    .end local v7           #endDay:I
    const-wide/32 v7, 0x240c8400

    cmp-long p3, p4, v7

    if-gez p3, :cond_1d6

    .line 632
    const-wide/32 p0, 0x5265c00

    div-long p0, v5, p0

    .line 633
    .local p0, count:J
    if-eqz v9, :cond_1ca

    .line 635
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 p3, v0

    cmp-long p3, p0, p3

    if-gtz p3, :cond_1be

    .line 637
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 p0, v0

    .line 640
    :cond_1be
    if-eqz v4, :cond_1c5

    .line 642
    const p2, 0x10f000b

    .local p2, resId:I
    goto/16 :goto_a0

    .line 646
    .local p2, dayDistance:I
    :cond_1c5
    const p2, 0x10f0003

    .local p2, resId:I
    goto/16 :goto_a0

    .line 651
    .local p2, dayDistance:I
    :cond_1ca
    if-eqz v4, :cond_1d1

    .line 653
    const p2, 0x10f000f

    .local p2, resId:I
    goto/16 :goto_a0

    .line 657
    .local p2, dayDistance:I
    :cond_1d1
    const p2, 0x10f0007

    .local p2, resId:I
    goto/16 :goto_a0

    .line 665
    .local p0, time:J
    .local p2, dayDistance:I
    :cond_1d6
    const/4 v4, 0x0

    move-wide/from16 v5, p0

    move-wide/from16 v7, p0

    move/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v4           #abbrevRelative:Z
    .end local v5           #duration:J
    .end local v9           #past:Z
    move-result-object p0

    goto/16 :goto_c2
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1828
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .registers 10
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1783
    .local v0, now:J
    sub-long v2, v0, p1

    .line 1785
    .local v2, span:J
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v4, :cond_18

    .line 1786
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1787
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1790
    :cond_18
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1791
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .end local v0           #now:J
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1795
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-gez v0, :cond_4f

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_4f

    .line 1797
    const/4 v5, 0x1

    .local v5, flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1798
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1799
    .end local p1
    .local p2, result:Ljava/lang/String;
    const p1, 0x10401d5

    .line 1813
    .local p1, prepositionId:I
    :goto_3e
    if-eqz p3, :cond_75

    .line 1814
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1815
    .local p0, res:Landroid/content/res/Resources;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1817
    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    :goto_4e
    return-object p0

    .line 1800
    .end local v5           #flags:I
    .local p0, c:Landroid/content/Context;
    .local p1, millis:J
    .restart local p3
    :cond_4f
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_67

    .line 1802
    const v5, 0x20014

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1803
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1806
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x10401d4

    .line 1807
    .local p1, prepositionId:I
    goto :goto_3e

    .line 1809
    .end local v5           #flags:I
    .end local p2           #result:Ljava/lang/String;
    .local p1, millis:J
    :cond_67
    const v5, 0x10010

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1810
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1811
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x10401d4

    .local p1, prepositionId:I
    goto :goto_3e

    :cond_75
    move-object p0, p2

    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_4e
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .registers 5
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 381
    sparse-switch p1, :sswitch_data_22

    .line 388
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 391
    .local v0, list:[I
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 392
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 382
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_13
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 383
    .restart local v0       #list:[I
    goto :goto_5

    .line 384
    .end local v0           #list:[I
    :sswitch_16
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 385
    .end local v0           #list:[I
    :sswitch_19
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 386
    .end local v0           #list:[I
    :sswitch_1c
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 387
    .end local v0           #list:[I
    :sswitch_1f
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_5

    .line 381
    :sswitch_data_22
    .sparse-switch
        0xa -> :sswitch_13
        0x14 -> :sswitch_16
        0x1e -> :sswitch_19
        0x28 -> :sswitch_1c
        0x32 -> :sswitch_1f
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .registers 4

    .prologue
    .line 769
    sget-object v2, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 770
    :try_start_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 771
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 772
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v3, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_17

    sget-object v3, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 773
    :cond_17
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 774
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 775
    const v3, 0x104027e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 776
    const v3, 0x104027f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 778
    :cond_32
    monitor-exit v2

    .line 779
    return-void

    .line 778
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v1           #r:Landroid/content/res/Resources;
    :catchall_34
    move-exception v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v3
.end method

.method public static isToday(J)Z
    .registers 8
    .parameter "when"

    .prologue
    .line 953
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 954
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 956
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 957
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 958
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 960
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 961
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_23

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_23

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_23

    const/4 v4, 0x1

    :goto_22
    return v4

    :cond_23
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .registers 5
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x1

    .line 1002
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_15

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_15

    move v0, v2

    .line 1009
    :goto_14
    return v0

    .line 1005
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_27

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_27

    move v0, v2

    .line 1007
    goto :goto_14

    .line 1009
    :cond_27
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .registers 2
    .parameter "zulu"

    .prologue
    .line 943
    if-eqz p0, :cond_d

    .line 944
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 946
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_c
.end method

.method public static parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .registers 7
    .parameter "tz"
    .parameter "dateTime"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-static {p1}, Landroid/text/format/DateUtils;->isUTC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1071
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1080
    .local v1, timezone:Ljava/util/TimeZone;
    :goto_c
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1081
    .local v0, local:Ljava/util/Calendar;
    invoke-static {p1, v0}, Landroid/text/format/DateUtils;->parseDateTime(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 1083
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1084
    return-void

    .line 1073
    .end local v0           #local:Ljava/util/Calendar;
    .end local v1           #timezone:Ljava/util/TimeZone;
    :cond_1c
    if-nez p0, :cond_23

    .line 1074
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .restart local v1       #timezone:Ljava/util/TimeZone;
    goto :goto_c

    .line 1077
    .end local v1           #timezone:Ljava/util/TimeZone;
    :cond_23
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .restart local v1       #timezone:Ljava/util/TimeZone;
    goto :goto_c
.end method

.method public static parseDateTime(Ljava/lang/String;Ljava/util/Calendar;)Z
    .registers 14
    .parameter "str"
    .parameter "cal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1023
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1024
    .local v2, len:I
    const/16 v3, 0xf

    if-eq v2, v3, :cond_14

    const/16 v3, 0x10

    if-ne v2, v3, :cond_c7

    :cond_14
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_c7

    move v0, v8

    .line 1025
    .local v0, dateTime:Z
    :goto_1f
    const/16 v3, 0x8

    if-ne v2, v3, :cond_ca

    move v1, v8

    .line 1026
    .local v1, justDate:Z
    :goto_24
    if-nez v0, :cond_28

    if-eqz v1, :cond_df

    .line 1027
    :cond_28
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 1028
    invoke-static {p0, v7}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {p0, v8}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    const/4 v4, 0x3

    invoke-static {p0, v4}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 1031
    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {p0, v4}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    const/4 v5, 0x5

    invoke-static {p0, v5}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v8

    invoke-static {v7, v9, v4}, Landroid/text/format/DateUtils;->check(III)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1033
    const/4 v3, 0x5

    const/16 v4, 0x1f

    const/4 v5, 0x6

    invoke-static {p0, v5}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x7

    invoke-static {p0, v6}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v8, v4, v5}, Landroid/text/format/DateUtils;->check(III)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1035
    if-eqz v0, :cond_ba

    .line 1036
    const/16 v3, 0x17

    const/16 v4, 0x9

    invoke-static {p0, v4}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    const/16 v5, 0xa

    invoke-static {p0, v5}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v7, v3, v4}, Landroid/text/format/DateUtils;->check(III)I

    move-result v3

    invoke-virtual {p1, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1038
    const/16 v3, 0x3b

    invoke-static {p0, v9}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    invoke-static {p0, v10}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v7, v3, v4}, Landroid/text/format/DateUtils;->check(III)I

    move-result v3

    invoke-virtual {p1, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 1040
    const/16 v3, 0x3b

    invoke-static {p0, v11}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    const/16 v5, 0xe

    invoke-static {p0, v5}, Landroid/text/format/DateUtils;->ctoi(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v7, v3, v4}, Landroid/text/format/DateUtils;->check(III)I

    move-result v3

    invoke-virtual {p1, v11, v3}, Ljava/util/Calendar;->set(II)V

    .line 1043
    :cond_ba
    if-eqz v1, :cond_cd

    .line 1044
    invoke-virtual {p1, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 1045
    invoke-virtual {p1, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 1046
    invoke-virtual {p1, v11, v7}, Ljava/util/Calendar;->set(II)V

    move v3, v8

    .line 1053
    :goto_c6
    return v3

    .end local v0           #dateTime:Z
    .end local v1           #justDate:Z
    :cond_c7
    move v0, v7

    .line 1024
    goto/16 :goto_1f

    .restart local v0       #dateTime:Z
    :cond_ca
    move v1, v7

    .line 1025
    goto/16 :goto_24

    .line 1049
    .restart local v1       #justDate:Z
    :cond_cd
    const/16 v3, 0xf

    if-ne v2, v3, :cond_d3

    move v3, v7

    .line 1050
    goto :goto_c6

    .line 1052
    :cond_d3
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_df

    move v3, v8

    .line 1053
    goto :goto_c6

    .line 1056
    :cond_df
    new-instance v3, Landroid/pim/DateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid time (expected YYYYMMDDThhmmssZ? got \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "millis"

    .prologue
    .line 787
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 788
    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toDigitChar(J)C
    .registers 4
    .parameter "digit"

    .prologue
    .line 897
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5
    .parameter "cal"

    .prologue
    .line 1098
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1099
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1100
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1101
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 10
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1141
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1142
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1143
    div-int/lit8 v0, v0, 0xa

    .line 1144
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1145
    div-int/lit8 v0, v0, 0xa

    .line 1146
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1147
    div-int/lit8 v0, v0, 0xa

    .line 1148
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1150
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1151
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1152
    div-int/lit8 v0, v0, 0xa

    .line 1153
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1155
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1156
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1157
    div-int/lit8 v0, v0, 0xa

    .line 1158
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1160
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1162
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1163
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1164
    div-int/lit8 v0, v0, 0xa

    .line 1165
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1167
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1168
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1169
    div-int/lit8 v0, v0, 0xa

    .line 1170
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1172
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1173
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1174
    div-int/lit8 v0, v0, 0xa

    .line 1175
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .registers 5
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1117
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 1118
    if-eqz p1, :cond_1b

    .line 1119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1120
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1124
    :goto_16
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1122
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_16
.end method
