.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlEventsGDataParser.java"


# instance fields
.field private hasSeenReminder:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 49
    return-void
.end method

.method private handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 8
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "originalEvent"

    .line 387
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 389
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 390
    .local v0, eventType:I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1e

    const-string v3, "originalEvent"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 395
    :cond_1e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected <originalEvent>: Actual element: <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 401
    :cond_3d
    const-string v3, "href"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 404
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 405
    :goto_4a
    const/4 v3, 0x1

    if-eq v0, v3, :cond_77

    .line 406
    packed-switch v0, :pswitch_data_78

    .line 423
    :cond_50
    :goto_50
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4a

    .line 408
    :pswitch_55
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 409
    const-string v3, "when"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 410
    const-string v3, "startTime"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    goto :goto_50

    .line 415
    :pswitch_6b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 416
    const-string v3, "originalEvent"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 425
    :cond_77
    return-void

    .line 406
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_55
        :pswitch_6b
    .end packed-switch
.end method

.method private handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 11
    .parameter "eventEntry"

    .prologue
    const/4 v8, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 347
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Lcom/google/wireless/gdata/calendar/data/Reminder;

    invoke-direct {v6}, Lcom/google/wireless/gdata/calendar/data/Reminder;-><init>()V

    .line 348
    .local v6, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-virtual {p1, v6}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    .line 350
    const-string v7, "method"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, methodStr:Ljava/lang/String;
    const-string v7, "minutes"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, minutesStr:Ljava/lang/String;
    const-string v7, "hours"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, hoursStr:Ljava/lang/String;
    const-string v7, "days"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, daysStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 360
    const-string v7, "alert"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 361
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    .line 369
    :cond_37
    :goto_37
    const/4 v3, -0x1

    .line 370
    .local v3, minutes:I
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 371
    invoke-static {v4, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 378
    :cond_42
    :goto_42
    if-gez v3, :cond_45

    .line 379
    const/4 v3, -0x1

    .line 381
    :cond_45
    invoke-virtual {v6, v3}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMinutes(I)V

    .line 382
    return-void

    .line 362
    .end local v3           #minutes:I
    :cond_49
    const-string v7, "email"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 363
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_37

    .line 364
    :cond_56
    const-string v7, "sms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 365
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_37

    .line 372
    .restart local v3       #minutes:I
    :cond_63
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_70

    .line 373
    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit8 v3, v7, 0x3c

    goto :goto_42

    .line 374
    :cond_70
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 375
    invoke-static {v0, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit16 v3, v7, 0x5a0

    goto :goto_42
.end method

.method private handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 15
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "when"

    .line 291
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 293
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 294
    .local v1, eventType:I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v1, v8, :cond_20

    const-string v8, "when"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    .line 299
    :cond_20
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected <when>: Actual element: <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 305
    :cond_3f
    const-string v8, "startTime"

    invoke-interface {v5, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, startTime:Ljava/lang/String;
    const-string v8, "endTime"

    invoke-interface {v5, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, endTime:Ljava/lang/String;
    new-instance v7, Lcom/google/wireless/gdata/calendar/data/When;

    invoke-direct {v7, v6, v0}, Lcom/google/wireless/gdata/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .local v7, when:Lcom/google/wireless/gdata/calendar/data/When;
    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata/calendar/data/When;)V

    .line 312
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ne v8, v9, :cond_73

    move v2, v9

    .line 316
    .local v2, firstWhen:Z
    :goto_5e
    if-eqz v2, :cond_75

    iget-boolean v8, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v8, :cond_75

    move v3, v9

    .line 318
    .local v3, handleReminders:Z
    :goto_65
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 319
    :goto_69
    if-eq v1, v9, :cond_95

    .line 320
    packed-switch v1, :pswitch_data_96

    .line 340
    :cond_6e
    :goto_6e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_69

    .end local v2           #firstWhen:Z
    .end local v3           #handleReminders:Z
    :cond_73
    move v2, v10

    .line 312
    goto :goto_5e

    .restart local v2       #firstWhen:Z
    :cond_75
    move v3, v10

    .line 316
    goto :goto_65

    .line 322
    .restart local v3       #handleReminders:Z
    :pswitch_77
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 323
    const-string v8, "reminder"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 326
    if-eqz v3, :cond_6e

    .line 327
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto :goto_6e

    .line 332
    :pswitch_89
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 333
    const-string v8, "when"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 342
    :cond_95
    return-void

    .line 320
    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_77
        :pswitch_89
    .end packed-switch
.end method

.method private handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 19
    .parameter "eventEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 193
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 194
    .local v3, eventType:I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, name:Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v3, v14, :cond_1b

    const-string v14, "who"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3a

    .line 199
    :cond_1b
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Expected <who>: Actual element: <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 205
    :cond_3a
    const/4 v14, 0x0

    const-string v15, "email"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, email:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "rel"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, relString:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "valueString"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, value:Ljava/lang/String;
    new-instance v13, Lcom/google/wireless/gdata/calendar/data/Who;

    invoke-direct {v13}, Lcom/google/wireless/gdata/calendar/data/Who;-><init>()V

    .line 213
    .local v13, who:Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-virtual {v13, v2}, Lcom/google/wireless/gdata/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v13, v12}, Lcom/google/wireless/gdata/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 215
    const/4 v6, 0x0

    .line 216
    .local v6, rel:B
    const-string v14, "http://schemas.google.com/g/2005#event.attendee"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_78

    .line 217
    const/4 v6, 0x1

    .line 229
    :goto_64
    invoke-virtual {v13, v6}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    .line 231
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata/calendar/data/Who;)V

    .line 233
    :goto_6d
    const/4 v14, 0x1

    if-eq v3, v14, :cond_169

    .line 234
    packed-switch v3, :pswitch_data_16a

    .line 284
    :cond_73
    :goto_73
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_6d

    .line 218
    :cond_78
    const-string v14, "http://schemas.google.com/g/2005#event.organizer"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_82

    .line 219
    const/4 v6, 0x2

    goto :goto_64

    .line 220
    :cond_82
    const-string v14, "http://schemas.google.com/g/2005#event.performer"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8c

    .line 221
    const/4 v6, 0x3

    goto :goto_64

    .line 222
    :cond_8c
    const-string v14, "http://schemas.google.com/g/2005#event.speaker"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_96

    .line 223
    const/4 v6, 0x4

    goto :goto_64

    .line 224
    :cond_96
    invoke-static {v7}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9e

    .line 225
    const/4 v6, 0x1

    goto :goto_64

    .line 227
    :cond_9e
    new-instance v14, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected rel: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 236
    :pswitch_b7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 237
    const-string v14, "attendeeStatus"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_117

    .line 238
    const/4 v14, 0x0

    const-string v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, statusString:Ljava/lang/String;
    const/4 v8, 0x0

    .line 241
    .local v8, status:B
    const-string v14, "http://schemas.google.com/g/2005#event.accepted"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d8

    .line 243
    const/4 v8, 0x1

    .line 258
    :goto_d4
    invoke-virtual {v13, v8}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_73

    .line 244
    :cond_d8
    const-string v14, "http://schemas.google.com/g/2005#event.declined"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e2

    .line 246
    const/4 v8, 0x2

    goto :goto_d4

    .line 247
    :cond_e2
    const-string v14, "http://schemas.google.com/g/2005#event.invited"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ec

    .line 249
    const/4 v8, 0x3

    goto :goto_d4

    .line 250
    :cond_ec
    const-string v14, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f6

    .line 252
    const/4 v8, 0x4

    goto :goto_d4

    .line 253
    :cond_f6
    invoke-static {v9}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_fe

    .line 254
    const/4 v8, 0x4

    goto :goto_d4

    .line 256
    :cond_fe
    new-instance v14, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected status: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 259
    .end local v8           #status:B
    .end local v9           #statusString:Ljava/lang/String;
    :cond_117
    const-string v14, "attendeeType"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_73

    .line 260
    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, typeString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 262
    .local v10, type:B
    const-string v14, "http://schemas.google.com/g/2005#event.optional"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_132

    .line 263
    const/4 v10, 0x1

    .line 272
    :goto_12d
    invoke-virtual {v13, v10}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    goto/16 :goto_73

    .line 264
    :cond_132
    const-string v14, "http://schemas.google.com/g/2005#event.required"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13c

    .line 266
    const/4 v10, 0x2

    goto :goto_12d

    .line 267
    :cond_13c
    invoke-static {v11}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_144

    .line 268
    const/4 v10, 0x2

    goto :goto_12d

    .line 270
    :cond_144
    new-instance v14, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 276
    .end local v10           #type:B
    .end local v11           #typeString:Ljava/lang/String;
    :pswitch_15d
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 277
    const-string v14, "who"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_73

    .line 286
    :cond_169
    return-void

    .line 234
    :pswitch_data_16a
    .packed-switch 0x2
        :pswitch_b7
        :pswitch_15d
    .end packed-switch
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 64
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;-><init>()V

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 3
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 71
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 72
    return-void
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .registers 22
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 99
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 100
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Expected EventEntry!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 102
    :cond_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move-object v4, v0

    .line 107
    .local v4, eventEntry:Lcom/google/wireless/gdata/calendar/data/EventEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, name:Ljava/lang/String;
    const-string v18, "eventStatus"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_60

    .line 109
    const/16 v18, 0x0

    const-string v19, "value"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, eventStatusStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, eventStatus:B
    const-string v18, "http://schemas.google.com/g/2005#event.canceled"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_46

    .line 113
    const/4 v5, 0x2

    .line 121
    :cond_42
    :goto_42
    invoke-virtual {v4, v5}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setStatus(B)V

    .line 186
    .end local v5           #eventStatus:B
    .end local v6           #eventStatusStr:Ljava/lang/String;
    :cond_45
    :goto_45
    return-void

    .line 114
    .restart local v5       #eventStatus:B
    .restart local v6       #eventStatusStr:Ljava/lang/String;
    :cond_46
    const-string v18, "http://schemas.google.com/g/2005#event.confirmed"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_53

    .line 116
    const/4 v5, 0x1

    goto :goto_42

    .line 117
    :cond_53
    const-string v18, "http://schemas.google.com/g/2005#event.tentative"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_42

    .line 119
    const/4 v5, 0x0

    goto :goto_42

    .line 122
    .end local v5           #eventStatus:B
    .end local v6           #eventStatusStr:Ljava/lang/String;
    :cond_60
    const-string v18, "recurrence"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_73

    .line 123
    invoke-static {v8}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, recurrence:Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    goto :goto_45

    .line 125
    .end local v11           #recurrence:Ljava/lang/String;
    :cond_73
    const-string v18, "transparency"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a9

    .line 126
    const/16 v18, 0x0

    const-string v19, "value"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, transparencyStr:Ljava/lang/String;
    const/4 v13, 0x0

    .line 128
    .local v13, transparency:B
    const-string v18, "http://schemas.google.com/g/2005#event.opaque"

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9c

    .line 130
    const/4 v13, 0x0

    .line 135
    :cond_98
    :goto_98
    invoke-virtual {v4, v13}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setTransparency(B)V

    goto :goto_45

    .line 131
    :cond_9c
    const-string v18, "http://schemas.google.com/g/2005#event.transparent"

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_98

    .line 133
    const/4 v13, 0x1

    goto :goto_98

    .line 136
    .end local v13           #transparency:B
    .end local v14           #transparencyStr:Ljava/lang/String;
    :cond_a9
    const-string v18, "visibility"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_fe

    .line 137
    const/16 v18, 0x0

    const-string v19, "value"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 138
    .local v16, visibilityStr:Ljava/lang/String;
    const/4 v15, 0x0

    .line 139
    .local v15, visibility:B
    const-string v18, "http://schemas.google.com/g/2005#event.confidential"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d4

    .line 141
    const/4 v15, 0x1

    .line 152
    :cond_cf
    :goto_cf
    invoke-virtual {v4, v15}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setVisibility(B)V

    goto/16 :goto_45

    .line 142
    :cond_d4
    const-string v18, "http://schemas.google.com/g/2005#event.default"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e2

    .line 144
    const/4 v15, 0x0

    goto :goto_cf

    .line 145
    :cond_e2
    const-string v18, "http://schemas.google.com/g/2005#event.private"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f0

    .line 147
    const/4 v15, 0x2

    goto :goto_cf

    .line 148
    :cond_f0
    const-string v18, "http://schemas.google.com/g/2005#event.public"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_cf

    .line 150
    const/4 v15, 0x3

    goto :goto_cf

    .line 153
    .end local v15           #visibility:B
    .end local v16           #visibilityStr:Ljava/lang/String;
    :cond_fe
    const-string v18, "who"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_111

    .line 154
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_45

    .line 155
    :cond_111
    const-string v18, "when"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_124

    .line 156
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_45

    .line 157
    :cond_124
    const-string v18, "reminder"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14a

    .line 158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    move/from16 v18, v0

    if-nez v18, :cond_142

    .line 161
    invoke-virtual {v4}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->clearReminders()V

    .line 162
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 164
    :cond_142
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_45

    .line 165
    :cond_14a
    const-string v18, "originalEvent"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15d

    .line 166
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_45

    .line 167
    :cond_15d
    const-string v18, "where"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19b

    .line 168
    const/16 v18, 0x0

    const-string v19, "valueString"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 170
    .local v17, where:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "rel"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, rel:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_193

    const-string v18, "http://schemas.google.com/g/2005#event"

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_45

    .line 174
    :cond_193
    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 177
    .end local v12           #rel:Ljava/lang/String;
    .end local v17           #where:Ljava/lang/String;
    :cond_19b
    const-string v18, "feedLink"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b8

    .line 179
    const/16 v18, 0x0

    const-string v19, "href"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, commentsUri:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 181
    .end local v3           #commentsUri:Ljava/lang/String;
    :cond_1b8
    const-string v18, "extendedProperty"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_45

    .line 182
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, propertyName:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "value"

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, propertyValue:Ljava/lang/String;
    invoke-virtual {v4, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .registers 9
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 77
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    instance-of v5, p1, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    if-nez v5, :cond_10

    .line 78
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Expected EventsFeed!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    move-object v1, v0

    .line 81
    .local v1, eventsFeed:Lcom/google/wireless/gdata/calendar/data/EventsFeed;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, name:Ljava/lang/String;
    const-string v5, "timezone"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 83
    const/4 v5, 0x0

    const-string v6, "value"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, timezone:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 85
    invoke-virtual {v1, v4}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;->setTimezone(Ljava/lang/String;)V

    .line 88
    .end local v4           #timezone:Ljava/lang/String;
    :cond_30
    return-void
.end method
