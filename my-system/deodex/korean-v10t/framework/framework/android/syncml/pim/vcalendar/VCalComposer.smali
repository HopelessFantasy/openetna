.class public Landroid/syncml/pim/vcalendar/VCalComposer;
.super Ljava/lang/Object;
.source "VCalComposer.java"


# static fields
.field public static final VERSION_VCAL10_INT:I = 0x1

.field public static final VERSION_VCAL20_INT:I = 0x2

.field public static final VERSION_VCALENDAR10:Ljava/lang/String; = "vcalendar1.0"

.field public static final VERSION_VCALENDAR20:Ljava/lang/String; = "vcalendar2.0"

.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "\r\n"

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/syncml/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private buildEventStr(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;)Ljava/lang/String;
    .registers 9
    .parameter "stru"

    .prologue
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v4, strbuf:Ljava/lang/StringBuilder;
    const-string v5, "BEGIN:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 100
    const-string v5, "UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_29
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 103
    const-string v5, "DESCRIPTION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/syncml/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_46
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 107
    const-string v5, "DTEND:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_5f
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 110
    const-string v5, "DTSTART:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_78
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 113
    const-string v5, "DUE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_91
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_aa

    .line 116
    const-string v5, "LOCATION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_aa
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 119
    const-string v5, "COMPLETED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_c3
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_dc

    .line 122
    const-string v5, "RRULE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_dc
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f5

    .line 125
    const-string v5, "SUMMARY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_f5
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_117

    .line 128
    const-string v3, "TENTATIVE"

    .line 129
    .local v3, stat:Ljava/lang/String;
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_1b4

    .line 140
    :goto_108
    const-string v5, "STATUS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .end local v3           #stat:Ljava/lang/String;
    :cond_117
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a3

    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    if-eqz v5, :cond_1a3

    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1a3

    .line 147
    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    const-string v6, "vcalendar1.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_174

    .line 148
    const-string v2, ""

    .line 149
    .local v2, prefix:Ljava/lang/String;
    iget-object v5, p1, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, method:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_1be

    .line 162
    const-string v2, "DALARM"

    .line 165
    :goto_152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13d

    .line 131
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #method:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    .restart local v3       #stat:Ljava/lang/String;
    :pswitch_162
    const-string v3, "TENTATIVE"

    .line 132
    goto :goto_108

    .line 134
    :pswitch_165
    const-string v3, "CONFIRMED"

    .line 135
    goto :goto_108

    .line 137
    :pswitch_168
    const-string v3, "CANCELLED"

    goto :goto_108

    .line 152
    .end local v3           #stat:Ljava/lang/String;
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #method:Ljava/lang/String;
    .restart local v2       #prefix:Ljava/lang/String;
    :pswitch_16b
    const-string v2, "DALARM"

    .line 153
    goto :goto_152

    .line 155
    :pswitch_16e
    const-string v2, "AALARM"

    .line 156
    goto :goto_152

    .line 158
    :pswitch_171
    const-string v2, "MALARM"

    .line 159
    goto :goto_152

    .line 168
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #method:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_174
    const-string v5, "BEGIN:VALARM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ACTION:AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TRIGGER:-PT10M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "END:VALARM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_1a3
    const-string v5, "END:VEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 129
    nop

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_162
        :pswitch_165
        :pswitch_168
    .end packed-switch

    .line 150
    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_16b
        :pswitch_16e
        :pswitch_171
    .end packed-switch
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    const-string v2, "\n"

    .line 180
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v1, "\r\n "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNull(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 185
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    :cond_e
    const/4 v0, 0x1

    .line 187
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public createVCal(Landroid/syncml/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    .registers 9
    .parameter "struct"
    .parameter "vcalversion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v1, returnStr:Ljava/lang/StringBuilder;
    if-eq p2, v5, :cond_13

    const/4 v3, 0x2

    if-eq p2, v3, :cond_13

    .line 50
    new-instance v3, Landroid/syncml/pim/vcalendar/VCalException;

    const-string v4, "version not match 1.0 or 2.0."

    invoke-direct {v3, v4}, Landroid/syncml/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_13
    if-ne p2, v5, :cond_72

    .line 52
    const-string v3, "vcalendar1.0"

    iput-object v3, p0, Landroid/syncml/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 57
    :goto_19
    const-string v3, "BEGIN:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    if-ne p2, v5, :cond_77

    .line 60
    const-string v3, "VERSION:1.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :goto_31
    const-string v3, "PRODID:vCal ID default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v3, p1, Landroid/syncml/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/syncml/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 67
    if-ne p2, v5, :cond_83

    .line 68
    const-string v3, "TZ:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/syncml/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_57
    :goto_57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_58
    iget-object v3, p1, Landroid/syncml/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f0

    .line 81
    iget-object v3, p1, Landroid/syncml/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {p0, v3}, Landroid/syncml/pim/vcalendar/VCalComposer;->buildEventStr(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 54
    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_72
    const-string v3, "vcalendar2.0"

    iput-object v3, p0, Landroid/syncml/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    goto :goto_19

    .line 62
    :cond_77
    const-string v3, "VERSION:2.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 70
    :cond_83
    const-string v3, "BEGIN:VTIMEZONE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZID:vCal default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BEGIN:STANDARD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DTSTART:16010101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZOFFSETFROM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/syncml/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TZOFFSETTO:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/syncml/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END:STANDARD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END:VTIMEZONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_57

    .line 88
    .restart local v0       #i:I
    :cond_f0
    const-string v3, "END:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/syncml/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
