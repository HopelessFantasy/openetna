.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x598a29f2ea10a5aL


# instance fields
.field private daylightSavings:Ljava/util/GregorianCalendar;

.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private rawOffset:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 875
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "dstSavings"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monthLength"

    const-class v4, [B

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "rawOffset"

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

    const-string v3, "startDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startYear"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useDaylight"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/SimpleTimeZone;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "offset"
    .parameter "name"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 97
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 113
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 114
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 115
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .registers 23
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"

    .prologue
    .line 190
    const v11, 0x36ee80

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 192
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .registers 14
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"
    .parameter "daylightSavings"

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 241
    if-gtz p11, :cond_11

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00e9"

    invoke-static {v1, p11}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_11
    iput p11, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 246
    invoke-virtual {p0, p3, p4, p5, p6}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 247
    invoke-virtual {p0, p7, p8, p9, p10}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 248
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .registers 28
    .parameter "offset"
    .parameter "name"
    .parameter "startMonth"
    .parameter "startDay"
    .parameter "startDayOfWeek"
    .parameter "startTime"
    .parameter "startTimeMode"
    .parameter "endMonth"
    .parameter "endDay"
    .parameter "endDayOfWeek"
    .parameter "endTime"
    .parameter "endTimeMode"
    .parameter "daylightSavings"

    .prologue
    .line 302
    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p13

    invoke-direct/range {v2 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    .line 304
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Ljava/util/SimpleTimeZone;->startMode:I

    .line 305
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Ljava/util/SimpleTimeZone;->endMode:I

    .line 306
    return-void
.end method

.method private checkDay(II)V
    .registers 5
    .parameter "month"
    .parameter "day"

    .prologue
    .line 602
    if-lez p2, :cond_8

    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p1

    if-le p2, v0, :cond_14

    .line 603
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00e6"

    invoke-static {v1, p2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_14
    return-void
.end method

.method private checkRange(III)V
    .registers 6
    .parameter "month"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 590
    if-ltz p1, :cond_6

    const/16 v0, 0xb

    if-le p1, v0, :cond_12

    .line 591
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00e5"

    invoke-static {v1, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_12
    const/4 v0, 0x1

    if-lt p2, v0, :cond_18

    const/4 v0, 0x7

    if-le p2, v0, :cond_24

    .line 594
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00e7"

    invoke-static {v1, p2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_24
    if-ltz p3, :cond_2b

    const v0, 0x5265c00

    if-lt p3, v0, :cond_37

    .line 597
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00e8"

    invoke-static {v1, p3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_37
    return-void
.end method

.method private isLeapYear(I)Z
    .registers 5
    .parameter "year"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 563
    const/16 v0, 0x62e

    if-le p1, v0, :cond_16

    .line 564
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_14

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_12

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_14

    :cond_12
    move v0, v2

    .line 566
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 564
    goto :goto_13

    .line 566
    :cond_16
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_13

    :cond_1c
    move v0, v1

    goto :goto_13
.end method

.method private mod7(I)I
    .registers 4
    .parameter "num1"

    .prologue
    .line 570
    rem-int/lit8 v0, p1, 0x7

    .line 571
    .local v0, rem:I
    if-gez p1, :cond_9

    if-gez v0, :cond_9

    add-int/lit8 v1, v0, 0x7

    :goto_8
    return v1

    :cond_9
    move v1, v0

    goto :goto_8
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 944
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 945
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "rawOffset"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 946
    const-string v3, "useDaylight"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 947
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_43

    .line 948
    const-string v3, "endMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 949
    const-string v3, "endTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 950
    const-string v3, "startMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 951
    const-string v3, "startTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 952
    const-string v3, "startYear"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 954
    :cond_43
    const-string v3, "serialVersionOnStream"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_76

    .line 955
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_75

    .line 956
    iput v6, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v6, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 957
    const-string v3, "endDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 958
    const-string v3, "endDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 959
    const-string v3, "startDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 960
    const-string v3, "startDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 984
    :cond_75
    :goto_75
    return-void

    .line 963
    :cond_76
    const-string v3, "dstSavings"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 964
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_75

    .line 965
    const-string v3, "endMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 966
    const-string v3, "startMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 967
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 968
    .local v1, length:I
    new-array v2, v1, [B

    .line 969
    .local v2, values:[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 970
    const/4 v3, 0x4

    if-lt v1, v3, :cond_75

    .line 971
    aget-byte v3, v2, v4

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 972
    aget-byte v3, v2, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 973
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v3, v5, :cond_af

    .line 974
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 976
    :cond_af
    aget-byte v3, v2, v6

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 977
    const/4 v3, 0x3

    aget-byte v3, v2, v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 978
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v3, v5, :cond_75

    .line 979
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v3, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_75
.end method

.method private setEndMode()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 608
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_38

    .line 609
    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 621
    :goto_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_55

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_55

    move v0, v3

    :goto_11
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 622
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_2e

    .line 623
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v1, v3, :cond_57

    move v1, v3

    :goto_1e
    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0, v0, v1, v2}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 625
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v4, :cond_5a

    .line 626
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-direct {p0, v0, v1}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 633
    :cond_2e
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v3, :cond_37

    .line 634
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 636
    :cond_37
    return-void

    .line 610
    :cond_38
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-gez v0, :cond_52

    .line 611
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 612
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-gez v0, :cond_4e

    .line 613
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 614
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_8

    .line 616
    :cond_4e
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_8

    .line 619
    :cond_52
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_8

    .line 621
    :cond_55
    const/4 v0, 0x0

    goto :goto_11

    .line 623
    :cond_57
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_1e

    .line 628
    :cond_5a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_64

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2e

    .line 629
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00f8"

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStartMode()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 722
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_38

    .line 723
    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 735
    :goto_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_55

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_55

    move v0, v3

    :goto_11
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 736
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_2e

    .line 737
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v1, v3, :cond_57

    move v1, v3

    :goto_1e
    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0, v0, v1, v2}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 739
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v4, :cond_5a

    .line 740
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-direct {p0, v0, v1}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 747
    :cond_2e
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v3, :cond_37

    .line 748
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 750
    :cond_37
    return-void

    .line 724
    :cond_38
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-gez v0, :cond_52

    .line 725
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 726
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-gez v0, :cond_4e

    .line 727
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 728
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_8

    .line 730
    :cond_4e
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_8

    .line 733
    :cond_52
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_8

    .line 735
    :cond_55
    const/4 v0, 0x0

    goto :goto_11

    .line 737
    :cond_57
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_1e

    .line 742
    :cond_5a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_64

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2e

    .line 743
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00f8"

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 15
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 894
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .local v2, sEndDay:I
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v7, 0x1

    .local v3, sEndDayOfWeek:I
    iget v4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .local v4, sStartDay:I
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v5, v7, 0x1

    .line 895
    .local v5, sStartDayOfWeek:I
    iget-boolean v7, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v7, :cond_5a

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v9, :cond_1d

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v9, :cond_5a

    .line 897
    :cond_1d
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 898
    .local v0, cal:Ljava/util/Calendar;
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v9, :cond_3e

    .line 899
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 900
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v8, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 901
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 902
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v7, v10, :cond_3e

    .line 903
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    .line 906
    :cond_3e
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v7, v9, :cond_5a

    .line 907
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 908
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v8, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 909
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 910
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v10, :cond_5a

    .line 911
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v5

    .line 915
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_5a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 916
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v7, "dstSavings"

    iget v8, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 917
    const-string v7, "endDay"

    invoke-virtual {v1, v7, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 918
    const-string v7, "endDayOfWeek"

    invoke-virtual {v1, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 919
    const-string v7, "endMode"

    iget v8, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 920
    const-string v7, "endMonth"

    iget v8, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 921
    const-string v7, "endTime"

    iget v8, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 922
    const-string v7, "monthLength"

    sget-object v8, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 923
    const-string v7, "rawOffset"

    iget v8, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 924
    const-string v7, "serialVersionOnStream"

    invoke-virtual {v1, v7, v10}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 925
    const-string v7, "startDay"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 926
    const-string v7, "startDayOfWeek"

    invoke-virtual {v1, v7, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 927
    const-string v7, "startMode"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 928
    const-string v7, "startMonth"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 929
    const-string v7, "startTime"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 930
    const-string v7, "startYear"

    iget v8, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 931
    const-string v7, "useDaylight"

    iget-boolean v8, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 932
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 933
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 934
    new-array v6, v12, [B

    .line 935
    .local v6, values:[B
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v11

    .line 936
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v10, :cond_eb

    move v7, v11

    :goto_d6
    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 937
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    .line 938
    const/4 v7, 0x3

    iget v8, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v8, v10, :cond_f0

    move v8, v11

    :goto_e4
    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 939
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 940
    return-void

    .line 936
    :cond_eb
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    .line 938
    :cond_f0
    iget v8, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_e4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 318
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SimpleTimeZone;

    .line 319
    .local v0, zone:Ljava/util/SimpleTimeZone;
    iget-object v1, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_14

    .line 320
    iget-object v1, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/GregorianCalendar;

    iput-object p0, v0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    .line 322
    :cond_14
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 339
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_7

    move v2, v4

    .line 343
    :goto_6
    return v2

    .line 342
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    move-object v1, v0

    .line 343
    .local v1, tz:Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_73

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v1, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_71

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_73

    :cond_71
    const/4 v2, 0x1

    goto :goto_6

    :cond_73
    move v2, v4

    goto :goto_6
.end method

.method public getDSTSavings()I
    .registers 2

    .prologue
    .line 358
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v0, :cond_6

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_5
.end method

.method public getOffset(IIIIII)I
    .registers 22
    .parameter "era"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 367
    if-eqz p1, :cond_17

    const/4 v11, 0x1

    move/from16 v0, p1

    move v1, v11

    if-eq v0, v1, :cond_17

    .line 368
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "K00ea"

    move-object v0, v12

    move/from16 v1, p1

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 370
    :cond_17
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    .line 371
    const/4 v11, 0x1

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_37

    const/16 v11, 0x1d

    move/from16 v0, p4

    move v1, v11

    if-ne v0, v1, :cond_37

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-nez v11, :cond_3f

    .line 372
    :cond_37
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    .line 375
    :cond_3f
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v11

    if-eqz v11, :cond_52

    const/4 v11, 0x1

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_52

    iget v11, p0, Ljava/util/SimpleTimeZone;->startYear:I

    move/from16 v0, p2

    move v1, v11

    if-ge v0, v1, :cond_55

    .line 377
    :cond_52
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 490
    :goto_54
    return v11

    .line 379
    :cond_55
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge v11, v12, :cond_6c

    .line 380
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    move/from16 v0, p3

    move v1, v11

    if-le v0, v1, :cond_7d

    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    move/from16 v0, p3

    move v1, v11

    if-ge v0, v1, :cond_7d

    .line 381
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_54

    .line 384
    :cond_6c
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    move/from16 v0, p3

    move v1, v11

    if-lt v0, v1, :cond_7a

    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    move/from16 v0, p3

    move v1, v11

    if-le v0, v1, :cond_7d

    .line 385
    :cond_7a
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_54

    .line 389
    :cond_7d
    const/4 v8, 0x0

    .local v8, ruleDay:I
    sub-int v11, p5, p4

    invoke-direct {p0, v11}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v6

    .line 390
    .local v6, firstDayOfMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_10e

    .line 391
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMode:I

    packed-switch v11, :pswitch_data_1ee

    .line 425
    :cond_90
    :goto_90
    move v0, v8

    move/from16 v1, p4

    if-gt v0, v1, :cond_a1

    move v0, v8

    move/from16 v1, p4

    if-ne v0, v1, :cond_10e

    iget v11, p0, Ljava/util/SimpleTimeZone;->startTime:I

    move/from16 v0, p6

    move v1, v11

    if-ge v0, v1, :cond_10e

    .line 426
    :cond_a1
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_54

    .line 393
    :pswitch_a4
    iget v8, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 394
    goto :goto_90

    .line 396
    :pswitch_a7
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ltz v11, :cond_bd

    .line 397
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v11, v6

    invoke-direct {p0, v11}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    goto :goto_90

    .line 400
    :cond_bd
    sget-object v11, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v12, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v5, v11, v12

    .line 401
    .local v5, daysInMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d3

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-eqz v11, :cond_d3

    .line 402
    add-int/lit8 v5, v5, 0x1

    .line 404
    :cond_d3
    add-int/lit8 v11, v5, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDay:I

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    .line 410
    goto :goto_90

    .line 412
    .end local v5           #daysInMonth:I
    :pswitch_e6
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 415
    goto :goto_90

    .line 417
    :pswitch_f7
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 420
    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v8, v11, :cond_90

    .line 421
    add-int/lit8 v8, v8, -0x7

    goto :goto_90

    .line 430
    :cond_10e
    iget v11, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int v10, v11, v12

    .line 431
    .local v10, ruleTime:I
    add-int/lit8 v11, p3, 0x1

    rem-int/lit8 v7, v11, 0xc

    .line 432
    .local v7, nextMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    move/from16 v0, p3

    move v1, v11

    if-eq v0, v1, :cond_125

    if-gez v10, :cond_1e7

    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v7, v11, :cond_1e7

    .line 433
    :cond_125
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v11, :pswitch_data_1fa

    .line 466
    :cond_12a
    :goto_12a
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 467
    .local v9, ruleMonth:I
    if-gez v10, :cond_15c

    .line 468
    const/4 v11, 0x1

    const v12, 0x5265c00

    div-int v12, v10, v12

    sub-int v4, v11, v12

    .line 469
    .local v4, changeDays:I
    const v11, 0x5265c00

    rem-int v11, v10, v11

    const v12, 0x5265c00

    add-int v10, v11, v12

    .line 470
    sub-int/2addr v8, v4

    .line 471
    if-gtz v8, :cond_15c

    .line 472
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_149

    .line 473
    const/16 v9, 0xb

    .line 475
    :cond_149
    sget-object v11, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v11, v11, v9

    add-int/2addr v8, v11

    .line 476
    const/4 v11, 0x1

    if-ne v9, v11, :cond_15c

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-eqz v11, :cond_15c

    .line 477
    add-int/lit8 v8, v8, 0x1

    .line 482
    .end local v4           #changeDays:I
    :cond_15c
    move/from16 v0, p3

    move v1, v9

    if-ne v0, v1, :cond_1e1

    .line 483
    move v0, v8

    move/from16 v1, p4

    if-lt v0, v1, :cond_170

    move v0, v8

    move/from16 v1, p4

    if-ne v0, v1, :cond_1e7

    move/from16 v0, p6

    move v1, v10

    if-lt v0, v1, :cond_1e7

    .line 484
    :cond_170
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_54

    .line 435
    .end local v9           #ruleMonth:I
    :pswitch_174
    iget v8, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 436
    goto :goto_12a

    .line 438
    :pswitch_177
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ltz v11, :cond_18d

    .line 439
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v11, v6

    invoke-direct {p0, v11}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    goto :goto_12a

    .line 442
    :cond_18d
    sget-object v11, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v12, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v5, v11, v12

    .line 443
    .restart local v5       #daysInMonth:I
    iget v11, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a3

    move-object v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v11

    if-eqz v11, :cond_1a3

    .line 444
    add-int/lit8 v5, v5, 0x1

    .line 446
    :cond_1a3
    add-int/lit8 v11, v5, 0x1

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDay:I

    mul-int/lit8 v12, v12, 0x7

    add-int v8, v11, v12

    .line 452
    goto/16 :goto_12a

    .line 454
    .end local v5           #daysInMonth:I
    :pswitch_1b7
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 456
    goto/16 :goto_12a

    .line 458
    :pswitch_1c9
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v13, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v12

    add-int v8, v11, v12

    .line 460
    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v8, v11, :cond_12a

    .line 461
    add-int/lit8 v8, v8, -0x7

    goto/16 :goto_12a

    .line 486
    .restart local v9       #ruleMonth:I
    :cond_1e1
    if-eq v7, v9, :cond_1e7

    .line 487
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_54

    .line 490
    .end local v9           #ruleMonth:I
    :cond_1e7
    iget v11, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v12, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v11, v12

    goto/16 :goto_54

    .line 391
    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_a7
        :pswitch_e6
        :pswitch_f7
    .end packed-switch

    .line 433
    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_174
        :pswitch_177
        :pswitch_1b7
        :pswitch_1c9
    .end packed-switch
.end method

.method public getOffset(J)I
    .registers 6
    .parameter "time"

    .prologue
    .line 495
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_9

    .line 496
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 501
    :goto_8
    return v0

    .line 498
    :cond_9
    iget-object v0, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    if-nez v0, :cond_14

    .line 499
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    .line 501
    :cond_14
    iget-object v0, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v0

    goto :goto_8
.end method

.method public getRawOffset()I
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .registers 8
    .parameter "zone"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_8

    move v2, v4

    .line 540
    :goto_7
    return v2

    .line 533
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    move-object v1, v0

    .line 534
    .local v1, tz:Ljava/util/SimpleTimeZone;
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v1, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eq v2, v3, :cond_14

    move v2, v4

    .line 535
    goto :goto_7

    .line 537
    :cond_14
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v2, :cond_22

    .line 538
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_20

    move v2, v5

    goto :goto_7

    :cond_20
    move v2, v4

    goto :goto_7

    .line 540
    :cond_22
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_72

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_72

    move v2, v5

    goto :goto_7

    :cond_72
    move v2, v4

    goto :goto_7
.end method

.method public declared-synchronized hashCode()I
    .registers 4

    .prologue
    .line 519
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int v0, v1, v2

    .line 520
    .local v0, hashCode:I
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_35

    .line 521
    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_37

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 525
    :cond_35
    monitor-exit p0

    return v0

    .line 519
    .end local v0           #hashCode:I
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 8
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    .line 552
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 553
    .local v0, millis:J
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v5

    .line 559
    :goto_c
    return v2

    .line 556
    :cond_d
    iget-object v2, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    if-nez v2, :cond_18

    .line 557
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v2, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    .line 559
    :cond_18
    iget-object v2, p0, Ljava/util/SimpleTimeZone;->daylightSavings:Ljava/util/GregorianCalendar;

    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v2

    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-eq v2, v3, :cond_28

    const/4 v2, 0x1

    goto :goto_c

    :cond_28
    move v2, v5

    goto :goto_c
.end method

.method public setDSTSavings(I)V
    .registers 3
    .parameter "milliseconds"

    .prologue
    .line 582
    if-lez p1, :cond_5

    .line 583
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 587
    return-void

    .line 585
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setEndRule(III)V
    .registers 5
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "time"

    .prologue
    .line 652
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 653
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 655
    iput p3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 656
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 657
    return-void
.end method

.method public setEndRule(IIII)V
    .registers 5
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 676
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 677
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 678
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 679
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 680
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 681
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .registers 7
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"
    .parameter "after"

    .prologue
    .line 702
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 703
    if-eqz p5, :cond_10

    move v0, p2

    :goto_5
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 704
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 705
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 706
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    .line 707
    return-void

    .line 703
    :cond_10
    neg-int v0, p2

    goto :goto_5
.end method

.method public setRawOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 718
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 719
    return-void
.end method

.method public setStartRule(III)V
    .registers 5
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "time"

    .prologue
    .line 766
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 767
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 768
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 769
    iput p3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 770
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 771
    return-void
.end method

.method public setStartRule(IIII)V
    .registers 5
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"

    .prologue
    .line 790
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 791
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 792
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 793
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 794
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 795
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .registers 7
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "time"
    .parameter "after"

    .prologue
    .line 816
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 817
    if-eqz p5, :cond_10

    move v0, p2

    :goto_5
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 818
    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 819
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 820
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    .line 821
    return-void

    .line 817
    :cond_10
    neg-int v0, p2

    goto :goto_5
.end method

.method public setStartYear(I)V
    .registers 3
    .parameter "year"

    .prologue
    .line 832
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 834
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",useDaylight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_e8

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v1, v3, :cond_e8

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v1, v1, 0x1

    :goto_87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_ea

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v1, v3, :cond_ea

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v1, v1, 0x1

    :goto_cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e8
    move v1, v2

    goto :goto_87

    :cond_ea
    move v1, v2

    goto :goto_cd
.end method

.method public useDaylightTime()Z
    .registers 2

    .prologue
    .line 872
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
