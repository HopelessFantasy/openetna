.class public Lcom/lge/util/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# static fields
.field private static final RFC822DATETIME_MASKS:[Ljava/lang/String;

.field private static final W3CDATETIME_MASKS:[Ljava/lang/String;

.field private static final W3CTIME_MASKS:[Ljava/lang/String;

.field private static dateFormatPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final rfc822DateFormater:Ljava/text/SimpleDateFormat;

.field private static final w3cDateFormater:Ljava/text/SimpleDateFormat;

.field private static final w3cTimeFormater:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v1, v0, v3

    const-string v1, "EEE, dd MMM yy HH:mm z"

    aput-object v1, v0, v4

    const-string v1, "dd MMM yy HH:mm:ss z"

    aput-object v1, v0, v5

    const-string v1, "dd MMM yy HH:mm z"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/util/DateParser;->RFC822DATETIME_MASKS:[Ljava/lang/String;

    .line 31
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v1, v0, v3

    const-string v1, "yyyy-MM-dd\'t\'HH:mm:ssz"

    aput-object v1, v0, v4

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v1, v0, v5

    const-string v1, "yyyy-MM-dd\'t\'HH:mm:ssZ"

    aput-object v1, v0, v6

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ss\'z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "yyyy-MM-dd\'T\'HH:mmz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "yyyy-MM\'T\'HH:mmz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "yyyy-MM-dd\'t\'HH:mmz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "yyyy-MM-dd\'t\'HH:mm\'z\'"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/util/DateParser;->W3CDATETIME_MASKS:[Ljava/lang/String;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HH:mm:ss.SSSz"

    aput-object v1, v0, v3

    const-string v1, "HH:mm:ss.SSS\'Z\'"

    aput-object v1, v0, v4

    const-string v1, "HH:mm:ssz"

    aput-object v1, v0, v5

    const-string v1, "HH:mm:ssZ"

    aput-object v1, v0, v6

    const-string v1, "HH:mm:ss\'Z\'"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "HH:mm:ss\'z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HH:mmz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HH:mm\'Z\'"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HH:mm\'z\'"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/util/DateParser;->W3CTIME_MASKS:[Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/lge/util/DateParser;->w3cDateFormater:Ljava/text/SimpleDateFormat;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/lge/util/DateParser;->rfc822DateFormater:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss.SSS+00:00"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/lge/util/DateParser;->w3cTimeFormater:Ljava/text/SimpleDateFormat;

    .line 49
    sget-object v0, Lcom/lge/util/DateParser;->rfc822DateFormater:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    sget-object v0, Lcom/lge/util/DateParser;->rfc822DateFormater:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 51
    sget-object v0, Lcom/lge/util/DateParser;->w3cTimeFormater:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/util/DateParser;->dateFormatPool:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static formatRFC822(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .parameter "date"

    .prologue
    .line 234
    sget-object v0, Lcom/lge/util/DateParser;->rfc822DateFormater:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatW3CDateTime(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .parameter "date"

    .prologue
    .line 251
    sget-object v0, Lcom/lge/util/DateParser;->w3cDateFormater:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatW3CTime(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .parameter "date"

    .prologue
    .line 278
    sget-object v0, Lcom/lge/util/DateParser;->w3cTimeFormater:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 3
    .parameter "mask"

    .prologue
    .line 59
    sget-object v1, Lcom/lge/util/DateParser;->dateFormatPool:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 60
    .local v0, df:Ljava/text/DateFormat;
    if-nez v0, :cond_1a

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0           #df:Ljava/text/DateFormat;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 62
    .restart local v0       #df:Ljava/text/DateFormat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 63
    sget-object v1, Lcom/lge/util/DateParser;->dateFormatPool:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1a
    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .parameter "sDate"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, d:Ljava/util/Date;
    if-eqz p0, :cond_1d

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {p0}, Lcom/lge/util/DateParser;->parseW3CDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 206
    if-nez v0, :cond_1d

    .line 207
    invoke-static {p0}, Lcom/lge/util/DateParser;->parseRFC822(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 208
    if-nez v0, :cond_1d

    .line 210
    :try_start_13
    new-instance v1, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1c} :catch_1e

    .end local v0           #d:Ljava/util/Date;
    .local v1, d:Ljava/util/Date;
    move-object v0, v1

    .line 217
    .end local v1           #d:Ljava/util/Date;
    .restart local v0       #d:Ljava/util/Date;
    :cond_1d
    :goto_1d
    return-object v0

    .line 211
    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public static parseRFC822(Ljava/lang/String;)Ljava/util/Date;
    .registers 6
    .parameter "sDate"

    .prologue
    .line 129
    const-string v3, " UT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, utIndex:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_2b

    .line 131
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, pre:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, post:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    .end local v0           #post:Ljava/lang/String;
    .end local v1           #pre:Ljava/lang/String;
    :cond_2b
    sget-object v3, Lcom/lge/util/DateParser;->RFC822DATETIME_MASKS:[Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/lge/util/DateParser;->parseUsingMask([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method

.method private static parseUsingMask([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .parameter "masks"
    .parameter "sDate"

    .prologue
    .line 83
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object p1, v5

    .line 84
    :goto_7
    const/4 v3, 0x0

    .line 85
    .local v3, pp:Ljava/text/ParsePosition;
    const/4 v0, 0x0

    .line 86
    .local v0, d:Ljava/util/Date;
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #pp:Ljava/text/ParsePosition;
    .local v4, pp:Ljava/text/ParsePosition;
    :goto_b
    if-nez v0, :cond_38

    array-length v5, p0

    if-ge v2, v5, :cond_38

    .line 87
    aget-object v5, p0, v2

    invoke-static {v5}, Lcom/lge/util/DateParser;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    .line 88
    .local v1, df:Ljava/text/DateFormat;
    monitor-enter v1

    .line 90
    :try_start_17
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/text/ParsePosition;-><init>(I)V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_3b

    .line 91
    .end local v4           #pp:Ljava/text/ParsePosition;
    .restart local v3       #pp:Ljava/text/ParsePosition;
    :try_start_1d
    invoke-virtual {v1, p1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 92
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_3e

    move-result v6

    if-eq v5, v6, :cond_2c

    .line 93
    const/4 v0, 0x0

    .line 97
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v1

    .line 86
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #pp:Ljava/text/ParsePosition;
    .restart local v4       #pp:Ljava/text/ParsePosition;
    goto :goto_b

    .line 83
    .end local v0           #d:Ljava/util/Date;
    .end local v1           #df:Ljava/text/DateFormat;
    .end local v2           #i:I
    .end local v4           #pp:Ljava/text/ParsePosition;
    :cond_31
    const/4 v5, 0x0

    move-object p1, v5

    goto :goto_7

    .line 97
    .restart local v0       #d:Ljava/util/Date;
    .restart local v1       #df:Ljava/text/DateFormat;
    .restart local v2       #i:I
    .restart local v4       #pp:Ljava/text/ParsePosition;
    :catchall_34
    move-exception v5

    move-object v3, v4

    .end local v4           #pp:Ljava/text/ParsePosition;
    .restart local v3       #pp:Ljava/text/ParsePosition;
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_39

    throw v5

    .line 99
    .end local v1           #df:Ljava/text/DateFormat;
    .end local v3           #pp:Ljava/text/ParsePosition;
    .restart local v4       #pp:Ljava/text/ParsePosition;
    :cond_38
    return-object v0

    .line 97
    .end local v4           #pp:Ljava/text/ParsePosition;
    .restart local v1       #df:Ljava/text/DateFormat;
    .restart local v3       #pp:Ljava/text/ParsePosition;
    :catchall_39
    move-exception v5

    goto :goto_36

    .line 95
    .end local v3           #pp:Ljava/text/ParsePosition;
    .restart local v4       #pp:Ljava/text/ParsePosition;
    :catch_3b
    move-exception v5

    move-object v3, v4

    .end local v4           #pp:Ljava/text/ParsePosition;
    .restart local v3       #pp:Ljava/text/ParsePosition;
    goto :goto_2c

    :catch_3e
    move-exception v5

    goto :goto_2c
.end method

.method public static parseW3CDateTime(Ljava/lang/String;)Ljava/util/Date;
    .registers 11
    .parameter "sDate"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 165
    const-string v5, "T"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 166
    .local v3, tIndex:I
    if-le v3, v8, :cond_71

    .line 167
    const-string v5, "Z"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+00:00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 170
    :cond_2f
    const-string v5, "+"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 171
    .local v4, tzdIndex:I
    if-ne v4, v8, :cond_3d

    .line 172
    const-string v5, "-"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 174
    :cond_3d
    if-le v4, v8, :cond_6a

    .line 175
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, pre:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, secFraction:I
    if-le v2, v8, :cond_4f

    .line 178
    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_4f
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, post:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 186
    .end local v0           #post:Ljava/lang/String;
    .end local v1           #pre:Ljava/lang/String;
    .end local v2           #secFraction:I
    .end local v4           #tzdIndex:I
    :cond_6a
    :goto_6a
    sget-object v5, Lcom/lge/util/DateParser;->W3CDATETIME_MASKS:[Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/lge/util/DateParser;->parseUsingMask([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    return-object v5

    .line 184
    :cond_71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "T00:00GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6a
.end method

.method public static parseW3CTime(Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .parameter "sDate"

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const-string v6, "GMT"

    .line 255
    const-string v4, "Z"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+00:00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 274
    :goto_29
    sget-object v4, Lcom/lge/util/DateParser;->W3CTIME_MASKS:[Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/lge/util/DateParser;->parseUsingMask([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    return-object v4

    .line 258
    :cond_30
    const-string v4, "+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 259
    .local v3, tzdIndex:I
    if-ne v3, v5, :cond_3e

    .line 260
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 262
    :cond_3e
    if-le v3, v5, :cond_6c

    .line 263
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, pre:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 265
    .local v2, secFraction:I
    if-le v2, v5, :cond_50

    .line 266
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 268
    :cond_50
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, post:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GMT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    goto :goto_29

    .line 271
    .end local v0           #post:Ljava/lang/String;
    .end local v1           #pre:Ljava/lang/String;
    .end local v2           #secFraction:I
    :cond_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "GMT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29
.end method
