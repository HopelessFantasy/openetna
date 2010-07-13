.class public Lcom/lge/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static ESCAPE_CHAR:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&lt;"

    aput-object v2, v1, v4

    const-string v2, "<"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&gt;"

    aput-object v2, v1, v4

    const-string v2, ">"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "&apos;"

    aput-object v2, v1, v4

    const-string v2, "\'"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "&quot;"

    aput-object v3, v2, v4

    const-string v3, "\""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "&amp;"

    aput-object v3, v2, v4

    const-string v3, "&"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/util/Util;->ESCAPE_CHAR:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 33
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-static {p0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 60
    sget-object v2, Lcom/lge/util/Util;->ESCAPE_CHAR:[[Ljava/lang/String;

    array-length v1, v2

    .local v1, i:I
    :goto_a
    if-lez v1, :cond_1e

    .line 61
    sget-object v2, Lcom/lge/util/Util;->ESCAPE_CHAR:[[Ljava/lang/String;

    sub-int v3, v1, v4

    aget-object v0, v2, v3

    .line 62
    .local v0, e:[Ljava/lang/String;
    aget-object v2, v0, v4

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 65
    .end local v0           #e:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_1e
    return-object p0
.end method

.method public static getLastSegment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"
    .parameter "sep"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    move-object v1, p0

    goto :goto_10
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "from"
    .parameter "to"
    .parameter "displayTime"

    .prologue
    .line 154
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 155
    .local v4, dateFormatter:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 157
    .local p0, timeFormatter:Ljava/text/DateFormat;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 158
    .local v0, timeFrom:J
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 160
    .local v2, timeTo:J
    cmp-long p2, v0, v2

    if-lez p2, :cond_19

    .line 161
    .end local p2
    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 189
    .end local v4           #dateFormatter:Ljava/text/DateFormat;
    .end local p0           #timeFormatter:Ljava/text/DateFormat;
    .end local p3
    :goto_18
    return-object p0

    .line 165
    .restart local v4       #dateFormatter:Ljava/text/DateFormat;
    .restart local p0       #timeFormatter:Ljava/text/DateFormat;
    .restart local p3
    :cond_19
    sub-long v5, v2, v0

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 166
    .local v5, diff:J
    const-wide/16 v7, 0x3c

    cmp-long p2, v5, v7

    if-gez p2, :cond_2f

    .line 167
    const-wide/16 v4, 0x3e8

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    .end local v4           #dateFormatter:Ljava/text/DateFormat;
    move-result-object p0

    .line 169
    .local p0, elapsedTimeText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    .line 173
    .restart local v4       #dateFormatter:Ljava/text/DateFormat;
    .local p0, timeFormatter:Ljava/text/DateFormat;
    :cond_2f
    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    .line 174
    const-wide/16 v7, 0x3c

    cmp-long p2, v5, v7

    if-gez p2, :cond_44

    .line 175
    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    .end local v4           #dateFormatter:Ljava/text/DateFormat;
    move-result-object p0

    .line 177
    .local p0, elapsedTimeText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    .line 182
    .restart local v4       #dateFormatter:Ljava/text/DateFormat;
    .local p0, timeFormatter:Ljava/text/DateFormat;
    :cond_44
    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    .line 183
    const-wide/16 v7, 0x18

    cmp-long p2, v5, v7

    if-gez p2, :cond_59

    .line 184
    const-wide/32 v4, 0x36ee80

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    .end local v4           #dateFormatter:Ljava/text/DateFormat;
    move-result-object p0

    .line 186
    .local p0, elapsedTimeText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    .line 189
    .restart local v4       #dateFormatter:Ljava/text/DateFormat;
    .local p0, timeFormatter:Ljava/text/DateFormat;
    :cond_59
    if-eqz p3, :cond_7b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    .end local p3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #timeFormatter:Ljava/text/DateFormat;
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    .restart local p0       #timeFormatter:Ljava/text/DateFormat;
    .restart local p3
    :cond_7b
    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "str"

    .prologue
    .line 42
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static loadProperties(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5
    .parameter "prop"
    .parameter "resName"

    .prologue
    .line 198
    const-class v2, Lcom/lge/util/Util;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 199
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_16

    .line 202
    :try_start_8
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 203
    .local v1, pp:Ljava/util/Properties;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 204
    invoke-virtual {p0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 206
    :try_start_13
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 213
    .end local v1           #pp:Ljava/util/Properties;
    :cond_16
    :goto_16
    return-void

    .line 206
    :catchall_17
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_1c

    .line 208
    :catch_1c
    move-exception v2

    goto :goto_16
.end method

.method public static nvl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 89
    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    move-object v0, p0

    goto :goto_4
.end method

.method public static removeQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 125
    if-eqz p0, :cond_11

    .line 126
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 127
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 128
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    .end local v0           #index:I
    :goto_10
    return-object v1

    :cond_11
    move-object v1, p0

    goto :goto_10
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "strs"

    .prologue
    .line 98
    if-eqz p0, :cond_24

    array-length v2, p0

    if-lez v2, :cond_24

    .line 99
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 101
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 103
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :goto_23
    return-object v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    sget-object v2, Lcom/lge/util/Util;->ESCAPE_CHAR:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 76
    sget-object v2, Lcom/lge/util/Util;->ESCAPE_CHAR:[[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 77
    .local v0, e:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 80
    .end local v0           #e:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_1d
    return-object p0
.end method
