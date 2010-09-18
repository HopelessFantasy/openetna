.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 16
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 58
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v12, p1, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    if-nez v12, :cond_10

    .line 59
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Expected CalendarEntry!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 61
    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    move-object v3, v0

    .line 65
    .local v3, calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, name:Ljava/lang/String;
    const-string v12, "accesslevel"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_67

    .line 67
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, accesslevelStr:Ljava/lang/String;
    const/4 v1, 0x1

    .line 70
    .local v1, accesslevel:B
    const-string v12, "none"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 71
    const/4 v1, 0x0

    .line 85
    :cond_31
    :goto_31
    invoke-virtual {v3, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 119
    .end local v1           #accesslevel:B
    .end local v2           #accesslevelStr:Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 72
    .restart local v1       #accesslevel:B
    .restart local v2       #accesslevelStr:Ljava/lang/String;
    :cond_35
    const-string v12, "read"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 73
    const/4 v1, 0x1

    goto :goto_31

    .line 74
    :cond_3f
    const-string v12, "freebusy"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    .line 75
    const/4 v1, 0x2

    goto :goto_31

    .line 76
    :cond_49
    const-string v12, "contributor"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 79
    const/4 v1, 0x3

    goto :goto_31

    .line 80
    :cond_53
    const-string v12, "editor"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5d

    .line 81
    const/4 v1, 0x3

    goto :goto_31

    .line 82
    :cond_5d
    const-string v12, "owner"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 83
    const/4 v1, 0x4

    goto :goto_31

    .line 86
    .end local v1           #accesslevel:B
    .end local v2           #accesslevelStr:Ljava/lang/String;
    :cond_67
    const-string v12, "color"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7a

    .line 87
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, color:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_34

    .line 90
    .end local v4           #color:Ljava/lang/String;
    :cond_7a
    const-string v12, "hidden"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a7

    .line 91
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, hiddenStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 94
    .local v5, hidden:Z
    const-string v12, "false"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9d

    .line 95
    const/4 v5, 0x0

    .line 99
    :cond_93
    :goto_93
    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 101
    if-eqz v5, :cond_34

    .line 102
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_34

    .line 96
    :cond_9d
    const-string v12, "true"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_93

    .line 97
    const/4 v5, 0x1

    goto :goto_93

    .line 104
    .end local v5           #hidden:Z
    .end local v6           #hiddenStr:Ljava/lang/String;
    :cond_a7
    const-string v12, "selected"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cf

    .line 105
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, selectedStr:Ljava/lang/String;
    const/4 v9, 0x0

    .line 108
    .local v9, selected:Z
    const-string v12, "false"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c5

    .line 109
    const/4 v9, 0x0

    .line 113
    :cond_c0
    :goto_c0
    invoke-virtual {v3, v9}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_34

    .line 110
    :cond_c5
    const-string v12, "true"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c0

    .line 111
    const/4 v9, 0x1

    goto :goto_c0

    .line 114
    .end local v9           #selected:Z
    .end local v10           #selectedStr:Ljava/lang/String;
    :cond_cf
    const-string v12, "timezone"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    .line 115
    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 117
    .local v11, timezone:Ljava/lang/String;
    invoke-virtual {v3, v11}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_34
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 8
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v2, "alternate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "application/atom+xml"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 132
    move-object v0, p4

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    move-object v1, v0

    .line 133
    .local v1, calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-virtual {v1, p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAlternateLink(Ljava/lang/String;)V

    .line 135
    .end local v1           #calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    :cond_17
    return-void
.end method
