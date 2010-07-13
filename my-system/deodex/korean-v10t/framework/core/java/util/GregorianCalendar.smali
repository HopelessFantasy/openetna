.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static DaysInMonth:[B = null

.field private static DaysInYear:[I = null

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static leastMaximums:[I = null

.field private static maximums:[I = null

.field private static minimums:[I = null

.field private static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private cachedFields:[I

.field private transient changeYear:I

.field private currentYearSkew:I

.field private gregorianCutover:J

.field private isCached:Z

.field private transient julianSkew:I

.field private lastMidnightMillis:J

.field private lastYearSkew:I

.field private nextMidnightMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0x11

    .line 224
    new-array v0, v2, [B

    fill-array-data v0, :array_28

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    .line 227
    new-array v0, v2, [I

    fill-array-data v0, :array_32

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    .line 230
    new-array v0, v1, [I

    fill-array-data v0, :array_4e

    sput-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    .line 233
    new-array v0, v1, [I

    fill-array-data v0, :array_74

    sput-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    .line 236
    new-array v0, v1, [I

    fill-array-data v0, :array_9a

    sput-object v0, Ljava/util/GregorianCalendar;->leastMaximums:[I

    return-void

    .line 224
    :array_28
    .array-data 0x1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 227
    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    .line 230
    :array_4e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xd2t 0xd2t 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x0t 0xddt 0x6dt 0x0t
    .end array-data

    .line 233
    :array_74
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0xe3t 0x35t 0xfdt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 236
    :array_9a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xabt 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x63t 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x80t 0x4ft 0x12t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 258
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 259
    return-void
.end method

.method public constructor <init>(III)V
    .registers 10
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 274
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 217
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 219
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 221
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 241
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 243
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 245
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 247
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 275
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 276
    return-void

    .line 241
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIII)V
    .registers 12
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 295
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 217
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 219
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 221
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 241
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 243
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 245
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 247
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 296
    invoke-virtual/range {p0 .. p5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 297
    return-void

    .line 241
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIIII)V
    .registers 13
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 319
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 217
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 219
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 221
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 241
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 243
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 245
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 247
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 320
    invoke-virtual/range {p0 .. p6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 321
    return-void

    .line 241
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 325
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 337
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timezone"

    .prologue
    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 9
    .parameter "timezone"
    .parameter "locale"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x7d0

    const/16 v2, 0xa

    .line 363
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 217
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 219
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 221
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 241
    new-array v0, v2, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 243
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 245
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 247
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 365
    return-void

    .line 241
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Z)V
    .registers 9
    .parameter "ignored"

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x7d0

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 368
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 217
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 219
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 221
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v0, v4

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 241
    new-array v0, v3, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 243
    iput-wide v5, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 245
    iput-wide v5, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 247
    iput v3, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 369
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 370
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 371
    return-void

    .line 241
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final cachedFieldsCheckAndGet(JJJII)V
    .registers 14
    .parameter "timeVal"
    .parameter "newTimeMillis"
    .parameter "newTimeMillisAdjusted"
    .parameter "millis"
    .parameter "zoneOffset"

    .prologue
    .line 598
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v2, 0x10

    aget v0, v1, v2

    .line 599
    .local v0, dstOffset:I
    iget-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    if-eqz v1, :cond_2d

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p3, v1

    if-gez v1, :cond_2d

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p3, v1

    if-lez v1, :cond_2d

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-ne v1, p8, :cond_2d

    if-nez v0, :cond_25

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p5, v1

    if-gez v1, :cond_2d

    :cond_25
    if-eqz v0, :cond_34

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p5, v1

    if-gtz v1, :cond_34

    .line 605
    :cond_2d
    invoke-direct {p0, p1, p2, p7, p8}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    .line 606
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 618
    :goto_33
    return-void

    .line 608
    :cond_34
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 609
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x2

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 610
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x5

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 611
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x7

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    .line 612
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    aput v3, v1, v2

    .line 613
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x3

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, v1, v2

    .line 614
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x4

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aput v3, v1, v2

    .line 615
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x6

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    aput v3, v1, v2

    .line 616
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v2, 0x8

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    aput v3, v1, v2

    goto :goto_33
.end method

.method private computeYearAndDay(JJ)I
    .registers 12
    .parameter "dayCount"
    .parameter "localTime"

    .prologue
    const/4 v6, 0x1

    .line 928
    const/16 v3, 0x7b2

    .line 929
    .local v3, year:I
    move-wide v1, p1

    .line 930
    .local v1, days:J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_e

    .line 931
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 935
    :cond_e
    :goto_e
    const-wide/16 v4, 0x16d

    div-long v4, v1, v4

    long-to-int v0, v4

    .local v0, approxYears:I
    if-eqz v0, :cond_1d

    .line 936
    add-int/2addr v3, v0

    .line 937
    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    sub-long v1, p1, v4

    goto :goto_e

    .line 939
    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2a

    .line 940
    sub-int/2addr v3, v6

    .line 941
    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 943
    :cond_2a
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    aput v3, v4, v6

    .line 944
    long-to-int v4, v1

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private daysFromBaseYear(I)J
    .registers 12
    .parameter "iyear"

    .prologue
    .line 948
    int-to-long v2, p1

    .line 950
    .local v2, year:J
    const-wide/16 v4, 0x7b2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4f

    .line 951
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b1

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long v0, v4, v6

    .line 952
    .local v0, days:J
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_30

    .line 953
    const-wide/16 v4, 0x76d

    sub-long v4, v2, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/16 v6, 0x641

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    :goto_2e
    move-wide v4, v0

    .line 967
    .end local v0           #days:J
    :goto_2f
    return-wide v4

    .line 955
    .restart local v0       #days:J
    :cond_30
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_3c

    .line 956
    iget v4, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 957
    :cond_3c
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_4a

    .line 958
    iget v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 960
    :cond_4a
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 964
    .end local v0           #days:J
    :cond_4f
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6a

    .line 965
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iget v6, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_2f

    .line 967
    :cond_6a
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    goto :goto_2f
.end method

.method private daysInMonth()I
    .registers 4

    .prologue
    .line 972
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    return v0
.end method

.method private daysInMonth(ZI)I
    .registers 4
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 976
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 977
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 980
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    goto :goto_b
.end method

.method private daysInYear(I)I
    .registers 5
    .parameter "year"

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x16e

    move v0, v1

    .line 985
    .local v0, daysInYear:I
    :goto_9
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne p1, v1, :cond_10

    .line 986
    iget v1, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    .line 988
    :cond_10
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_19

    .line 989
    iget v1, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    .line 991
    :cond_19
    return v0

    .line 984
    .end local v0           #daysInYear:I
    :cond_1a
    const/16 v1, 0x16d

    move v0, v1

    goto :goto_9
.end method

.method private daysInYear(ZI)I
    .registers 4
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 995
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-le p2, v0, :cond_c

    .line 996
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 999
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    goto :goto_b
.end method

.method private final fullFieldsCalc(JII)V
    .registers 26
    .parameter "timeVal"
    .parameter "millis"
    .parameter "zoneOffset"

    .prologue
    .line 492
    const-wide/32 v5, 0x5265c00

    div-long v13, p1, v5

    .line 494
    .local v13, days:J
    if-gez p3, :cond_f

    .line 495
    const v5, 0x5265c00

    add-int p3, p3, v5

    .line 496
    const-wide/16 v5, 0x1

    sub-long/2addr v13, v5

    .line 499
    :cond_f
    add-int p3, p3, p4

    .line 500
    :goto_11
    if-gez p3, :cond_1c

    .line 501
    const v5, 0x5265c00

    add-int p3, p3, v5

    .line 502
    const-wide/16 v5, 0x1

    sub-long/2addr v13, v5

    goto :goto_11

    .line 504
    :cond_1c
    :goto_1c
    const v5, 0x5265c00

    move/from16 v0, p3

    move v1, v5

    if-lt v0, v1, :cond_2d

    .line 505
    const v5, 0x5265c00

    sub-int p3, p3, v5

    .line 506
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    goto :goto_1c

    .line 509
    :cond_2d
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v5, v0

    add-long v5, v5, p1

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v12

    .line 510
    .local v12, dayOfYear:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aput v12, v5, v6

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move v6, v0

    if-ne v5, v6, :cond_67

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide v5, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v7, v0

    add-long v7, v7, p1

    cmp-long v5, v5, v7

    if-gez v5, :cond_67

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    move v5, v0

    add-int/2addr v12, v5

    .line 514
    :cond_67
    div-int/lit8 v8, v12, 0x20

    .line 515
    .local v8, month:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v17

    .line 516
    .local v17, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v5

    sub-int v9, v12, v5

    .line 517
    .local v9, date:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    if-le v9, v5, :cond_9a

    .line 518
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    sub-int/2addr v9, v5

    .line 519
    add-int/lit8 v8, v8, 0x1

    .line 521
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x7

    const-wide/16 v10, 0x3

    sub-long v10, v13, v10

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    if-gtz v5, :cond_2ac

    const/4 v5, 0x0

    move/from16 v16, v5

    .line 524
    .local v16, dstOffset:I
    :goto_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    if-lez v5, :cond_c8

    .line 525
    sub-int v16, v16, p4

    .line 527
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x10

    aput v16, v5, v6

    .line 528
    if-eqz v16, :cond_171

    .line 529
    move-wide/from16 v18, v13

    .line 530
    .local v18, oldDays:J
    add-int p3, p3, v16

    .line 531
    if-gez p3, :cond_2cb

    .line 532
    const v5, 0x5265c00

    add-int p3, p3, v5

    .line 533
    const-wide/16 v5, 0x1

    sub-long/2addr v13, v5

    .line 538
    :cond_e1
    :goto_e1
    cmp-long v5, v18, v13

    if-eqz v5, :cond_171

    .line 539
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v5, v0

    sub-long v5, p1, v5

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v7, v0

    add-long/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v12

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aput v12, v5, v6

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move v6, v0

    if-ne v5, v6, :cond_129

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide v5, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v7, v0

    sub-long v7, p1, v7

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v9, v0

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_129

    .line 543
    .end local v9           #date:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    move v5, v0

    add-int/2addr v12, v5

    .line 545
    :cond_129
    div-int/lit8 v8, v12, 0x20

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v17

    .line 547
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v5

    sub-int v9, v12, v5

    .line 548
    .restart local v9       #date:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    if-le v9, v5, :cond_15c

    .line 549
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    sub-int/2addr v9, v5

    .line 550
    add-int/lit8 v8, v8, 0x1

    .line 552
    :cond_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x7

    const-wide/16 v10, 0x3

    sub-long v10, v13, v10

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 556
    .end local v18           #oldDays:J
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xe

    move/from16 v0, p3

    rem-int/lit16 v0, v0, 0x3e8

    move v7, v0

    aput v7, v5, v6

    .line 557
    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p3, v0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xd

    rem-int/lit8 v7, p3, 0x3c

    aput v7, v5, v6

    .line 559
    div-int/lit8 p3, p3, 0x3c

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xc

    rem-int/lit8 v7, p3, 0x3c

    aput v7, v5, v6

    .line 561
    div-int/lit8 p3, p3, 0x3c

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xb

    rem-int/lit8 v7, p3, 0x18

    aput v7, v5, v6

    .line 563
    div-int/lit8 p3, p3, 0x18

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/16 v10, 0xb

    aget v7, v7, v10

    const/16 v10, 0xb

    if-le v7, v10, :cond_2dd

    const/4 v7, 0x1

    :goto_1c1
    aput v7, v5, v6

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/16 v10, 0xb

    aget v7, v7, v10

    rem-int/lit8 v7, v7, 0xc

    aput v7, v5, v6

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    if-gtz v5, :cond_2e0

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x1

    aget v7, v7, v10

    neg-int v7, v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 573
    :goto_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x2

    aput v8, v5, v6

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x5

    aput v9, v5, v6

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/16 v6, 0x8

    const/4 v7, 0x1

    sub-int v7, v9, v7

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x4

    const/4 v7, 0x1

    sub-int v7, v9, v7

    int-to-long v8, v9

    sub-long v8, v13, v8

    const-wide/16 v10, 0x2

    sub-long/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    .end local v8           #month:I
    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 578
    const-wide/16 v5, 0x3

    sub-long v5, v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v8, 0x6

    aget v7, v7, v8

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v15

    .line 580
    .local v15, daysFromStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aget v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int/2addr v5, v15

    div-int/lit8 v5, v5, 0x7

    const/4 v6, 0x7

    sub-int/2addr v6, v15

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v6, v7, :cond_2eb

    const/4 v6, 0x1

    :goto_277
    add-int v20, v5, v6

    .line 582
    .local v20, week:I
    if-nez v20, :cond_2f2

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    .end local v9           #date:I
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_2ed

    const/4 v8, 0x2

    :goto_296
    sub-int v8, v15, v8

    int-to-long v8, v8

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v7, v8, :cond_2ef

    const/16 v7, 0x35

    :goto_2a9
    aput v7, v5, v6

    .line 593
    :goto_2ab
    return-void

    .line 522
    .end local v15           #daysFromStart:I
    .end local v16           #dstOffset:I
    .end local v20           #week:I
    .restart local v8       #month:I
    .restart local v9       #date:I
    :cond_2ac
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v7, v0

    const/4 v10, 0x1

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v10, v0

    const/4 v11, 0x7

    aget v10, v10, v11

    move/from16 v11, p3

    invoke-virtual/range {v5 .. v11}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v5

    move/from16 v16, v5

    goto/16 :goto_bc

    .line 534
    .restart local v16       #dstOffset:I
    .restart local v18       #oldDays:J
    :cond_2cb
    const v5, 0x5265c00

    move/from16 v0, p3

    move v1, v5

    if-lt v0, v1, :cond_e1

    .line 535
    const v5, 0x5265c00

    sub-int p3, p3, v5

    .line 536
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    goto/16 :goto_e1

    .line 564
    .end local v18           #oldDays:J
    :cond_2dd
    const/4 v7, 0x0

    goto/16 :goto_1c1

    .line 571
    :cond_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    goto/16 :goto_1fd

    .line 580
    .end local v8           #month:I
    .restart local v15       #daysFromStart:I
    :cond_2eb
    const/4 v6, 0x0

    goto :goto_277

    .line 583
    .end local v9           #date:I
    .restart local v20       #week:I
    :cond_2ed
    const/4 v8, 0x1

    goto :goto_296

    :cond_2ef
    const/16 v7, 0x34

    goto :goto_2a9

    .line 586
    .restart local v9       #date:I
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x6

    aget v5, v5, v6

    if-eqz v17, :cond_32b

    const/16 v6, 0x16f

    :goto_2fe
    if-eqz v17, :cond_32e

    const/4 v7, 0x2

    :goto_301
    add-int/2addr v7, v15

    int-to-long v7, v7

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_335

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x7

    if-eqz v17, :cond_330

    const/4 v8, 0x2

    :goto_317
    add-int/2addr v8, v15

    int-to-long v8, v8

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v7, v8, :cond_332

    const/4 v7, 0x1

    :goto_328
    aput v7, v5, v6

    goto :goto_2ab

    .line 586
    :cond_32b
    const/16 v6, 0x16e

    goto :goto_2fe

    :cond_32e
    const/4 v7, 0x1

    goto :goto_301

    .line 588
    :cond_330
    const/4 v8, 0x1

    goto :goto_317

    :cond_332
    move/from16 v7, v20

    goto :goto_328

    .line 591
    :cond_335
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object v5, v0

    const/4 v6, 0x3

    aput v20, v5, v6

    goto/16 :goto_2ab
.end method

.method private julianError()I
    .registers 3

    .prologue
    .line 1267
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private mod(II)I
    .registers 5
    .parameter "value"
    .parameter "mod"

    .prologue
    .line 1271
    rem-int v0, p1, p2

    .line 1272
    .local v0, rem:I
    if-gez p1, :cond_9

    if-gez v0, :cond_9

    .line 1273
    add-int v1, v0, p2

    .line 1275
    :goto_8
    return v1

    :cond_9
    move v1, v0

    goto :goto_8
.end method

.method private mod7(J)I
    .registers 6
    .parameter "num1"

    .prologue
    .line 1279
    const-wide/16 v1, 0x7

    rem-long v1, p1, v1

    long-to-int v0, v1

    .line 1280
    .local v0, rem:I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_10

    if-gez v0, :cond_10

    .line 1281
    add-int/lit8 v1, v0, 0x7

    .line 1283
    :goto_f
    return v1

    :cond_10
    move v1, v0

    goto :goto_f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1444
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1446
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1438
    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 16
    .parameter "field"
    .parameter "value"

    .prologue
    .line 387
    if-nez p2, :cond_3

    .line 476
    :cond_2
    :goto_2
    return-void

    .line 390
    :cond_3
    if-ltz p1, :cond_9

    const/16 v7, 0xf

    if-lt p1, v7, :cond_f

    .line 391
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 394
    :cond_f
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 396
    if-nez p1, :cond_32

    .line 397
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 398
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2a

    .line 399
    if-gez p2, :cond_2

    .line 402
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 409
    :goto_26
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_2

    .line 404
    :cond_2a
    if-lez p2, :cond_2

    .line 407
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_26

    .line 413
    :cond_32
    const/4 v7, 0x1

    if-eq p1, v7, :cond_38

    const/4 v7, 0x2

    if-ne p1, v7, :cond_85

    .line 414
    :cond_38
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 415
    const/4 v7, 0x2

    if-ne p1, v7, :cond_57

    .line 416
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    add-int v1, v7, p2

    .line 417
    .local v1, month:I
    if-gez v1, :cond_82

    .line 418
    const/16 v7, 0xb

    sub-int v7, v1, v7

    div-int/lit8 p2, v7, 0xc

    .line 419
    rem-int/lit8 v7, v1, 0xc

    add-int/lit8 v1, v7, 0xc

    .line 423
    :goto_51
    const/4 v7, 0x2

    rem-int/lit8 v8, v1, 0xc

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 425
    .end local v1           #month:I
    :cond_57
    const/4 v7, 0x1

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v8, p2

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 426
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v7

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-direct {p0, v7, v8}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    .line 427
    .local v0, days:I
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x5

    aget v7, v7, v8

    if-le v7, v0, :cond_7e

    .line 428
    const/4 v7, 0x5

    invoke-virtual {p0, v7, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 430
    :cond_7e
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_2

    .line 421
    .end local v0           #days:I
    .restart local v1       #month:I
    :cond_82
    div-int/lit8 p2, v1, 0xc

    goto :goto_51

    .line 434
    .end local v1           #month:I
    :cond_85
    const-wide/16 v2, 0x0

    .line 435
    .local v2, multiplier:J
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    .line 436
    packed-switch p1, :pswitch_data_f8

    .line 464
    :goto_8d
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_bc

    .line 465
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 466
    .local v6, zoneOffset:I
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v5

    .line 467
    .local v5, offset:I
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    mul-long/2addr v9, v2

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    .line 468
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v4

    .line 470
    .local v4, newOffset:I
    if-eq v4, v5, :cond_bc

    .line 471
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    sub-int v9, v5, v4

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    .line 474
    .end local v4           #newOffset:I
    .end local v5           #offset:I
    .end local v6           #zoneOffset:I
    :cond_bc
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    .line 475
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 438
    :pswitch_c4
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 441
    :pswitch_cb
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 444
    :pswitch_d5
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    const-wide/32 v11, 0xea60

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 448
    :pswitch_e0
    iget-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v9, p2

    const-wide/32 v11, 0x36ee80

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, p0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_8d

    .line 451
    :pswitch_eb
    const-wide/32 v2, 0x2932e00

    .line 452
    goto :goto_8d

    .line 456
    :pswitch_ef
    const-wide/32 v2, 0x5265c00

    .line 457
    goto :goto_8d

    .line 461
    :pswitch_f3
    const-wide/32 v2, 0x240c8400

    goto :goto_8d

    .line 436
    nop

    :pswitch_data_f8
    .packed-switch 0x3
        :pswitch_f3
        :pswitch_f3
        :pswitch_ef
        :pswitch_ef
        :pswitch_ef
        :pswitch_f3
        :pswitch_eb
        :pswitch_e0
        :pswitch_e0
        :pswitch_d5
        :pswitch_cb
        :pswitch_c4
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 486
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 487
    .local v0, thisClone:Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    iput-object p0, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 488
    return-object v0
.end method

.method protected computeFields()V
    .registers 16

    .prologue
    .line 622
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    .line 624
    .local v8, zoneOffset:I
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xf

    aput v8, v0, v1

    .line 626
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->time:J

    const-wide/32 v2, 0x5265c00

    rem-long/2addr v0, v2

    long-to-int v13, v0

    .line 627
    .local v13, millis:I
    move v7, v13

    .line 628
    .local v7, savedMillis:I
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0x10

    aget v10, v0, v1

    .line 630
    .local v10, dstOffset:I
    add-int v14, v8, v10

    .line 631
    .local v14, offset:I
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v2, v14

    add-long v3, v0, v2

    .line 633
    .local v3, newTime:J
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->time:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_ce

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gez v0, :cond_ce

    if-lez v14, :cond_ce

    .line 634
    const-wide v3, 0x7fffffffffffffffL

    .line 639
    :cond_38
    :goto_38
    iget-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    if-eqz v0, :cond_103

    .line 640
    if-gez v13, :cond_42

    .line 641
    const v0, 0x5265c00

    add-int/2addr v13, v0

    .line 645
    :cond_42
    add-int/2addr v13, v8

    .line 646
    add-int/2addr v13, v10

    .line 648
    if-gez v13, :cond_e2

    .line 649
    const v0, 0x5265c00

    add-int/2addr v13, v0

    .line 654
    :cond_4a
    :goto_4a
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xe

    rem-int/lit16 v2, v13, 0x3e8

    aput v2, v0, v1

    .line 655
    div-int/lit16 v13, v13, 0x3e8

    .line 656
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xd

    rem-int/lit8 v2, v13, 0x3c

    aput v2, v0, v1

    .line 657
    div-int/lit8 v13, v13, 0x3c

    .line 658
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xc

    rem-int/lit8 v2, v13, 0x3c

    aput v2, v0, v1

    .line 659
    div-int/lit8 v13, v13, 0x3c

    .line 660
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xb

    rem-int/lit8 v2, v13, 0x18

    aput v2, v0, v1

    .line 661
    div-int/lit8 v13, v13, 0x18

    .line 662
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0x9

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xb

    aget v2, v2, v5

    const/16 v5, 0xb

    if-le v2, v5, :cond_ed

    const/4 v2, 0x1

    :goto_81
    aput v2, v0, v1

    .line 663
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xa

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xb

    aget v2, v2, v5

    rem-int/lit8 v2, v2, 0xc

    aput v2, v0, v1

    .line 665
    move-wide v5, v3

    .line 666
    .local v5, newTimeAdjusted:J
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 668
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v11

    .line 671
    .local v11, dstSavings:I
    if-nez v10, :cond_ef

    int-to-long v0, v11

    :goto_a7
    add-long/2addr v5, v0

    .line 674
    .end local v11           #dstSavings:I
    :cond_a8
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_f2

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-gez v0, :cond_f2

    if-nez v10, :cond_f2

    .line 675
    const-wide v5, 0x7fffffffffffffffL

    .line 680
    :cond_bb
    :goto_bb
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/GregorianCalendar;->cachedFieldsCheckAndGet(JJJII)V

    .line 686
    .end local v5           #newTimeAdjusted:J
    :goto_c1
    const/4 v12, 0x0

    .local v12, i:I
    :goto_c2
    const/16 v0, 0x11

    if-ge v12, v0, :cond_109

    .line 687
    iget-object v0, p0, Ljava/util/GregorianCalendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v12

    .line 686
    add-int/lit8 v12, v12, 0x1

    goto :goto_c2

    .line 635
    .end local v12           #i:I
    :cond_ce
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->time:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-gez v0, :cond_38

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_38

    if-gez v14, :cond_38

    .line 636
    const-wide/high16 v3, -0x8000

    goto/16 :goto_38

    .line 650
    :cond_e2
    const v0, 0x5265c00

    if-lt v13, v0, :cond_4a

    .line 651
    const v0, 0x5265c00

    sub-int/2addr v13, v0

    goto/16 :goto_4a

    .line 662
    :cond_ed
    const/4 v2, 0x0

    goto :goto_81

    .line 671
    .restart local v5       #newTimeAdjusted:J
    .restart local v11       #dstSavings:I
    :cond_ef
    neg-int v0, v11

    int-to-long v0, v0

    goto :goto_a7

    .line 676
    .end local v11           #dstSavings:I
    :cond_f2
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gez v0, :cond_bb

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_bb

    if-eqz v10, :cond_bb

    .line 677
    const-wide/high16 v5, -0x8000

    goto :goto_bb

    .line 683
    .end local v5           #newTimeAdjusted:J
    :cond_103
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->time:J

    invoke-direct {p0, v0, v1, v7, v8}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    goto :goto_c1

    .line 691
    .restart local v12       #i:I
    :cond_109
    iget-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    if-nez v0, :cond_1e7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v3, v0

    if-eqz v0, :cond_1e7

    const-wide/high16 v0, -0x8000

    cmp-long v0, v3, v0

    if-eqz v0, :cond_1e7

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    instance-of v0, v0, Ljava/util/SimpleTimeZone;

    if-eqz v0, :cond_1e7

    .line 695
    :cond_12e
    const/4 v9, 0x0

    .line 697
    .local v9, cacheMillis:I
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    aput v2, v0, v1

    .line 698
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    aput v2, v0, v1

    .line 699
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x2

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x5

    aget v2, v2, v5

    aput v2, v0, v1

    .line 700
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x3

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x7

    aget v2, v2, v5

    aput v2, v0, v1

    .line 701
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x4

    aput v8, v0, v1

    .line 702
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x5

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    aput v2, v0, v1

    .line 703
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x6

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v2, v0, v1

    .line 704
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v1, 0x7

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x4

    aget v2, v2, v5

    aput v2, v0, v1

    .line 705
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v1, 0x8

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x6

    aget v2, v2, v5

    aput v2, v0, v1

    .line 706
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v1, 0x9

    iget-object v2, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0x8

    aget v2, v2, v5

    aput v2, v0, v1

    .line 708
    const/16 v0, 0x17

    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v9, v0

    .line 709
    const/16 v0, 0x3b

    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v9, v0

    .line 710
    const/16 v0, 0x3b

    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v9, v0

    .line 711
    int-to-long v0, v9

    add-long/2addr v0, v3

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 713
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v9, v0, 0x3e8

    .line 714
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v9, v0

    .line 715
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v9, v0

    .line 716
    int-to-long v0, v9

    sub-long v0, v3, v0

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 720
    .end local v9           #cacheMillis:I
    :cond_1e7
    return-void
.end method

.method protected computeTime()V
    .registers 28

    .prologue
    .line 724
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_2d8

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_36

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    if-ltz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    const/16 v21, 0x17

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_66

    .line 727
    :cond_30
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 729
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_66

    .line 730
    :cond_60
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 732
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    if-ltz v20, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_96

    .line 733
    :cond_90
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 735
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    if-ltz v20, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c6

    .line 736
    :cond_c0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 738
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    if-ltz v20, :cond_f0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    const/16 v21, 0x3e7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f6

    .line 740
    :cond_f0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 742
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x35

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12c

    .line 744
    :cond_126
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 746
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_162

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_15c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_162

    .line 748
    :cond_15c
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 750
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_198

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_198

    .line 752
    :cond_192
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 754
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1ce

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1c8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1ce

    .line 756
    :cond_1c8
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 758
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    if-eqz v20, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1fe

    .line 759
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 761
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_22e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_22e

    .line 762
    :cond_228
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 764
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2a8

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_277

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116babfe

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_27d

    .line 767
    :cond_277
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 768
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2a2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116bd2d2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2a8

    .line 769
    :cond_2a2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 772
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2d8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    if-ltz v20, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2d8

    .line 773
    :cond_2d2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 778
    :cond_2d8
    const-wide/16 v6, 0x0

    .line 779
    .local v6, hour:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3af

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3af

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v6, v0

    .line 784
    :cond_302
    :goto_302
    const-wide/32 v20, 0x36ee80

    mul-long v11, v6, v20

    .line 786
    .local v11, timeVal:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_329

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xea60

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 789
    :cond_329
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_34a

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 792
    :cond_34a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_367

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v11, v11, v20

    .line 797
    :cond_367
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3d9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v19, v20

    .line 798
    .local v19, year:I
    :goto_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3ee

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-eqz v20, :cond_3de

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3de

    .line 801
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 781
    .end local v11           #timeVal:J
    .end local v19           #year:I
    :cond_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_302

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    mul-int/lit8 v20, v20, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v6, v0

    goto/16 :goto_302

    .line 797
    .restart local v11       #timeVal:J
    :cond_3d9
    const/16 v20, 0x7b2

    move/from16 v19, v20

    goto :goto_37f

    .line 803
    .restart local v19       #year:I
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_3ee

    .line 804
    const/16 v20, 0x1

    sub-int v19, v20, v19

    .line 808
    :cond_3ee
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-nez v20, :cond_406

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_543

    :cond_406
    const/16 v20, 0x1

    move/from16 v18, v20

    .line 810
    .local v18, weekMonthSet:Z
    :goto_40a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-nez v20, :cond_424

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-nez v20, :cond_424

    if-eqz v18, :cond_549

    :cond_424
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_549

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 812
    .local v16, useMonth:Z
    :goto_436
    if-eqz v16, :cond_48c

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_454

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_48c

    .line 814
    :cond_454
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_555

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_555

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_54f

    if-eqz v18, :cond_54f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_54f

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 822
    :cond_48c
    :goto_48c
    if-eqz v16, :cond_734

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v9, v20, v21

    .line 824
    .local v9, month:I
    div-int/lit8 v20, v9, 0xc

    add-int v19, v19, v20

    .line 825
    rem-int/lit8 v9, v9, 0xc

    .line 826
    if-gez v9, :cond_4a4

    .line 827
    add-int/lit8 v19, v19, -0x1

    .line 828
    add-int/lit8 v9, v9, 0xc

    .line 830
    :cond_4a4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    .line 831
    .local v8, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v4, v20, v22

    .line 832
    .local v4, days:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v15, v20, v21

    .line 833
    .local v15, useDate:Z
    if-eqz v15, :cond_50b

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4f9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4f9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_50b

    .line 836
    :cond_4f9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_507

    if-nez v18, :cond_584

    :cond_507
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 838
    :cond_50b
    :goto_50b
    if-eqz v15, :cond_623

    .line 839
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_589

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_53d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_589

    .line 842
    :cond_53d
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 808
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    .end local v16           #useMonth:Z
    .end local v18           #weekMonthSet:Z
    :cond_543
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_40a

    .line 810
    .restart local v18       #weekMonthSet:Z
    :cond_549
    const/16 v20, 0x0

    move/from16 v16, v20

    goto/16 :goto_436

    .line 815
    .restart local v16       #useMonth:Z
    :cond_54f
    const/16 v20, 0x0

    move/from16 v16, v20

    goto/16 :goto_48c

    .line 817
    :cond_555
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_48c

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_57f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_57f

    const/16 v20, 0x1

    move/from16 v16, v20

    :goto_57d
    goto/16 :goto_48c

    :cond_57f
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_57d

    .line 836
    .restart local v4       #days:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_584
    const/16 v20, 0x0

    move/from16 v15, v20

    goto :goto_50b

    .line 844
    :cond_589
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 900
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    :cond_59e
    :goto_59e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    .line 902
    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    add-long v11, v11, v20

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5e3

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    add-long v20, v20, v22

    cmp-long v20, v11, v20

    if-ltz v20, :cond_5e3

    .line 906
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    sub-long v11, v11, v20

    .line 915
    :cond_5e3
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v11, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v13, v20, v22

    .line 917
    .local v13, timeValWithoutDST:J
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v11, v11, v20

    .line 920
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    .line 921
    cmp-long v20, v13, v11

    if-eqz v20, :cond_622

    .line 922
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->computeFields()V

    .line 923
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    .line 925
    :cond_622
    return-void

    .line 847
    .end local v13           #timeValWithoutDST:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_623
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_6a4

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .line 852
    .local v3, dayOfWeek:I
    :goto_63d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_6ad

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6ad

    .line 854
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 855
    .local v10, skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 857
    goto/16 :goto_59e

    .line 850
    .end local v3           #dayOfWeek:I
    .end local v10           #skew:I
    :cond_6a4
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .restart local v3       #dayOfWeek:I
    goto :goto_63d

    .line 857
    :cond_6ad
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_59e

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    if-ltz v20, :cond_6f2

    .line 859
    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    const/16 v22, 0x1

    sub-int v21, v21, v22

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 862
    :cond_6f2
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v20

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v23, v23, v4

    const-wide/16 v25, 0x3

    sub-long v23, v23, v25

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 870
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    :cond_734
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_7ed

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7ed

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 872
    .local v17, useWeekYear:Z
    :goto_752
    if-eqz v17, :cond_76a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_76a

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v17, v20, v21

    .line 875
    :cond_76a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    .line 876
    .restart local v4       #days:J
    if-eqz v17, :cond_7fc

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_7f3

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .line 883
    .restart local v3       #dayOfWeek:I
    :goto_78e
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 884
    .restart local v10       #skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 886
    const/16 v20, 0x7

    sub-int v20, v20, v10

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_59e

    .line 887
    const-wide/16 v20, 0x7

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 870
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v10           #skew:I
    .end local v17           #useWeekYear:Z
    :cond_7ed
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_752

    .line 881
    .restart local v4       #days:J
    .restart local v17       #useWeekYear:Z
    :cond_7f3
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    const/16 v21, 0x1

    sub-int v3, v20, v21

    .restart local v3       #dayOfWeek:I
    goto :goto_78e

    .line 889
    .end local v3           #dayOfWeek:I
    :cond_7fc
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_862

    .line 890
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_84b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_842

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v21

    if-eqz v21, :cond_848

    const/16 v21, 0x1

    :goto_836
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x16d

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_84b

    .line 893
    :cond_842
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 890
    :cond_848
    const/16 v21, 0x0

    goto :goto_836

    .line 895
    :cond_84b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e

    .line 896
    :cond_862
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_59e

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_59e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 1019
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1
    iget-wide v2, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getActualMaximum(I)I
    .registers 13
    .parameter "field"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1035
    sget-object v5, Ljava/util/GregorianCalendar;->maximums:[I

    aget v4, v5, p1

    .local v4, value:I
    sget-object v5, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_10

    move v5, v4

    .line 1091
    :goto_f
    return v5

    .line 1039
    :cond_10
    packed-switch p1, :pswitch_data_a8

    .line 1046
    :goto_13
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1047
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    .line 1048
    .local v1, orgTime:J
    const/4 v3, 0x0

    .line 1049
    .local v3, result:I
    packed-switch p1, :pswitch_data_b0

    .line 1090
    :cond_1c
    :goto_1c
    :pswitch_1c
    iput-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    move v5, v3

    .line 1091
    goto :goto_f

    .line 1042
    .end local v1           #orgTime:J
    .end local v3           #result:I
    :pswitch_20
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->isCached:Z

    goto :goto_13

    .line 1051
    .restart local v1       #orgTime:J
    .restart local v3       #result:I
    :pswitch_23
    const/16 v5, 0x1f

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1052
    const/4 v5, 0x2

    const/16 v6, 0xb

    invoke-virtual {p0, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1053
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1054
    if-ne v3, v7, :cond_3d

    .line 1055
    const/16 v5, 0x18

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1056
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1058
    :cond_3d
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    goto :goto_1c

    .line 1061
    :pswitch_40
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1062
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1063
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    goto :goto_1c

    .line 1066
    :pswitch_4f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    goto :goto_f

    .line 1068
    :pswitch_54
    iget-object v5, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v5, v5, v7

    invoke-direct {p0, v5}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v5

    goto :goto_f

    .line 1070
    :pswitch_5d
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v6

    invoke-virtual {p0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7

    add-int v3, v5, v6

    .line 1072
    goto :goto_1c

    .line 1074
    :pswitch_71
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1075
    .local v0, clone:Ljava/util/GregorianCalendar;
    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_99

    .line 1076
    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1080
    :goto_85
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1081
    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1082
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1083
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 1078
    :cond_99
    const-wide/high16 v5, -0x8000

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_85

    .line 1087
    .end local v0           #clone:Ljava/util/GregorianCalendar;
    :pswitch_9f
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v3

    goto/16 :goto_1c

    .line 1039
    nop

    :pswitch_data_a8
    .packed-switch 0x3
        :pswitch_20
        :pswitch_20
    .end packed-switch

    .line 1049
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_71
        :pswitch_1c
        :pswitch_23
        :pswitch_40
        :pswitch_4f
        :pswitch_54
        :pswitch_1c
        :pswitch_5d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_9f
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1106
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public getGreatestMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1120
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .registers 4

    .prologue
    .line 1131
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .registers 9
    .parameter "field"

    .prologue
    .line 1147
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide v5, -0xb1d069b5400L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1e

    .line 1149
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    .line 1150
    .local v1, currentTimeInMillis:J
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {p0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1151
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    .line 1152
    .local v0, actual:I
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    move v3, v0

    .line 1155
    .end local v0           #actual:I
    .end local v1           #currentTimeInMillis:J
    :goto_1d
    return v3

    :cond_1e
    sget-object v3, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v3, v3, p1

    goto :goto_1d
.end method

.method public getMaximum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1169
    sget-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1182
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method getOffset(J)I
    .registers 25
    .parameter "localTime"

    .prologue
    .line 1186
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1187
    .local v3, timeZone:Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1188
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    .line 1231
    :goto_e
    return v4

    .line 1191
    :cond_f
    const-wide/32 v18, 0x5265c00

    div-long v11, p1, v18

    .line 1192
    .local v11, dayCount:J
    const-wide/32 v18, 0x5265c00

    rem-long v18, p1, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v9, v0

    .line 1193
    .local v9, millis:I
    if-gez v9, :cond_27

    .line 1194
    const v4, 0x5265c00

    add-int/2addr v9, v4

    .line 1195
    const-wide/16 v18, 0x1

    sub-long v11, v11, v18

    .line 1198
    :cond_27
    const/16 v5, 0x7b2

    .line 1199
    .local v5, year:I
    move-wide v14, v11

    .line 1200
    .local v14, days:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_3f

    .line 1201
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->julianSkew:I

    move v4, v0

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 1205
    :cond_3f
    :goto_3f
    const-wide/16 v18, 0x16d

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v10, v0

    .local v10, approxYears:I
    if-eqz v10, :cond_54

    .line 1206
    add-int/2addr v5, v10

    .line 1207
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v18

    sub-long v14, v11, v18

    goto :goto_3f

    .line 1209
    :cond_54
    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-gez v4, :cond_8b

    .line 1210
    const/4 v4, 0x1

    sub-int/2addr v5, v4

    .line 1211
    const-wide/16 v18, 0x16d

    add-long v18, v18, v14

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_93

    const/4 v4, 0x1

    :goto_6a
    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    .line 1212
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move v4, v0

    if-ne v5, v4, :cond_8b

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_8b

    .line 1213
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v4

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 1216
    :cond_8b
    if-gtz v5, :cond_95

    .line 1217
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    goto/16 :goto_e

    .line 1211
    :cond_93
    const/4 v4, 0x0

    goto :goto_6a

    .line 1219
    :cond_95
    long-to-int v4, v14

    add-int/lit8 v13, v4, 0x1

    .line 1221
    .local v13, dayOfYear:I
    div-int/lit8 v6, v13, 0x20

    .line 1222
    .local v6, month:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v16

    .line 1223
    .local v16, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v4

    sub-int v7, v13, v4

    .line 1224
    .local v7, date:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    if-le v7, v4, :cond_c3

    .line 1225
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v7, v4

    .line 1226
    add-int/lit8 v6, v6, 0x1

    .line 1228
    :cond_c3
    const-wide/16 v18, 0x3

    sub-long v18, v11, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    .line 1229
    .local v8, dayOfWeek:I
    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v9}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v17

    .local v17, offset:I
    move/from16 v4, v17

    .line 1231
    goto/16 :goto_e
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1245
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .registers 5
    .parameter "year"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1259
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-le p1, v0, :cond_16

    .line 1260
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_14

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_12

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_14

    :cond_12
    move v0, v2

    .line 1263
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 1260
    goto :goto_13

    .line 1263
    :cond_16
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_13

    :cond_1c
    move v0, v1

    goto :goto_13
.end method

.method public roll(II)V
    .registers 15
    .parameter "field"
    .parameter "value"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 1303
    if-nez p2, :cond_5

    .line 1384
    :goto_4
    return-void

    .line 1306
    :cond_5
    if-ltz p1, :cond_b

    const/16 v7, 0xf

    if-lt p1, v7, :cond_11

    .line 1307
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 1310
    :cond_11
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1312
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1313
    const/4 v2, -0x1

    .line 1314
    .local v2, max:I
    packed-switch p1, :pswitch_data_114

    .line 1380
    :cond_1b
    :goto_1b
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2d

    .line 1381
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, p1

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-direct {p0, v7, v2}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, p1, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1383
    :cond_2d
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_4

    .line 1316
    :pswitch_31
    sget-object v7, Ljava/util/GregorianCalendar;->maximums:[I

    aget v2, v7, p1

    .line 1317
    goto :goto_1b

    .line 1322
    :pswitch_36
    const/4 v7, 0x3

    if-ne p1, v7, :cond_7f

    .line 1323
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, v10

    invoke-direct {p0, v7}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v1

    .line 1324
    .local v1, days:I
    const/4 v0, 0x6

    .line 1329
    .local v0, day:I
    :goto_42
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v0

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v8

    sub-int/2addr v8, v10

    sub-int/2addr v7, v8

    int-to-long v7, v7

    invoke-direct {p0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    .line 1331
    .local v4, mod:I
    sub-int v7, v1, v10

    add-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v3, v7, 0x1

    .line 1332
    .local v3, maxWeeks:I
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, p1

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-direct {p0, v7, v3}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 1333
    .local v5, newWeek:I
    if-ne v5, v3, :cond_89

    .line 1334
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, v0

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    sub-int v8, v5, v8

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v7, v8

    if-le v7, v1, :cond_85

    .line 1335
    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1b

    .line 1326
    .end local v0           #day:I
    .end local v1           #days:I
    .end local v3           #maxWeeks:I
    .end local v4           #mod:I
    .end local v5           #newWeek:I
    :cond_7f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v1

    .line 1327
    .restart local v1       #days:I
    const/4 v0, 0x5

    .restart local v0       #day:I
    goto :goto_42

    .line 1337
    .restart local v3       #maxWeeks:I
    .restart local v4       #mod:I
    .restart local v5       #newWeek:I
    :cond_85
    invoke-virtual {p0, p1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1b

    .line 1339
    :cond_89
    if-ne v5, v10, :cond_ab

    .line 1340
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, v0

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v0

    sub-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x7

    mul-int/lit8 v8, v8, 0x7

    sub-int/2addr v7, v8

    sub-int/2addr v7, v10

    add-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v6, v7, 0x1

    .line 1341
    .local v6, week:I
    if-le v6, v10, :cond_a6

    .line 1342
    invoke-virtual {p0, v0, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1b

    .line 1344
    :cond_a6
    invoke-virtual {p0, p1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1b

    .line 1347
    .end local v6           #week:I
    :cond_ab
    invoke-virtual {p0, p1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1b

    .line 1351
    .end local v0           #day:I
    .end local v1           #days:I
    .end local v3           #maxWeeks:I
    .end local v4           #mod:I
    .end local v5           #newWeek:I
    :pswitch_b0
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v2

    .line 1352
    goto/16 :goto_1b

    .line 1354
    :pswitch_b6
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, v10

    invoke-direct {p0, v7}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v2

    .line 1355
    goto/16 :goto_1b

    .line 1357
    :pswitch_c0
    sget-object v7, Ljava/util/GregorianCalendar;->maximums:[I

    aget v2, v7, p1

    .line 1358
    const/4 v7, 0x4

    iput v7, p0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    goto/16 :goto_1b

    .line 1361
    :pswitch_c9
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v8

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x7

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v7, v8

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v2, v7, 0x1

    .line 1362
    goto/16 :goto_1b

    .line 1372
    :pswitch_e2
    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, p1

    add-int/2addr v7, p2

    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v7, v8}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v7

    invoke-virtual {p0, p1, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1373
    const/4 v7, 0x2

    if-ne p1, v7, :cond_10a

    iget-object v7, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v7, v7, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v8

    if-le v7, v8, :cond_10a

    .line 1374
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v7

    invoke-virtual {p0, v11, v7}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1b

    .line 1375
    :cond_10a
    const/16 v7, 0x9

    if-ne p1, v7, :cond_1b

    .line 1376
    const/16 v7, 0xa

    iput v7, p0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    goto/16 :goto_1b

    .line 1314
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_31
        :pswitch_e2
        :pswitch_36
        :pswitch_36
        :pswitch_b0
        :pswitch_b6
        :pswitch_c0
        :pswitch_c9
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
    .end packed-switch
.end method

.method public roll(IZ)V
    .registers 4
    .parameter "field"
    .parameter "increment"

    .prologue
    .line 1404
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1405
    return-void

    .line 1404
    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1450
    invoke-super {p0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1451
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1452
    return-void
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .registers 9
    .parameter "date"

    .prologue
    const/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1415
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 1416
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1417
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1418
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1419
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_26

    .line 1420
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int v2, v5, v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1422
    :cond_26
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Ljava/util/GregorianCalendar;->changeYear:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 1424
    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1425
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 1426
    .local v1, dayOfYear:I
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    if-ge v1, v2, :cond_51

    .line 1427
    sub-int v2, v1, v5

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 1428
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1433
    :goto_4e
    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1434
    return-void

    .line 1430
    :cond_51
    iput v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1431
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    goto :goto_4e
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1456
    invoke-super {p0, p1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1457
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1458
    return-void
.end method
