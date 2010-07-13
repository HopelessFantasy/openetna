.class public Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlEventEntryGDataSerializer.java"


# static fields
.field public static final NAMESPACE_GCAL:Ljava/lang/String; = "gCal"

.field public static final NAMESPACE_GCAL_URI:Ljava/lang/String; = "http://schemas.google.com/gCal/2005"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 3
    .parameter "factory"
    .parameter "entry"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 35
    return-void
.end method

.method private static serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 6
    .parameter "serializer"
    .parameter "commentsUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v2, "feedLink"

    .line 381
    if-nez p1, :cond_7

    .line 388
    :goto_6
    return-void

    .line 385
    :cond_7
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "feedLink"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    const/4 v0, 0x0

    const-string v1, "href"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "feedLink"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6
.end method

.method private static serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V
    .registers 7
    .parameter "serializer"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v3, "eventStatus"

    .line 105
    packed-switch p1, :pswitch_data_28

    .line 118
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    .line 121
    .local v0, statusString:Ljava/lang/String;
    :goto_9
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "eventStatus"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "eventStatus"

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    return-void

    .line 107
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_1e
    const-string v0, "http://schemas.google.com/g/2005#event.tentative"

    .line 108
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_9

    .line 110
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_21
    const-string v0, "http://schemas.google.com/g/2005#event.canceled"

    .line 111
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_9

    .line 113
    .end local v0           #statusString:Ljava/lang/String;
    :pswitch_24
    const-string v0, "http://schemas.google.com/g/2005#event.confirmed"

    .line 114
    .restart local v0       #statusString:Ljava/lang/String;
    goto :goto_9

    .line 105
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private static serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "serializer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v3, "http://schemas.google.com/g/2005"

    const-string v2, "extendedProperty"

    .line 394
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "extendedProperty"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    const-string v0, "name"

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    const-string v0, "value"

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "extendedProperty"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    return-void
.end method

.method private static serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "serializer"
    .parameter "originalEventId"
    .parameter "originalEventTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v6, "when"

    const-string v5, "originalEvent"

    const-string v3, "http://schemas.google.com/g/2005"

    .line 344
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {p2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 363
    :cond_13
    :goto_13
    return-void

    .line 350
    :cond_14
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "originalEvent"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 352
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 353
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 355
    const-string v2, "id"

    invoke-interface {p0, v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    .end local v0           #id:Ljava/lang/String;
    :cond_35
    const-string v2, "href"

    invoke-interface {p0, v4, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "when"

    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    const-string v2, "startTime"

    invoke-interface {p0, v4, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "when"

    invoke-interface {p0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    const-string v2, "http://schemas.google.com/g/2005"

    const-string v2, "originalEvent"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_13
.end method

.method private static serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 5
    .parameter "serializer"
    .parameter "recurrence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "recurrence"

    const-string v1, "http://schemas.google.com/g/2005"

    .line 129
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    :goto_a
    return-void

    .line 132
    :cond_b
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "recurrence"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "recurrence"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a
.end method

.method private static serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/Reminder;)V
    .registers 10
    .parameter "serializer"
    .parameter "reminder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, "reminder"

    const-string v6, "http://schemas.google.com/g/2005"

    .line 313
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v3, "reminder"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/Reminder;->getMethod()B

    move-result v0

    .line 315
    .local v0, method:B
    const/4 v1, 0x0

    .line 316
    .local v1, methodStr:Ljava/lang/String;
    packed-switch v0, :pswitch_data_3c

    .line 327
    :goto_14
    if-eqz v1, :cond_1b

    .line 328
    const-string v3, "method"

    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    :cond_1b
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/Reminder;->getMinutes()I

    move-result v2

    .line 332
    .local v2, minutes:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    .line 333
    const-string v3, "minutes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    :cond_2b
    const-string v3, "http://schemas.google.com/g/2005"

    const-string v3, "reminder"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    return-void

    .line 318
    .end local v2           #minutes:I
    :pswitch_33
    const-string v1, "alert"

    .line 319
    goto :goto_14

    .line 321
    :pswitch_36
    const-string v1, "email"

    .line 322
    goto :goto_14

    .line 324
    :pswitch_39
    const-string v1, "sms"

    goto :goto_14

    .line 316
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_39
        :pswitch_33
    .end packed-switch
.end method

.method private static serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V
    .registers 7
    .parameter "serializer"
    .parameter "transparency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "transparency"

    const-string v3, "http://schemas.google.com/g/2005"

    .line 143
    packed-switch p1, :pswitch_data_24

    .line 155
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    .line 159
    .local v0, transparencyString:Ljava/lang/String;
    :goto_9
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "transparency"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "transparency"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    return-void

    .line 145
    .end local v0           #transparencyString:Ljava/lang/String;
    :pswitch_1e
    const-string v0, "http://schemas.google.com/g/2005#event.opaque"

    .line 147
    .restart local v0       #transparencyString:Ljava/lang/String;
    goto :goto_9

    .line 149
    .end local v0           #transparencyString:Ljava/lang/String;
    :pswitch_21
    const-string v0, "http://schemas.google.com/g/2005#event.transparent"

    .line 151
    .restart local v0       #transparencyString:Ljava/lang/String;
    goto :goto_9

    .line 143
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method private static serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V
    .registers 7
    .parameter "serializer"
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "visibility"

    const-string v3, "http://schemas.google.com/g/2005"

    .line 171
    packed-switch p1, :pswitch_data_2a

    .line 188
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    .line 191
    .local v0, visibilityString:Ljava/lang/String;
    :goto_9
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "visibility"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const/4 v1, 0x0

    const-string v2, "value"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    const-string v1, "http://schemas.google.com/g/2005"

    const-string v1, "visibility"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    return-void

    .line 173
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_1e
    const-string v0, "http://schemas.google.com/g/2005#event.default"

    .line 174
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_9

    .line 176
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_21
    const-string v0, "http://schemas.google.com/g/2005#event.confidential"

    .line 178
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_9

    .line 180
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_24
    const-string v0, "http://schemas.google.com/g/2005#event.private"

    .line 181
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_9

    .line 183
    .end local v0           #visibilityString:Ljava/lang/String;
    :pswitch_27
    const-string v0, "http://schemas.google.com/g/2005#event.public"

    .line 184
    .restart local v0       #visibilityString:Ljava/lang/String;
    goto :goto_9

    .line 171
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method private static serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/When;)V
    .registers 11
    .parameter "serializer"
    .parameter "entry"
    .parameter "when"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, "when"

    const-string v6, "http://schemas.google.com/g/2005"

    .line 288
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, startTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, endTime:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 307
    :goto_17
    return-void

    .line 294
    :cond_18
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v4, "when"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const-string v4, "startTime"

    invoke-interface {p0, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 297
    const-string v4, "endTime"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    :cond_2f
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 300
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 301
    .local v2, reminders:Ljava/util/Enumeration;
    :goto_3d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 302
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 303
    .local v1, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-static {p0, v1}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    goto :goto_3d

    .line 306
    .end local v1           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    .end local v2           #reminders:Ljava/util/Enumeration;
    :cond_4d
    const-string v4, "http://schemas.google.com/g/2005"

    const-string v4, "when"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_17
.end method

.method private static serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 6
    .parameter "serializer"
    .parameter "where"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "where"

    const-string v2, "http://schemas.google.com/g/2005"

    .line 369
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 376
    :goto_a
    return-void

    .line 373
    :cond_b
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "where"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    const/4 v0, 0x0

    const-string v1, "valueString"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    const-string v0, "http://schemas.google.com/g/2005"

    const-string v0, "where"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a
.end method

.method private static serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/Who;)V
    .registers 14
    .parameter "serializer"
    .parameter "entry"
    .parameter "who"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v10, "value"

    const-string v9, "attendeeType"

    const-string v8, "attendeeStatus"

    const-string v6, "http://schemas.google.com/g/2005"

    .line 200
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "who"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 203
    const-string v5, "email"

    invoke-interface {p0, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    :cond_1f
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 208
    const-string v5, "valueString"

    invoke-interface {p0, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_2e
    const/4 v1, 0x0

    .line 212
    .local v1, rel:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getRelationship()B

    move-result v5

    packed-switch v5, :pswitch_data_fe

    .line 228
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected rel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getRelationship()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 216
    :pswitch_53
    const-string v1, "http://schemas.google.com/g/2005#event.attendee"

    .line 230
    :goto_55
    :pswitch_55
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 231
    const-string v5, "rel"

    invoke-interface {p0, v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    :cond_60
    const/4 v2, 0x0

    .line 235
    .local v2, status:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getStatus()B

    move-result v5

    packed-switch v5, :pswitch_data_10c

    .line 251
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getStatus()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 219
    .end local v2           #status:Ljava/lang/String;
    :pswitch_85
    const-string v1, "http://schemas.google.com/g/2005#event.organizer"

    .line 220
    goto :goto_55

    .line 222
    :pswitch_88
    const-string v1, "http://schemas.google.com/g/2005#event.performer"

    .line 223
    goto :goto_55

    .line 225
    :pswitch_8b
    const-string v1, "http://schemas.google.com/g/2005#event.speaker"

    .line 226
    goto :goto_55

    .line 239
    .restart local v2       #status:Ljava/lang/String;
    :pswitch_8e
    const-string v2, "http://schemas.google.com/g/2005#event.accepted"

    .line 253
    :goto_90
    :pswitch_90
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 254
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeStatus"

    invoke-interface {p0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const-string v5, "value"

    invoke-interface {p0, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeStatus"

    invoke-interface {p0, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    :cond_a9
    const/4 v3, 0x0

    .line 262
    .local v3, type:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getType()B

    move-result v5

    packed-switch v5, :pswitch_data_11a

    .line 272
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/Who;->getType()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 242
    .end local v3           #type:Ljava/lang/String;
    :pswitch_ce
    const-string v2, "http://schemas.google.com/g/2005#event.declined"

    .line 243
    goto :goto_90

    .line 245
    :pswitch_d1
    const-string v2, "http://schemas.google.com/g/2005#event.invited"

    .line 246
    goto :goto_90

    .line 248
    :pswitch_d4
    const-string v2, "http://schemas.google.com/g/2005#event.tentative"

    .line 249
    goto :goto_90

    .line 266
    .restart local v3       #type:Ljava/lang/String;
    :pswitch_d7
    const-string v3, "http://schemas.google.com/g/2005#event.required"

    .line 274
    :goto_d9
    :pswitch_d9
    invoke-static {v3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f2

    .line 275
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeType"

    invoke-interface {p0, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const-string v5, "value"

    invoke-interface {p0, v7, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "attendeeType"

    invoke-interface {p0, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    :cond_f2
    const-string v5, "http://schemas.google.com/g/2005"

    const-string v5, "who"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    return-void

    .line 269
    :pswitch_fa
    const-string v3, "http://schemas.google.com/g/2005#event.optional"

    .line 270
    goto :goto_d9

    .line 212
    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_55
        :pswitch_53
        :pswitch_85
        :pswitch_88
        :pswitch_8b
    .end packed-switch

    .line 235
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_90
        :pswitch_8e
        :pswitch_ce
        :pswitch_d1
        :pswitch_d4
    .end packed-switch

    .line 262
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_fa
        :pswitch_d7
    .end packed-switch
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "gCal"

    const-string v1, "http://schemas.google.com/gCal/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected getEventEntry()Lcom/google/wireless/gdata/calendar/data/EventEntry;
    .registers 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    return-object p0
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 16
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->getEventEntry()Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move-result-object v2

    .line 54
    .local v2, entry:Lcom/google/wireless/gdata/calendar/data/EventEntry;
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getStatus()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeEventStatus(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 55
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getTransparency()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeTransparency(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 56
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getVisibility()B

    move-result v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeVisibility(Lorg/xmlpull/v1/XmlSerializer;B)V

    .line 57
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 58
    .local v1, attendees:Ljava/util/Enumeration;
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_31

    .line 59
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/Who;

    .line 60
    .local v0, attendee:Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-static {p1, v2, v0}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWho(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/Who;)V

    goto :goto_21

    .line 63
    .end local v0           #attendee:Lcom/google/wireless/gdata/calendar/data/Who;
    :cond_31
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeRecurrence(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5c

    .line 67
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_74

    .line 68
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 69
    .local v8, reminders:Ljava/util/Enumeration;
    :goto_4c
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_74

    .line 70
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 71
    .local v7, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-static {p1, v7}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeReminder(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    goto :goto_4c

    .line 75
    .end local v7           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    .end local v8           #reminders:Ljava/util/Enumeration;
    :cond_5c
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v10

    .line 76
    .local v10, whens:Ljava/util/Enumeration;
    :goto_64
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_74

    .line 77
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/gdata/calendar/data/When;

    .line 78
    .local v9, when:Lcom/google/wireless/gdata/calendar/data/When;
    invoke-static {p1, v2, v9}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhen(Lorg/xmlpull/v1/XmlSerializer;Lcom/google/wireless/gdata/calendar/data/EventEntry;Lcom/google/wireless/gdata/calendar/data/When;)V

    goto :goto_64

    .line 81
    .end local v9           #when:Lcom/google/wireless/gdata/calendar/data/When;
    .end local v10           #whens:Ljava/util/Enumeration;
    :cond_74
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1, v11, v12}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeOriginalEvent(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeWhere(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getCommentsUri()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeCommentsUri(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v3

    .line 89
    .local v3, extendedProperties:Ljava/util/Hashtable;
    if-eqz v3, :cond_ad

    .line 90
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 91
    .local v5, propertyNames:Ljava/util/Enumeration;
    :goto_97
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 92
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 93
    .local v4, propertyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 94
    .local v6, propertyValue:Ljava/lang/String;
    invoke-static {p1, v4, v6}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;->serializeExtendedProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .line 97
    .end local v4           #propertyName:Ljava/lang/String;
    .end local v5           #propertyNames:Ljava/util/Enumeration;
    .end local v6           #propertyValue:Ljava/lang/String;
    :cond_ad
    return-void
.end method
