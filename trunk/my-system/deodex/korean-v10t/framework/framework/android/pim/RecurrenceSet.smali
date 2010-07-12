.class public Landroid/pim/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "CalendarProvider"


# instance fields
.field public exdates:[J

.field public exrules:[Landroid/pim/EventRecurrence;

.field public rdates:[J

.field public rrules:[Landroid/pim/EventRecurrence;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 7
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 42
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 43
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 44
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 52
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, rruleStr:Ljava/lang/String;
    const-string v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, rdateStr:Ljava/lang/String;
    const-string v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, exruleStr:Ljava/lang/String;
    const-string v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, exdateStr:Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 11
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 42
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 43
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 44
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 69
    const-string v8, "rrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 70
    .local v6, rruleColumn:I
    const-string v8, "rdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 71
    .local v4, rdateColumn:I
    const-string v8, "exrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, exruleColumn:I
    const-string v8, "exdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, exdateColumn:I
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, rruleStr:Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, rdateStr:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, exruleStr:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, exdateStr:Ljava/lang/String;
    invoke-direct {p0, v7, v5, v3, v1}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 42
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 43
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 44
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private static addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "component"
    .parameter "propertyName"
    .parameter "ruleStr"

    .prologue
    .line 298
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 307
    :cond_6
    return-void

    .line 301
    :cond_7
    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, rrules:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 303
    .local v4, rrule:Ljava/lang/String;
    new-instance v3, Landroid/pim/ICalendar$Property;

    invoke-direct {v3, p1}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, prop:Landroid/pim/ICalendar$Property;
    invoke-virtual {v3, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private static addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "component"
    .parameter "propertyName"
    .parameter "dateStr"

    .prologue
    .line 312
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 328
    :goto_6
    return-void

    .line 316
    :cond_7
    new-instance v0, Landroid/pim/ICalendar$Property;

    invoke-direct {v0, p1}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, prop:Landroid/pim/ICalendar$Property;
    const/4 v1, 0x0

    .line 318
    .local v1, tz:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 319
    .local v2, tzidx:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 320
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 321
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 323
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 324
    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v4, "TZID"

    invoke-direct {v3, v4, v1}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 326
    :cond_31
    invoke-virtual {v0, p2}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    goto :goto_6
.end method

.method private static computeDuration(Landroid/text/format/Time;Landroid/pim/ICalendar$Component;)Ljava/lang/String;
    .registers 15
    .parameter "start"
    .parameter "component"

    .prologue
    const/4 v11, 0x0

    .line 333
    const-string v9, "DURATION"

    invoke-virtual {p1, v9}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v3

    .line 335
    .local v3, durationProperty:Landroid/pim/ICalendar$Property;
    if-eqz v3, :cond_e

    .line 337
    invoke-virtual {v3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 357
    :goto_d
    return-object v9

    .line 341
    :cond_e
    const-string v9, "DTEND"

    invoke-virtual {p1, v9}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 343
    .local v0, dtendProperty:Landroid/pim/ICalendar$Property;
    if-nez v0, :cond_19

    .line 345
    const-string v9, "+P0S"

    goto :goto_d

    .line 347
    :cond_19
    const-string v9, "TZID"

    invoke-virtual {v0, v9}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v8

    .line 349
    .local v8, endTzidParameter:Landroid/pim/ICalendar$Parameter;
    if-nez v8, :cond_58

    iget-object v9, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object v7, v9

    .line 352
    .local v7, endTzid:Ljava/lang/String;
    :goto_24
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 353
    .local v6, end:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 354
    invoke-virtual {v6, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-virtual {p0, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    sub-long v1, v9, v11

    .line 356
    .local v1, durationMillis:J
    const-wide/16 v9, 0x3e8

    div-long v4, v1, v9

    .line 357
    .local v4, durationSeconds:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    .line 349
    .end local v1           #durationMillis:J
    .end local v4           #durationSeconds:J
    .end local v6           #end:Landroid/text/format/Time;
    .end local v7           #endTzid:Ljava/lang/String;
    :cond_58
    iget-object v9, v8, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object v7, v9

    goto :goto_24
.end method

.method private static extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;
    .registers 4
    .parameter "recurrence"

    .prologue
    .line 388
    if-nez p0, :cond_4

    .line 389
    const/4 v1, 0x0

    .line 396
    :goto_3
    return-object v1

    .line 391
    :cond_4
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .line 393
    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-eqz v0, :cond_2a

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 396
    :cond_2a
    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "component"
    .parameter "name"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 363
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Landroid/pim/ICalendar$Property;>;"
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 364
    :cond_c
    const/4 v5, 0x0

    .line 384
    .end local p0
    :goto_d
    return-object v5

    .line 367
    .restart local p0
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    .line 368
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/pim/ICalendar$Property;

    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 371
    .restart local p0
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 374
    .local v0, first:Z
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/ICalendar$Property;

    .line 375
    .local v3, property:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_46

    .line 376
    const/4 v0, 0x0

    .line 382
    :goto_3e
    invoke-virtual {v3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 380
    :cond_46
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 384
    .end local v3           #property:Landroid/pim/ICalendar$Property;
    :cond_4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"

    .prologue
    const-string v6, "\n"

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 89
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 90
    const-string v5, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, rruleStrs:[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Landroid/pim/EventRecurrence;

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 92
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    array-length v5, v4

    if-ge v2, v5, :cond_34

    .line 93
    new-instance v3, Landroid/pim/EventRecurrence;

    invoke-direct {v3}, Landroid/pim/EventRecurrence;-><init>()V

    .line 94
    .local v3, rrule:Landroid/pim/EventRecurrence;
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    aput-object v3, v5, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 99
    .end local v2           #i:I
    .end local v3           #rrule:Landroid/pim/EventRecurrence;
    .end local v4           #rruleStrs:[Ljava/lang/String;
    :cond_34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 100
    invoke-static {p2}, Landroid/pim/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 103
    :cond_40
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 104
    const-string v5, "\n"

    invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, exruleStrs:[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Landroid/pim/EventRecurrence;

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 106
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_52
    array-length v5, v1

    if-ge v2, v5, :cond_64

    .line 107
    new-instance v0, Landroid/pim/EventRecurrence;

    invoke-direct {v0}, Landroid/pim/EventRecurrence;-><init>()V

    .line 108
    .local v0, exrule:Landroid/pim/EventRecurrence;
    invoke-virtual {v0, p3}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    aput-object v0, v5, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 113
    .end local v0           #exrule:Landroid/pim/EventRecurrence;
    .end local v1           #exruleStrs:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_64
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 114
    invoke-static {p4}, Landroid/pim/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 117
    :cond_70
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .registers 11
    .parameter "recurrence"

    .prologue
    const/4 v9, 0x0

    .line 136
    const-string v5, "UTC"

    .line 137
    .local v5, tz:Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 138
    .local v6, tzidx:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_16

    .line 139
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 140
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 142
    :cond_16
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 143
    .local v4, time:Landroid/text/format/Time;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, rawDates:[Ljava/lang/String;
    array-length v2, v3

    .line 145
    .local v2, n:I
    new-array v0, v2, [J

    .line 146
    .local v0, dates:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v2, :cond_37

    .line 148
    aget-object v7, v3, v1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 149
    invoke-virtual {v4, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    aput-wide v7, v0, v1

    .line 150
    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 152
    :cond_37
    return-object v0
.end method

.method public static populateComponent(Landroid/database/Cursor;Landroid/pim/ICalendar$Component;)Z
    .registers 14
    .parameter "cursor"
    .parameter "component"

    .prologue
    .line 229
    const-string v0, "dtstart"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 230
    .local v3, dtstartColumn:I
    const-string v0, "duration"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 231
    .local v4, durationColumn:I
    const-string v0, "eventTimezone"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 232
    .local v9, tzidColumn:I
    const-string v0, "rrule"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 233
    .local v8, rruleColumn:I
    const-string v0, "rdate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 234
    .local v7, rdateColumn:I
    const-string v0, "exrule"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 235
    .local v6, exruleColumn:I
    const-string v0, "exdate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 236
    .local v5, exdateColumn:I
    const-string v0, "allDay"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, allDayColumn:I
    const-wide/16 v1, -0x1

    .line 240
    .local v1, dtstart:J
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 241
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 243
    :cond_3c
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, duration:Ljava/lang/String;
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, tzid:Ljava/lang/String;
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, rruleStr:Ljava/lang/String;
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, rdateStr:Ljava/lang/String;
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, exruleStr:Ljava/lang/String;
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, exdateStr:Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .end local p0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_76

    .end local v0           #allDayColumn:I
    const/4 p0, 0x1

    .line 251
    .local p0, allDay:Z
    :goto_5c
    const-wide/16 v10, -0x1

    cmp-long v0, v1, v10

    if-eqz v0, :cond_74

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 256
    :cond_74
    const/4 p0, 0x0

    .line 292
    .end local v1           #dtstart:J
    .end local v3           #dtstartColumn:I
    .end local v9           #tzid:Ljava/lang/String;
    .end local p0           #allDay:Z
    :goto_75
    return p0

    .line 249
    .restart local v1       #dtstart:J
    .restart local v3       #dtstartColumn:I
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_76
    const/4 p0, 0x0

    goto :goto_5c

    .line 259
    .restart local p0       #allDay:Z
    :cond_78
    new-instance v0, Landroid/pim/ICalendar$Property;

    const-string v3, "DTSTART"

    .end local v3           #dtstartColumn:I
    invoke-direct {v0, v3}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, dtstartProp:Landroid/pim/ICalendar$Property;
    const/4 v3, 0x0

    .line 261
    .local v3, dtstartTime:Landroid/text/format/Time;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v3           #dtstartTime:Landroid/text/format/Time;
    if-nez v3, :cond_e1

    .line 262
    if-nez p0, :cond_92

    .line 263
    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v10, "TZID"

    invoke-direct {v3, v10, v9}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 265
    :cond_92
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 271
    .end local v9           #tzid:Ljava/lang/String;
    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    :goto_97
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 274
    if-eqz p0, :cond_b4

    .line 275
    new-instance p0, Landroid/pim/ICalendar$Parameter;

    .end local p0           #allDay:Z
    const-string v1, "VALUE"

    .end local v1           #dtstart:J
    const-string v2, "DATE"

    invoke-direct {p0, v1, v2}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 276
    const/4 p0, 0x1

    iput-boolean p0, v3, Landroid/text/format/Time;->allDay:Z

    .line 277
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->hour:I

    .line 278
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->minute:I

    .line 279
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->second:I

    .line 282
    :cond_b4
    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 284
    new-instance p0, Landroid/pim/ICalendar$Property;

    const-string v0, "DURATION"

    .end local v0           #dtstartProp:Landroid/pim/ICalendar$Property;
    invoke-direct {p0, v0}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 285
    .local p0, durationProp:Landroid/pim/ICalendar$Property;
    invoke-virtual {p0, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1, p0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 288
    const-string p0, "RRULE"

    .end local p0           #durationProp:Landroid/pim/ICalendar$Property;
    invoke-static {p1, p0, v8}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string p0, "RDATE"

    invoke-static {p1, p0, v7}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string p0, "EXRULE"

    invoke-static {p1, p0, v6}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string p0, "EXDATE"

    invoke-static {p1, p0, v5}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 p0, 0x1

    goto :goto_75

    .line 268
    .end local v3           #dtstartTime:Landroid/text/format/Time;
    .restart local v0       #dtstartProp:Landroid/pim/ICalendar$Property;
    .restart local v1       #dtstart:J
    .restart local v9       #tzid:Ljava/lang/String;
    .local p0, allDay:Z
    :cond_e1
    new-instance v3, Landroid/text/format/Time;

    const-string v9, "UTC"

    .end local v9           #tzid:Ljava/lang/String;
    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    goto :goto_97
.end method

.method public static populateContentValues(Landroid/pim/ICalendar$Component;Landroid/content/ContentValues;)Z
    .registers 14
    .parameter "component"
    .parameter "values"

    .prologue
    .line 168
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 170
    .local v0, dtstartProperty:Landroid/pim/ICalendar$Property;
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, dtstart:Ljava/lang/String;
    const-string v2, "TZID"

    invoke-virtual {v0, v2}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .line 174
    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-nez v0, :cond_82

    const/4 v2, 0x0

    move-object v3, v2

    .line 175
    .local v3, tzid:Ljava/lang/String;
    :goto_14
    new-instance v5, Landroid/text/format/Time;

    if-nez v0, :cond_86

    const-string v0, "UTC"

    .end local v0           #tzidParam:Landroid/pim/ICalendar$Parameter;
    :goto_1a
    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 176
    .local v5, start:Landroid/text/format/Time;
    invoke-virtual {v5, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v2

    .line 177
    .local v2, inUtc:Z
    iget-boolean v0, v5, Landroid/text/format/Time;->allDay:Z

    .line 179
    .local v0, allDay:Z
    if-eqz v2, :cond_ee

    .line 180
    const-string v2, "UTC"

    .end local v3           #tzid:Ljava/lang/String;
    .local v2, tzid:Ljava/lang/String;
    move-object v9, v2

    .line 183
    .end local v2           #tzid:Ljava/lang/String;
    .local v9, tzid:Ljava/lang/String;
    :goto_28
    invoke-static {v5, p0}, Landroid/pim/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Landroid/pim/ICalendar$Component;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, duration:Ljava/lang/String;
    const-string v3, "RRULE"

    invoke-static {p0, v3}, Landroid/pim/RecurrenceSet;->flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, rrule:Ljava/lang/String;
    const-string v3, "RDATE"

    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v3

    invoke-static {v3}, Landroid/pim/RecurrenceSet;->extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, rdate:Ljava/lang/String;
    const-string v3, "EXRULE"

    invoke-static {p0, v3}, Landroid/pim/RecurrenceSet;->flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, exrule:Ljava/lang/String;
    const-string v3, "EXDATE"

    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v3

    invoke-static {v3}, Landroid/pim/RecurrenceSet;->extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, exdate:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #dtstart:Ljava/lang/String;
    if-nez v1, :cond_64

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 194
    :cond_64
    const-string p1, "CalendarProvider"

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #allDay:Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recurrence missing DTSTART, DTEND/DURATION, or RRULE/RDATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 p0, 0x0

    .line 223
    .end local v5           #start:Landroid/text/format/Time;
    :goto_81
    return p0

    .line 174
    .end local v2           #duration:Ljava/lang/String;
    .end local v3           #exdate:Ljava/lang/String;
    .end local v4           #exrule:Ljava/lang/String;
    .end local v7           #rdate:Ljava/lang/String;
    .end local v8           #rrule:Ljava/lang/String;
    .end local v9           #tzid:Ljava/lang/String;
    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    .restart local v1       #dtstart:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_82
    iget-object v2, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object v3, v2

    goto :goto_14

    .local v3, tzid:Ljava/lang/String;
    :cond_86
    move-object v0, v3

    .line 175
    goto :goto_1a

    .line 201
    .end local v1           #dtstart:Ljava/lang/String;
    .local v0, allDay:Z
    .restart local v2       #duration:Ljava/lang/String;
    .local v3, exdate:Ljava/lang/String;
    .restart local v4       #exrule:Ljava/lang/String;
    .restart local v5       #start:Landroid/text/format/Time;
    .restart local v7       #rdate:Ljava/lang/String;
    .restart local v8       #rrule:Ljava/lang/String;
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_88
    if-eqz v0, :cond_8e

    .line 205
    const-string v1, "UTC"

    iput-object v1, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 207
    :cond_8e
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 208
    .local v5, millis:J
    const-string v1, "dtstart"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-wide/16 v10, -0x1

    cmp-long v1, v5, v10

    if-nez v1, :cond_c0

    .line 211
    const-string p1, "CalendarProvider"

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #allDay:Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTSTART is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 p0, 0x0

    goto :goto_81

    .line 216
    .restart local v0       #allDay:Z
    .restart local p0
    .restart local p1
    :cond_c0
    const-string p0, "rrule"

    .end local p0
    invoke-virtual {p1, p0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string p0, "rdate"

    invoke-virtual {p1, p0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string p0, "exrule"

    invoke-virtual {p1, p0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string p0, "exdate"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string p0, "eventTimezone"

    invoke-virtual {p1, p0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string p0, "duration"

    invoke-virtual {p1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string p0, "allDay"

    if-eqz v0, :cond_ec

    const/4 v0, 0x1

    .end local v0           #allDay:Z
    :goto_e3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const/4 p0, 0x1

    goto :goto_81

    .line 222
    .restart local v0       #allDay:Z
    :cond_ec
    const/4 v0, 0x0

    goto :goto_e3

    .end local v4           #exrule:Ljava/lang/String;
    .end local v7           #rdate:Ljava/lang/String;
    .end local v8           #rrule:Ljava/lang/String;
    .end local v9           #tzid:Ljava/lang/String;
    .restart local v1       #dtstart:Ljava/lang/String;
    .local v2, inUtc:Z
    .local v3, tzid:Ljava/lang/String;
    .local v5, start:Landroid/text/format/Time;
    .restart local p0
    :cond_ee
    move-object v9, v3

    .end local v3           #tzid:Ljava/lang/String;
    .restart local v9       #tzid:Ljava/lang/String;
    goto/16 :goto_28
.end method


# virtual methods
.method public hasRecurrence()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
