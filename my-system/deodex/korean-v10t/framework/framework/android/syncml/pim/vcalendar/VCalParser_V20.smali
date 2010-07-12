.class public Landroid/syncml/pim/vcalendar/VCalParser_V20;
.super Landroid/syncml/pim/vcalendar/VCalParser_V10;
.source "VCalParser_V20.java"


# static fields
.field private static final V10LINEBREAKER:Ljava/lang/String; = "\r\n"

.field private static final acceptableComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final acceptableV20Props:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasTZ:Z

.field private index:I

.field private lines:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "VEVENT"

    aput-object v2, v1, v3

    const-string v2, "VTODO"

    aput-object v2, v1, v4

    const-string v2, "VALARM"

    aput-object v2, v1, v5

    const-string v2, "VTIMEZONE"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->acceptableComponents:Ljava/util/HashSet;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v3

    const-string v2, "DTEND"

    aput-object v2, v1, v4

    const-string v2, "DTSTART"

    aput-object v2, v1, v5

    const-string v2, "DUE"

    aput-object v2, v1, v6

    const-string v2, "COMPLETED"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "RRULE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "STATUS"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "SUMMARY"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->acceptableV20Props:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/syncml/pim/vcalendar/VCalParser_V10;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    return-void
.end method

.method private parseV20Calbody([Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .registers 12
    .parameter "lines"
    .parameter "buffer"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 84
    :goto_2
    :try_start_2
    const-string v4, "VERSION:2.0"

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 85
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_2

    .line 102
    :catch_15
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move v4, v7

    .line 106
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_18
    return v4

    .line 86
    :cond_19
    const-string v4, "VERSION:1.0\r\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    .line 89
    :goto_24
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    array-length v5, p1

    sub-int/2addr v5, v8

    if-ge v4, v5, :cond_68

    .line 90
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, p1, v4

    const-string v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, keyAndValue:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 92
    .local v1, key:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 94
    .local v3, value:Ljava/lang/String;
    const-string v4, "BEGIN"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    move v4, v7

    .line 96
    goto :goto_18

    .line 97
    :cond_53
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    .line 98
    invoke-direct {p0, v3, p2}, Landroid/syncml/pim/vcalendar/VCalParser_V20;->parseV20Component(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v4

    if-nez v4, :cond_61

    move v4, v7

    .line 99
    goto :goto_18

    .line 89
    :cond_61
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I
    :try_end_67
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_67} :catch_15

    goto :goto_24

    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyAndValue:[Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_68
    move v4, v8

    .line 106
    goto :goto_18
.end method

.method private parseV20Component(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .registers 15
    .parameter "compName"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v11, ":"

    const-string v8, "\r\n"

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "END:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, endTag:Ljava/lang/String;
    sget-object v4, Landroid/syncml/pim/vcalendar/VCalParser_V20;->acceptableComponents:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_171

    .line 124
    const-string v4, "VEVENT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string v4, "VTODO"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_107

    .line 125
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BEGIN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_4e
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ef

    .line 127
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v5

    const-string v5, ":"

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, propAndValue:[Ljava/lang/String;
    aget-object v4, v1, v7

    const-string v5, ";"

    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v7

    .line 129
    .local v2, propName:Ljava/lang/String;
    aget-object v3, v1, v9

    .line 131
    .local v3, value:Ljava/lang/String;
    const-string v4, ""

    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 132
    const-string v4, "\r\n"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_85
    :goto_85
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_4e

    .line 133
    :cond_8c
    sget-object v4, Landroid/syncml/pim/vcalendar/VCalParser_V20;->acceptableV20Props:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 135
    :cond_b5
    const-string v4, "BEGIN"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    const-string v4, "VALARM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 139
    const-string v4, "AALARM:default\r\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :goto_d8
    const-string v4, "END:VALARM"

    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v6, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 141
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_d8

    :cond_ed
    move v4, v7

    .line 172
    .end local v1           #propAndValue:[Ljava/lang/String;
    .end local v2           #propName:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :goto_ee
    return v4

    .line 147
    :cond_ef
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_105
    :goto_105
    move v4, v9

    .line 172
    goto :goto_ee

    .line 148
    :cond_107
    const-string v4, "VALARM"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    move v4, v7

    .line 150
    goto :goto_ee

    .line 151
    :cond_111
    const-string v4, "VTIMEZONE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 153
    :cond_119
    iget-boolean v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    if-nez v4, :cond_15b

    .line 154
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v5

    const-string v5, ":"

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1       #propAndValue:[Ljava/lang/String;
    aget-object v4, v1, v7

    const-string v5, ";"

    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v7

    .line 157
    .restart local v2       #propName:Ljava/lang/String;
    const-string v4, "TZOFFSETFROM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 158
    aget-object v3, v1, v9

    .line 159
    .restart local v3       #value:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TZ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iput-boolean v9, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->hasTZ:Z

    .line 163
    .end local v1           #propAndValue:[Ljava/lang/String;
    .end local v2           #propName:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_15b
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    .line 164
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    goto :goto_105

    :cond_16e
    move v4, v7

    .line 166
    goto/16 :goto_ee

    .line 168
    :cond_171
    :goto_171
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_105

    .line 169
    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    goto :goto_171
.end method

.method private splitProperty(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "scStr"

    .prologue
    const-string v5, "\n"

    const-string v4, ""

    .line 181
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n "

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\t"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    const-string v1, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, strs:[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z
    .registers 12
    .parameter "is"
    .parameter "encoding"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 48
    .local v0, bytes:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 49
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 50
    .local v1, scStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, v10str:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Landroid/syncml/pim/vcalendar/VCalParser_V20;->splitProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    .line 53
    iput v6, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    .line 55
    const-string v3, "BEGIN:VCALENDAR"

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 56
    const-string v3, "BEGIN:VCALENDAR\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    .line 60
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Landroid/syncml/pim/vcalendar/VCalParser_V20;->parseV20Calbody([Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v7

    if-le v3, v4, :cond_4c

    :cond_48
    move v3, v6

    .line 69
    :goto_49
    return v3

    :cond_4a
    move v3, v6

    .line 58
    goto :goto_49

    .line 64
    :cond_4c
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v7

    iget v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    if-ne v3, v4, :cond_79

    const-string v3, "END:VCALENDAR"

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->lines:[Ljava/lang/String;

    iget v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V20;->index:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 65
    const-string v3, "END:VCALENDAR\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-super {p0, v3, p2, p3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/syncml/pim/VBuilder;)Z

    move-result v3

    goto :goto_49

    :cond_79
    move v3, v6

    .line 67
    goto :goto_49
.end method
