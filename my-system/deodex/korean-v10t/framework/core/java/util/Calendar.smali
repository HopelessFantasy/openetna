.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final DATE:I = 0x5

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field public static final ERA:I = 0x0

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MINUTE:I = 0xc

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0xf

.field private static fieldNames:[Ljava/lang/String; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field transient lastDateFieldSet:I

.field transient lastTimeFieldSet:I

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 778
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ERA="

    aput-object v1, v0, v4

    const-string v1, "YEAR="

    aput-object v1, v0, v5

    const-string v1, "MONTH="

    aput-object v1, v0, v6

    const-string v1, "WEEK_OF_YEAR="

    aput-object v1, v0, v7

    const-string v1, "WEEK_OF_MONTH="

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "DAY_OF_MONTH="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DAY_OF_YEAR="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DAY_OF_WEEK="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DAY_OF_WEEK_IN_MONTH="

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AM_PM="

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HOUR="

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HOUR_OF_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MINUTE="

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SECOND="

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MILLISECOND="

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ZONE_OFFSET="

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DST_OFFSET="

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->fieldNames:[Ljava/lang/String;

    .line 1527
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "areFieldsSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "fields"

    const-class v3, [I

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "firstDayOfWeek"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isSet"

    const-class v3, [Z

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isTimeSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lenient"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimalDaysInFirstWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "nextStamp"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "time"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "zone"

    const-class v4, Ljava/util/TimeZone;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 790
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 791
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .registers 4
    .parameter "timezone"

    .prologue
    const/16 v1, 0x11

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    .line 795
    new-array v0, v1, [Z

    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 797
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 798
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 799
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .parameter "timezone"
    .parameter "locale"

    .prologue
    .line 812
    invoke-direct {p0, p1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 813
    const-string v1, "Locale"

    invoke-static {v1, p2}, Ljava/util/Locale;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 814
    .local v0, bundle:Ljava/util/ResourceBundle;
    const-string v1, "First_Day"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 815
    const-string v1, "Minimal_Days"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 817
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .prologue
    .line 1057
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 1091
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .parameter "locale"

    .prologue
    .line 1104
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 3
    .parameter "timezone"

    .prologue
    .line 1118
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 4
    .parameter "timezone"
    .parameter "locale"

    .prologue
    .line 1135
    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
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
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1559
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1560
    .local v0, readFields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "areFieldsSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1561
    const-string v1, "fields"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Ljava/util/Calendar;->fields:[I

    .line 1562
    const-string v1, "firstDayOfWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 1563
    const-string v1, "isSet"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    check-cast v1, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    .line 1564
    const-string v1, "isTimeSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1565
    const-string v1, "lenient"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    .line 1566
    const-string v1, "minimalDaysInFirstWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 1567
    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1568
    const-string v1, "zone"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1569
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1542
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1543
    .local v0, putFields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "areFieldsSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1544
    const-string v1, "fields"

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1545
    const-string v1, "firstDayOfWeek"

    iget v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1546
    const-string v1, "isSet"

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1547
    const-string v1, "isTimeSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1548
    const-string v1, "lenient"

    iget-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1549
    const-string v1, "minimalDaysInFirstWeek"

    iget v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1550
    const-string v1, "nextStamp"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1551
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1552
    const-string v1, "time"

    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 1553
    const-string v1, "zone"

    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1554
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1555
    return-void
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .registers 7
    .parameter "calendar"

    .prologue
    const/4 v4, 0x0

    .line 841
    instance-of v0, p1, Ljava/util/Calendar;

    if-nez v0, :cond_7

    move v0, v4

    .line 844
    .end local p1
    :goto_6
    return v0

    .restart local p1
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    check-cast p1, Ljava/util/Calendar;

    .end local p1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_6

    :cond_17
    move v0, v4

    goto :goto_6
.end method

.method public before(Ljava/lang/Object;)Z
    .registers 7
    .parameter "calendar"

    .prologue
    const/4 v4, 0x0

    .line 858
    instance-of v0, p1, Ljava/util/Calendar;

    if-nez v0, :cond_7

    move v0, v4

    .line 861
    .end local p1
    :goto_6
    return v0

    .restart local p1
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    check-cast p1, Ljava/util/Calendar;

    .end local p1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_6

    :cond_17
    move v0, v4

    goto :goto_6
.end method

.method public final clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 871
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v1, 0x11

    if-ge v0, v1, :cond_11

    .line 872
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v1, v0

    .line 873
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 875
    :cond_11
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 876
    return-void
.end method

.method public final clear(I)V
    .registers 4
    .parameter "field"

    .prologue
    const/4 v1, 0x0

    .line 886
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v0, p1

    .line 887
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    .line 888
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 889
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 902
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 903
    .local v0, clone:Ljava/util/Calendar;
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Ljava/util/Calendar;->fields:[I

    .line 904
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v2}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    .line 905
    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/TimeZone;

    iput-object p0, v0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_24
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_24} :catch_26

    move-object v2, v0

    .line 908
    .end local v0           #clone:Ljava/util/Calendar;
    :goto_25
    return-object v2

    .line 907
    :catch_26
    move-exception v2

    move-object v1, v2

    .line 908
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 313
    check-cast p1, Ljava/util/Calendar;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .registers 7
    .parameter "anotherCalendar"

    .prologue
    .line 1513
    if-nez p1, :cond_8

    .line 1514
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1516
    :cond_8
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1517
    .local v2, timeInMillis:J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1518
    .local v0, anotherTimeInMillis:J
    cmp-long v4, v2, v0

    if-lez v4, :cond_16

    .line 1519
    const/4 v4, 0x1

    .line 1524
    :goto_15
    return v4

    .line 1521
    :cond_16
    cmp-long v4, v2, v0

    if-nez v4, :cond_1c

    .line 1522
    const/4 v4, 0x0

    goto :goto_15

    .line 1524
    :cond_1c
    const/4 v4, -0x1

    goto :goto_15
.end method

.method protected complete()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 922
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_a

    .line 923
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 924
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 926
    :cond_a
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_13

    .line 927
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 928
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 930
    :cond_13
    return-void
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 962
    if-ne p0, p1, :cond_6

    move v2, v7

    .line 969
    :goto_5
    return v2

    .line 965
    :cond_6
    instance-of v2, p1, Ljava/util/Calendar;

    if-nez v2, :cond_c

    move v2, v6

    .line 966
    goto :goto_5

    .line 968
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    move-object v1, v0

    .line 969
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4a

    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    if-ne v2, v3, :cond_4a

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    if-ne v2, v3, :cond_4a

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_4a

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move v2, v7

    goto :goto_5

    :cond_4a
    move v2, v6

    goto :goto_5
.end method

.method public get(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 994
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 995
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .registers 7
    .parameter "field"

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    .local v0, next:I
    if-ne v4, v0, :cond_c

    move v4, v0

    .line 1021
    :goto_b
    return v4

    .line 1011
    :cond_c
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1012
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1013
    .local v1, orgTime:J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1015
    :cond_14
    move v3, v0

    .line 1016
    .local v3, value:I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->roll(IZ)V

    .line 1017
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1018
    if-gt v0, v3, :cond_14

    .line 1019
    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1020
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    move v4, v3

    .line 1021
    goto :goto_b
.end method

.method public getActualMinimum(I)I
    .registers 8
    .parameter "field"

    .prologue
    const/4 v5, 0x0

    .line 1034
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    .local v0, next:I
    if-ne v4, v0, :cond_d

    move v4, v0

    .line 1047
    :goto_c
    return v4

    .line 1037
    :cond_d
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1038
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1039
    .local v1, orgTime:J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1041
    :cond_15
    move v3, v0

    .line 1042
    .local v3, value:I
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->roll(IZ)V

    .line 1043
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1044
    if-lt v0, v3, :cond_15

    .line 1045
    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1046
    iput-boolean v5, p0, Ljava/util/Calendar;->areFieldsSet:Z

    move v4, v3

    .line 1047
    goto :goto_c
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 1067
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract getGreatestMinimum(I)I
.end method

.method public abstract getLeastMaximum(I)I
.end method

.method public abstract getMaximum(I)I
.end method

.method public getMinimalDaysInFirstWeek()I
    .registers 2

    .prologue
    .line 1168
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method public final getTime()Ljava/util/Date;
    .registers 4

    .prologue
    .line 1193
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .registers 3

    .prologue
    .line 1207
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_a

    .line 1208
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1211
    :cond_a
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 1221
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1235
    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x4d5

    :goto_8
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1c
    const/16 v0, 0x4cf

    goto :goto_8
.end method

.method protected final internalGet(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1248
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 1259
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method public final isSet(I)Z
    .registers 3
    .parameter "field"

    .prologue
    .line 1271
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public roll(II)V
    .registers 7
    .parameter "field"
    .parameter "value"

    .prologue
    .line 1287
    if-ltz p2, :cond_10

    const/4 v3, 0x1

    move v2, v3

    .line 1288
    .local v2, increment:Z
    :goto_4
    if-eqz v2, :cond_13

    move v0, p2

    .line 1289
    .local v0, count:I
    :goto_7
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_16

    .line 1290
    invoke-virtual {p0, p1, v2}, Ljava/util/Calendar;->roll(IZ)V

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1287
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #increment:Z
    :cond_10
    const/4 v3, 0x0

    move v2, v3

    goto :goto_4

    .line 1288
    .restart local v2       #increment:Z
    :cond_13
    neg-int v3, p2

    move v0, v3

    goto :goto_7

    .line 1292
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_16
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method public set(II)V
    .registers 7
    .parameter "field"
    .parameter "value"

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 1318
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 1319
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1320
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1321
    const/4 v0, 0x2

    if-le p1, v0, :cond_19

    if-ge p1, v2, :cond_19

    .line 1322
    iput p1, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    .line 1324
    :cond_19
    if-eq p1, v3, :cond_1f

    const/16 v0, 0xb

    if-ne p1, v0, :cond_21

    .line 1325
    :cond_1f
    iput p1, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    .line 1327
    :cond_21
    if-ne p1, v2, :cond_25

    .line 1328
    iput v3, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    .line 1330
    :cond_25
    return-void
.end method

.method public final set(III)V
    .registers 5
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1345
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1346
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1347
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1348
    return-void
.end method

.method public final set(IIIII)V
    .registers 7
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 1368
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1369
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 1370
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 1371
    return-void
.end method

.method public final set(IIIIII)V
    .registers 8
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 1393
    invoke-virtual/range {p0 .. p5}, Ljava/util/Calendar;->set(IIIII)V

    .line 1394
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    .line 1395
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1405
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 1406
    return-void
.end method

.method public setLenient(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1417
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    .line 1418
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1428
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 1429
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 1439
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1440
    return-void
.end method

.method public setTimeInMillis(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 1450
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    .line 1451
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1452
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1453
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1454
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2
    .parameter "timezone"

    .prologue
    .line 1464
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1465
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1475
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v3, :cond_90

    iget-wide v3, p0, Ljava/util/Calendar;->time:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",areFieldsSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",lenient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",firstDayOfWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",minimalDaysInFirstWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6b
    const/16 v2, 0x11

    if-ge v0, v2, :cond_99

    .line 1483
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1484
    sget-object v2, Ljava/util/Calendar;->fieldNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1485
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1486
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_93

    .line 1487
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1482
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 1475
    .end local v0           #i:I
    .end local v1           #result:Ljava/lang/StringBuffer;
    :cond_90
    const-string v3, "?"

    goto :goto_23

    .line 1489
    .restart local v0       #i:I
    .restart local v1       #result:Ljava/lang/StringBuffer;
    :cond_93
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8d

    .line 1492
    :cond_99
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1493
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
