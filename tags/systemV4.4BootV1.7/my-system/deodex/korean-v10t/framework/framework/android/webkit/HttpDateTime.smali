.class Landroid/webkit/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HttpDateTime$1;,
        Landroid/webkit/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,3})[ ]+([0-9]{1,2})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,3})[- ]([0-9]{2,4})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,3})[- ]([0-9]{2,4})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "[ ]([A-Za-z]{3,3})[ ]+([0-9]{1,2})[ ]([0-9][0-9]:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .registers 5
    .parameter "dateString"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x30

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 114
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 117
    :goto_18
    return v0

    :cond_19
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_18
.end method

.method private static getMonth(Ljava/lang/String;)I
    .registers 7
    .parameter "monthString"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x123

    sub-int v0, v1, v2

    .line 139
    .local v0, hash:I
    sparse-switch v0, :sswitch_data_46

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :sswitch_2a
    move v1, v3

    .line 163
    :goto_2b
    return v1

    :sswitch_2c
    move v1, v4

    .line 143
    goto :goto_2b

    :sswitch_2e
    move v1, v5

    .line 145
    goto :goto_2b

    .line 147
    :sswitch_30
    const/4 v1, 0x3

    goto :goto_2b

    .line 149
    :sswitch_32
    const/4 v1, 0x4

    goto :goto_2b

    .line 151
    :sswitch_34
    const/4 v1, 0x5

    goto :goto_2b

    .line 153
    :sswitch_36
    const/4 v1, 0x6

    goto :goto_2b

    .line 155
    :sswitch_38
    const/4 v1, 0x7

    goto :goto_2b

    .line 157
    :sswitch_3a
    const/16 v1, 0x8

    goto :goto_2b

    .line 159
    :sswitch_3d
    const/16 v1, 0x9

    goto :goto_2b

    .line 161
    :sswitch_40
    const/16 v1, 0xa

    goto :goto_2b

    .line 163
    :sswitch_43
    const/16 v1, 0xb

    goto :goto_2b

    .line 139
    :sswitch_data_46
    .sparse-switch
        0x9 -> :sswitch_43
        0xa -> :sswitch_2c
        0x16 -> :sswitch_2a
        0x1a -> :sswitch_38
        0x1d -> :sswitch_2e
        0x20 -> :sswitch_30
        0x23 -> :sswitch_3d
        0x24 -> :sswitch_32
        0x25 -> :sswitch_3a
        0x28 -> :sswitch_36
        0x2a -> :sswitch_34
        0x30 -> :sswitch_40
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Landroid/webkit/HttpDateTime$TimeOfDay;
    .registers 5
    .parameter "timeString"

    .prologue
    const/16 v3, 0x30

    .line 186
    new-instance v0, Landroid/webkit/HttpDateTime$TimeOfDay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/HttpDateTime$TimeOfDay;-><init>(Landroid/webkit/HttpDateTime$1;)V

    .line 187
    .local v0, time:Landroid/webkit/HttpDateTime$TimeOfDay;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/webkit/HttpDateTime$TimeOfDay;->hour:I

    .line 189
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/webkit/HttpDateTime$TimeOfDay;->minute:I

    .line 191
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/webkit/HttpDateTime$TimeOfDay;->second:I

    .line 193
    return-object v0
.end method

.method private static getYear(Ljava/lang/String;)I
    .registers 7
    .parameter "yearString"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x30

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_23

    .line 171
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 173
    .local v0, year:I
    const/16 v1, 0x46

    if-lt v0, v1, :cond_20

    .line 174
    add-int/lit16 v1, v0, 0x76c

    .line 179
    .end local v0           #year:I
    :goto_1f
    return v1

    .line 176
    .restart local v0       #year:I
    :cond_20
    add-int/lit16 v1, v0, 0x7d0

    goto :goto_1f

    .line 179
    .end local v0           #year:I
    :cond_23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1f
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Long;
    .registers 13
    .parameter "timeString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 76
    const/4 v4, 0x1

    .line 77
    .local v4, date:I
    const/4 v5, 0x0

    .line 78
    .local v5, month:I
    const/16 v6, 0x7b2

    .line 79
    .local v6, year:I
    new-instance v9, Landroid/webkit/HttpDateTime$TimeOfDay;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/webkit/HttpDateTime$TimeOfDay;-><init>(Landroid/webkit/HttpDateTime$1;)V

    .line 81
    .local v9, timeOfDay:Landroid/webkit/HttpDateTime$TimeOfDay;
    sget-object v1, Landroid/webkit/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 82
    .local v8, rfcMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 83
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 84
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 85
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    .line 86
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getTime(Ljava/lang/String;)Landroid/webkit/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 100
    :goto_3a
    const/16 v1, 0x7f6

    if-lt v6, v1, :cond_42

    .line 101
    const/16 v6, 0x7f6

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v4, 0x1

    .line 106
    :cond_42
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, time:Landroid/text/format/Time;
    iget v1, v9, Landroid/webkit/HttpDateTime$TimeOfDay;->second:I

    iget v2, v9, Landroid/webkit/HttpDateTime$TimeOfDay;->minute:I

    iget v3, v9, Landroid/webkit/HttpDateTime$TimeOfDay;->hour:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 88
    .end local v0           #time:Landroid/text/format/Time;
    :cond_5c
    sget-object v1, Landroid/webkit/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 89
    .local v7, ansicMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 90
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 91
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 92
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getTime(Ljava/lang/String;)Landroid/webkit/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 93
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    goto :goto_3a

    .line 95
    :cond_89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
