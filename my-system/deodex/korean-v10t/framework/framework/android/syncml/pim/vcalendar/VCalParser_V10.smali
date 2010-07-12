.class public Landroid/syncml/pim/vcalendar/VCalParser_V10;
.super Landroid/syncml/pim/VParser;
.source "VCalParser_V10.java"


# static fields
.field private static final mEscAllowedProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup1:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEvtPropNameGroup2:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialValueSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mValueCAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueCLASS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueRES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValueSTAT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ATTACH"

    aput-object v2, v1, v4

    const-string v2, "ATTENDEE"

    aput-object v2, v1, v5

    const-string v2, "DCREATED"

    aput-object v2, v1, v6

    const-string v2, "COMPLETED"

    aput-object v2, v1, v7

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DUE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DTEND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "EXRULE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "LAST-MODIFIED"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "RNUM"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PRIORITY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RELATED-TO"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "RRULE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "SEQUENCE"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTSTART"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "SUMMARY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "TRANSP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CLASS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "STATUS"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AALARM"

    aput-object v2, v1, v4

    const-string v2, "CATEGORIES"

    aput-object v2, v1, v5

    const-string v2, "DALARM"

    aput-object v2, v1, v6

    const-string v2, "EXDATE"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RDATE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "RESOURCES"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "APPOINTMENT"

    aput-object v2, v1, v4

    const-string v2, "BUSINESS"

    aput-object v2, v1, v5

    const-string v2, "EDUCATION"

    aput-object v2, v1, v6

    const-string v2, "HOLIDAY"

    aput-object v2, v1, v7

    const-string v2, "MEETING"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "MISCELLANEOUS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PERSONAL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PHONE CALL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "SICK DAY"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "SPECIAL OCCASION"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TRAVEL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "VACATION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "PUBLIC"

    aput-object v2, v1, v4

    const-string v2, "PRIVATE"

    aput-object v2, v1, v5

    const-string v2, "CONFIDENTIAL"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CATERING"

    aput-object v2, v1, v4

    const-string v2, "CHAIRS"

    aput-object v2, v1, v5

    const-string v2, "EASEL"

    aput-object v2, v1, v6

    const-string v2, "PROJECTOR"

    aput-object v2, v1, v7

    const-string v2, "VCR"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "VEHICLE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ACCEPTED"

    aput-object v2, v1, v4

    const-string v2, "NEEDS ACTION"

    aput-object v2, v1, v5

    const-string v2, "SENT"

    aput-object v2, v1, v6

    const-string v2, "TENTATIVE"

    aput-object v2, v1, v7

    const-string v2, "CONFIRMED"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "DECLINED"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "COMPLETED"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "DELEGATED"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DESCRIPTION"

    aput-object v2, v1, v4

    const-string v2, "SUMMARY"

    aput-object v2, v1, v5

    const-string v2, "AALARM"

    aput-object v2, v1, v6

    const-string v2, "DALARM"

    aput-object v2, v1, v7

    const-string v2, "MALARM"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "PALARM"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    .line 75
    sget-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    sget-object v2, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueCAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "CLASS"

    sget-object v2, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueCLASS:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "RESOURCES"

    sget-object v2, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueRES:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    const-string v1, "STATUS"

    sget-object v2, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mValueSTAT:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/syncml/pim/VParser;-><init>()V

    .line 82
    return-void
.end method

.method private exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "propName"
    .parameter "str"

    .prologue
    const-string v3, "\n\r\n"

    const-string v2, ""

    .line 1613
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    .line 1614
    :cond_8
    const/4 v1, 0x0

    .line 1626
    :goto_9
    return-object v1

    .line 1615
    :cond_a
    const-string v1, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1616
    :cond_1a
    const-string v1, ""

    move-object v1, v2

    goto :goto_9

    .line 1618
    :cond_1e
    sget-object v1, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mEscAllowedProps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    move-object v1, p2

    .line 1619
    goto :goto_9

    .line 1621
    :cond_28
    const-string v1, "\\\\"

    const-string v2, "\n\r\n"

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1622
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1623
    const-string v1, "\\:"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1624
    const-string v1, "\\,"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    const-string v1, "\n\r\n"

    const-string v1, "\\"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1626
    goto :goto_9
.end method

.method private parseCalentities(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 306
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 308
    .local v1, sum:I
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 309
    if-ne v2, v0, :cond_a

    .line 330
    :goto_9
    return v2

    .line 312
    :cond_a
    add-int/2addr p1, v0

    .line 313
    add-int/2addr v1, v0

    .line 317
    :goto_c
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v2, v0, :cond_15

    .line 318
    add-int/2addr p1, v0

    .line 319
    add-int/2addr v1, v0

    goto :goto_c

    .line 322
    :cond_15
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalentity(I)I

    move-result v0

    .line 323
    if-ne v2, v0, :cond_1d

    move v2, v1

    .line 330
    goto :goto_9

    .line 326
    :cond_1d
    add-int/2addr p1, v0

    .line 327
    add-int/2addr v1, v0

    goto :goto_c
.end method

.method private parseCalentity(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, ret:I
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseEvententity(I)I

    move-result v0

    .line 373
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 381
    :cond_9
    :goto_9
    return v1

    .line 377
    :cond_a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseTodoentity(I)I

    move-result v0

    .line 378
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 379
    goto :goto_9
.end method

.method private parseCalprop(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, ret:I
    const-string v1, "DAYLIGHT"

    invoke-direct {p0, p1, v1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 340
    if-eq v2, v0, :cond_c

    move v1, v0

    .line 363
    :goto_b
    return v1

    .line 344
    :cond_c
    const-string v1, "GEO"

    invoke-direct {p0, p1, v1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 345
    if-eq v2, v0, :cond_16

    move v1, v0

    .line 346
    goto :goto_b

    .line 349
    :cond_16
    const-string v1, "PRODID"

    invoke-direct {p0, p1, v1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 350
    if-eq v2, v0, :cond_20

    move v1, v0

    .line 351
    goto :goto_b

    .line 354
    :cond_20
    const-string v1, "TZ"

    invoke-direct {p0, p1, v1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprop0(ILjava/lang/String;)I

    move-result v0

    .line 355
    if-eq v2, v0, :cond_2a

    move v1, v0

    .line 356
    goto :goto_b

    .line 359
    :cond_2a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprop1(I)I

    move-result v0

    .line 360
    if-eq v2, v0, :cond_32

    move v1, v0

    .line 361
    goto :goto_b

    :cond_32
    move v1, v2

    .line 363
    goto :goto_b
.end method

.method private parseCalprop0(ILjava/lang/String;)I
    .registers 10
    .parameter "offset"
    .parameter "propName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 389
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 391
    .local v1, start:I
    invoke-virtual {p0, p1, p2, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 392
    if-ne v5, v0, :cond_d

    move v4, v5

    .line 433
    :goto_c
    return v4

    .line 395
    :cond_d
    add-int/2addr p1, v0

    .line 396
    add-int/2addr v2, v0

    .line 397
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_18

    .line 398
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v4, p2}, Landroid/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 401
    :cond_18
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    .line 402
    if-eq v5, v0, :cond_20

    .line 403
    add-int/2addr p1, v0

    .line 404
    add-int/2addr v2, v0

    .line 407
    :cond_20
    const-string v4, ":"

    invoke-virtual {p0, p1, v4, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 408
    if-ne v5, v0, :cond_2a

    move v4, v5

    .line 409
    goto :goto_c

    .line 411
    :cond_2a
    add-int/2addr p1, v0

    .line 412
    add-int/2addr v2, v0

    .line 414
    move v1, p1

    .line 415
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v0

    .line 416
    if-ne v5, v0, :cond_35

    move v4, v5

    .line 417
    goto :goto_c

    .line 419
    :cond_35
    add-int/2addr p1, v0

    .line 420
    add-int/2addr v2, v0

    .line 421
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_4e

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v3, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v4, v3}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 427
    .end local v3           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4e
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 428
    if-ne v5, v0, :cond_56

    move v4, v5

    .line 429
    goto :goto_c

    .line 431
    :cond_56
    add-int/2addr v2, v0

    move v4, v2

    .line 433
    goto :goto_c
.end method

.method private parseCalprop1(I)I
    .registers 11
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v8, "VERSION"

    const-string v7, "1.0"

    .line 440
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 442
    .local v1, sum:I
    const-string v3, "VERSION"

    invoke-virtual {p0, p1, v8, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 443
    if-ne v5, v0, :cond_12

    move v3, v5

    .line 482
    :goto_11
    return v3

    .line 446
    :cond_12
    add-int/2addr p1, v0

    .line 447
    add-int/2addr v1, v0

    .line 448
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_1f

    .line 449
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v4, "VERSION"

    invoke-interface {v3, v8}, Landroid/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 452
    :cond_1f
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v0

    .line 453
    if-eq v5, v0, :cond_27

    .line 454
    add-int/2addr p1, v0

    .line 455
    add-int/2addr v1, v0

    .line 458
    :cond_27
    const-string v3, ":"

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 459
    if-ne v5, v0, :cond_31

    move v3, v5

    .line 460
    goto :goto_11

    .line 462
    :cond_31
    add-int/2addr p1, v0

    .line 463
    add-int/2addr v1, v0

    .line 465
    const-string v3, "1.0"

    invoke-virtual {p0, p1, v7, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 466
    if-ne v5, v0, :cond_3d

    move v3, v5

    .line 467
    goto :goto_11

    .line 469
    :cond_3d
    add-int/2addr p1, v0

    .line 470
    add-int/2addr v1, v0

    .line 471
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_52

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v2, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "1.0"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v3, v2}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 476
    .end local v2           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_52
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 477
    if-ne v5, v0, :cond_5a

    move v3, v5

    .line 478
    goto :goto_11

    .line 480
    :cond_5a
    add-int/2addr v1, v0

    move v3, v1

    .line 482
    goto :goto_11
.end method

.method private parseCalprops(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 263
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 265
    .local v1, sum:I
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_c

    .line 266
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->startProperty()V

    .line 268
    :cond_c
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 269
    if-ne v3, v0, :cond_14

    move v2, v3

    .line 299
    :goto_13
    return v2

    .line 272
    :cond_14
    add-int/2addr p1, v0

    .line 273
    add-int/2addr v1, v0

    .line 274
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_1f

    .line 275
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->endProperty()V

    .line 280
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v3, v0, :cond_28

    .line 281
    add-int/2addr p1, v0

    .line 282
    add-int/2addr v1, v0

    goto :goto_1f

    .line 285
    :cond_28
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_31

    .line 286
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->startProperty()V

    .line 288
    :cond_31
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprop(I)I

    move-result v0

    .line 289
    if-ne v3, v0, :cond_39

    move v2, v1

    .line 299
    goto :goto_13

    .line 292
    :cond_39
    add-int/2addr p1, v0

    .line 293
    add-int/2addr v1, v0

    .line 294
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_1f

    .line 295
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->endProperty()V

    goto :goto_1f
.end method

.method private parseEntprop(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, ret:I
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseEntprop0(I)I

    move-result v0

    .line 797
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 805
    :cond_9
    :goto_9
    return v1

    .line 801
    :cond_a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseEntprop1(I)I

    move-result v0

    .line 802
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 803
    goto :goto_9
.end method

.method private parseEntprop0(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, -0x1

    .line 945
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    const/4 v2, 0x0

    .line 947
    .local v2, start:I
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 948
    add-int/2addr p1, v1

    .line 949
    add-int/2addr v3, v1

    .line 951
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, propName:Ljava/lang/String;
    sget-object v5, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup1:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 953
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v5

    if-ne v7, v5, :cond_22

    move v5, v7

    .line 998
    :goto_21
    return v5

    .line 956
    :cond_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 957
    add-int/2addr p1, v1

    .line 958
    add-int/2addr v3, v1

    .line 959
    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v5, :cond_31

    .line 960
    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v5, v0}, Landroid/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 963
    :cond_31
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v1

    .line 964
    if-eq v7, v1, :cond_39

    .line 965
    add-int/2addr p1, v1

    .line 966
    add-int/2addr v3, v1

    .line 969
    :cond_39
    const-string v5, ":"

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v5, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 970
    if-ne v7, v1, :cond_44

    move v5, v7

    .line 971
    goto :goto_21

    .line 973
    :cond_44
    add-int/2addr p1, v1

    .line 974
    add-int/2addr v3, v1

    .line 976
    move v2, p1

    .line 977
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v1

    .line 978
    if-ne v7, v1, :cond_4f

    move v5, v7

    .line 979
    goto :goto_21

    .line 981
    :cond_4f
    add-int/2addr p1, v1

    .line 982
    add-int/2addr v3, v1

    .line 983
    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v5, :cond_74

    .line 984
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v5, v4}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 989
    invoke-direct {p0, v0, v4}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v5

    if-ne v7, v5, :cond_74

    move v5, v7

    .line 990
    goto :goto_21

    .line 993
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_74
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v1

    .line 994
    if-ne v7, v1, :cond_7c

    move v5, v7

    .line 995
    goto :goto_21

    .line 997
    :cond_7c
    add-int/2addr v3, v1

    move v5, v3

    .line 998
    goto :goto_21
.end method

.method private parseEntprop1(I)I
    .registers 15
    .parameter "offset"

    .prologue
    const/4 v12, -0x1

    .line 1007
    const/4 v5, 0x0

    .local v5, ret:I
    const/4 v8, 0x0

    .line 1009
    .local v8, sum:I
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v5

    .line 1010
    add-int/2addr p1, v5

    .line 1011
    add-int/2addr v8, v5

    .line 1013
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->getWord(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1014
    .local v4, propName:Ljava/lang/String;
    sget-object v10, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mEvtPropNameGroup2:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    move v10, v12

    .line 1074
    :goto_1a
    return v10

    .line 1017
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1018
    add-int/2addr p1, v5

    .line 1019
    add-int/2addr v8, v5

    .line 1020
    iget-object v10, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v10, :cond_2a

    .line 1021
    iget-object v10, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v10, v4}, Landroid/syncml/pim/VBuilder;->propertyName(Ljava/lang/String;)V

    .line 1024
    :cond_2a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParams(I)I

    move-result v5

    .line 1025
    if-eq v12, v5, :cond_32

    .line 1026
    add-int/2addr p1, v5

    .line 1027
    add-int/2addr v8, v5

    .line 1030
    :cond_32
    const-string v10, ":"

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v10, v11}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v5

    .line 1031
    if-ne v12, v5, :cond_3d

    move v10, v12

    .line 1032
    goto :goto_1a

    .line 1034
    :cond_3d
    add-int/2addr p1, v5

    .line 1035
    add-int/2addr v8, v5

    .line 1037
    move v7, p1

    .line 1038
    .local v7, start:I
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseValue(I)I

    move-result v5

    .line 1039
    if-ne v12, v5, :cond_48

    move v10, v12

    .line 1040
    goto :goto_1a

    .line 1042
    :cond_48
    add-int/2addr p1, v5

    .line 1043
    add-int/2addr v8, v5

    .line 1045
    iget-object v10, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v10, :cond_9e

    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, end:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v9, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "([^;\\\\]*(\\\\[\\\\;:,])*[^;\\\\]*)(;?)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1050
    .local v3, p:Ljava/util/regex/Pattern;
    iget-object v10, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v10, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1051
    .local v2, m:Ljava/util/regex/Matcher;
    :cond_64
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_90

    .line 1052
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->exportEntpropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1053
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 1055
    add-int v10, v7, v0

    if-ne p1, v10, :cond_64

    .line 1056
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, endValue:Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_90

    .line 1058
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    .end local v1           #endValue:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    :cond_90
    iget-object v10, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v10, v9}, Landroid/syncml/pim/VBuilder;->propertyValues(Ljava/util/List;)V

    .line 1065
    invoke-direct {p0, v4, v9}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v10

    if-ne v12, v10, :cond_9e

    move v10, v12

    .line 1066
    goto/16 :goto_1a

    .line 1069
    .end local v0           #end:I
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v9           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9e
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v5

    .line 1070
    if-ne v12, v5, :cond_a7

    move v10, v12

    .line 1071
    goto/16 :goto_1a

    .line 1073
    :cond_a7
    add-int/2addr v8, v5

    move v10, v8

    .line 1074
    goto/16 :goto_1a
.end method

.method private parseEntprops(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 754
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 755
    .local v1, sum:I
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_c

    .line 756
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->startProperty()V

    .line 759
    :cond_c
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 760
    if-ne v3, v0, :cond_14

    move v2, v3

    .line 788
    :goto_13
    return v2

    .line 763
    :cond_14
    add-int/2addr p1, v0

    .line 764
    add-int/2addr v1, v0

    .line 765
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_1f

    .line 766
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->endProperty()V

    .line 770
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v3, v0, :cond_28

    .line 771
    add-int/2addr p1, v0

    .line 772
    add-int/2addr v1, v0

    goto :goto_1f

    .line 774
    :cond_28
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_31

    .line 775
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->startProperty()V

    .line 778
    :cond_31
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseEntprop(I)I

    move-result v0

    .line 779
    if-ne v3, v0, :cond_39

    move v2, v1

    .line 788
    goto :goto_13

    .line 782
    :cond_39
    add-int/2addr p1, v0

    .line 783
    add-int/2addr v1, v0

    .line 784
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_1f

    .line 785
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->endProperty()V

    goto :goto_1f
.end method

.method private parseEvententity(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v7, ":"

    const-string v6, "VEVENT"

    .line 490
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 492
    .local v1, sum:I
    const-string v2, "BEGIN"

    invoke-virtual {p0, p1, v2, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 493
    if-ne v4, v0, :cond_12

    move v2, v4

    .line 617
    :goto_11
    return v2

    .line 496
    :cond_12
    add-int/2addr p1, v0

    .line 497
    add-int/2addr v1, v0

    .line 500
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 501
    add-int/2addr p1, v0

    .line 502
    add-int/2addr v1, v0

    .line 505
    const-string v2, ":"

    invoke-virtual {p0, p1, v7, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 506
    if-ne v4, v0, :cond_24

    move v2, v4

    .line 507
    goto :goto_11

    .line 509
    :cond_24
    add-int/2addr p1, v0

    .line 510
    add-int/2addr v1, v0

    .line 513
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 514
    add-int/2addr p1, v0

    .line 515
    add-int/2addr v1, v0

    .line 518
    const-string v2, "VEVENT"

    invoke-virtual {p0, p1, v6, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 519
    if-ne v4, v0, :cond_36

    move v2, v4

    .line 520
    goto :goto_11

    .line 522
    :cond_36
    add-int/2addr p1, v0

    .line 523
    add-int/2addr v1, v0

    .line 524
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_43

    .line 525
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v3, "VEVENT"

    invoke-interface {v2, v6}, Landroid/syncml/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 529
    :cond_43
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 530
    add-int/2addr p1, v0

    .line 531
    add-int/2addr v1, v0

    .line 534
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 535
    if-ne v4, v0, :cond_51

    move v2, v4

    .line 536
    goto :goto_11

    .line 538
    :cond_51
    add-int/2addr p1, v0

    .line 539
    add-int/2addr v1, v0

    .line 540
    :goto_53
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_5c

    .line 541
    add-int/2addr p1, v0

    .line 542
    add-int/2addr v1, v0

    goto :goto_53

    .line 545
    :cond_5c
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 546
    if-ne v4, v0, :cond_64

    move v2, v4

    .line 547
    goto :goto_11

    .line 549
    :cond_64
    add-int/2addr p1, v0

    .line 550
    add-int/2addr v1, v0

    .line 553
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 554
    add-int/2addr p1, v0

    .line 555
    add-int/2addr v1, v0

    .line 558
    :goto_6c
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_75

    .line 559
    add-int/2addr p1, v0

    .line 560
    add-int/2addr v1, v0

    goto :goto_6c

    .line 564
    :cond_75
    const-string v2, "END"

    invoke-virtual {p0, p1, v2, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 565
    if-ne v4, v0, :cond_7f

    move v2, v4

    .line 566
    goto :goto_11

    .line 568
    :cond_7f
    add-int/2addr p1, v0

    .line 569
    add-int/2addr v1, v0

    .line 572
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 573
    add-int/2addr p1, v0

    .line 574
    add-int/2addr v1, v0

    .line 577
    const-string v2, ":"

    invoke-virtual {p0, p1, v7, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 578
    if-ne v4, v0, :cond_91

    move v2, v4

    .line 579
    goto :goto_11

    .line 581
    :cond_91
    add-int/2addr p1, v0

    .line 582
    add-int/2addr v1, v0

    .line 585
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 586
    add-int/2addr p1, v0

    .line 587
    add-int/2addr v1, v0

    .line 590
    const-string v2, "VEVENT"

    invoke-virtual {p0, p1, v6, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 591
    if-ne v4, v0, :cond_a4

    move v2, v4

    .line 592
    goto/16 :goto_11

    .line 594
    :cond_a4
    add-int/2addr p1, v0

    .line 595
    add-int/2addr v1, v0

    .line 596
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_af

    .line 597
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->endRecord()V

    .line 601
    :cond_af
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 602
    add-int/2addr p1, v0

    .line 603
    add-int/2addr v1, v0

    .line 606
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 607
    if-ne v4, v0, :cond_be

    move v2, v4

    .line 608
    goto/16 :goto_11

    .line 610
    :cond_be
    add-int/2addr p1, v0

    .line 611
    add-int/2addr v1, v0

    .line 612
    :goto_c0
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_c9

    .line 613
    add-int/2addr p1, v0

    .line 614
    add-int/2addr v1, v0

    goto :goto_c0

    :cond_c9
    move v2, v1

    .line 617
    goto/16 :goto_11
.end method

.method private parseKnownType(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1454
    const/4 v0, 0x0

    .line 1456
    .local v0, ret:I
    const-string v1, "WAVE"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1457
    if-eq v2, v0, :cond_d

    move v1, v0

    .line 1476
    :goto_c
    return v1

    .line 1461
    :cond_d
    const-string v1, "PCM"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1462
    if-eq v2, v0, :cond_17

    move v1, v0

    .line 1463
    goto :goto_c

    .line 1466
    :cond_17
    const-string v1, "VCARD"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1467
    if-eq v2, v0, :cond_21

    move v1, v0

    .line 1468
    goto :goto_c

    .line 1471
    :cond_21
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1472
    if-eq v2, v0, :cond_29

    move v1, v0

    .line 1473
    goto :goto_c

    :cond_29
    move v1, v2

    .line 1476
    goto :goto_c
.end method

.method private parseParam(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 882
    const/4 v0, 0x0

    .line 884
    .local v0, ret:I
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam0(I)I

    move-result v0

    .line 885
    if-eq v2, v0, :cond_a

    move v2, v0

    .line 935
    :cond_9
    :goto_9
    return v2

    .line 889
    :cond_a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam1(I)I

    move-result v0

    .line 890
    if-eq v2, v0, :cond_12

    move v2, v0

    .line 891
    goto :goto_9

    .line 894
    :cond_12
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam2(I)I

    move-result v0

    .line 895
    if-eq v2, v0, :cond_1a

    move v2, v0

    .line 896
    goto :goto_9

    .line 899
    :cond_1a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam3(I)I

    move-result v0

    .line 900
    if-eq v2, v0, :cond_22

    move v2, v0

    .line 901
    goto :goto_9

    .line 904
    :cond_22
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam4(I)I

    move-result v0

    .line 905
    if-eq v2, v0, :cond_2a

    move v2, v0

    .line 906
    goto :goto_9

    .line 909
    :cond_2a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam5(I)I

    move-result v0

    .line 910
    if-eq v2, v0, :cond_32

    move v2, v0

    .line 911
    goto :goto_9

    .line 914
    :cond_32
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam6(I)I

    move-result v0

    .line 915
    if-eq v2, v0, :cond_3a

    move v2, v0

    .line 916
    goto :goto_9

    .line 919
    :cond_3a
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam7(I)I

    move-result v0

    .line 920
    if-eq v2, v0, :cond_42

    move v2, v0

    .line 921
    goto :goto_9

    .line 924
    :cond_42
    move v1, p1

    .line 925
    .local v1, start:I
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 926
    if-eq v2, v0, :cond_9

    .line 929
    add-int/2addr p1, v0

    .line 930
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_5f

    .line 931
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 932
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5f
    move v2, v0

    .line 935
    goto :goto_9
.end method

.method private parseParam0(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, -0x1

    .line 1081
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1083
    .local v1, start:I
    const-string v3, "TYPE"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1084
    if-ne v5, v0, :cond_f

    move v3, v5

    .line 1118
    :goto_e
    return v3

    .line 1087
    :cond_f
    add-int/2addr p1, v0

    .line 1088
    add-int/2addr v2, v0

    .line 1089
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_20

    .line 1090
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1093
    :cond_20
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1094
    add-int/2addr p1, v0

    .line 1095
    add-int/2addr v2, v0

    .line 1097
    const-string v3, "="

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1098
    if-ne v5, v0, :cond_31

    move v3, v5

    .line 1099
    goto :goto_e

    .line 1101
    :cond_31
    add-int/2addr p1, v0

    .line 1102
    add-int/2addr v2, v0

    .line 1104
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1105
    add-int/2addr p1, v0

    .line 1106
    add-int/2addr v2, v0

    .line 1108
    move v1, p1

    .line 1109
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parsePtypeval(I)I

    move-result v0

    .line 1110
    if-ne v5, v0, :cond_42

    move v3, v5

    .line 1111
    goto :goto_e

    .line 1113
    :cond_42
    add-int/2addr p1, v0

    .line 1114
    add-int/2addr v2, v0

    .line 1115
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_53

    .line 1116
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_53
    move v3, v2

    .line 1118
    goto :goto_e
.end method

.method private parseParam1(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1125
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1126
    .local v2, start:I
    const/4 v0, 0x0

    .line 1128
    .local v0, flag:Z
    const-string v4, "VALUE"

    invoke-virtual {p0, p1, v4, v7}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1129
    if-eq v6, v1, :cond_11

    .line 1130
    add-int/2addr p1, v1

    .line 1131
    add-int/2addr v3, v1

    .line 1132
    const/4 v0, 0x1

    .line 1134
    :cond_11
    if-ne v0, v7, :cond_22

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_22

    .line 1135
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1138
    :cond_22
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1139
    add-int/2addr p1, v1

    .line 1140
    add-int/2addr v3, v1

    .line 1142
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v7}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1143
    if-eq v6, v1, :cond_45

    .line 1144
    if-nez v0, :cond_34

    move v4, v6

    .line 1170
    :goto_33
    return v4

    .line 1147
    :cond_34
    add-int/2addr p1, v1

    .line 1148
    add-int/2addr v3, v1

    .line 1155
    :cond_36
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1156
    add-int/2addr p1, v1

    .line 1157
    add-int/2addr v3, v1

    .line 1159
    move v2, p1

    .line 1160
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parsePValueVal(I)I

    move-result v1

    .line 1161
    if-ne v6, v1, :cond_49

    move v4, v6

    .line 1162
    goto :goto_33

    .line 1150
    :cond_45
    if-ne v0, v7, :cond_36

    move v4, v6

    .line 1151
    goto :goto_33

    .line 1164
    :cond_49
    add-int/2addr p1, v1

    .line 1165
    add-int/2addr v3, v1

    .line 1166
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_5a

    .line 1167
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5a
    move v4, v3

    .line 1170
    goto :goto_33
.end method

.method private parseParam2(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1175
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v3, 0x0

    .local v3, sum:I
    move v2, p1

    .line 1176
    .local v2, start:I
    const/4 v0, 0x0

    .line 1178
    .local v0, flag:Z
    const-string v4, "ENCODING"

    invoke-virtual {p0, p1, v4, v7}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1179
    if-eq v6, v1, :cond_11

    .line 1180
    add-int/2addr p1, v1

    .line 1181
    add-int/2addr v3, v1

    .line 1182
    const/4 v0, 0x1

    .line 1184
    :cond_11
    if-ne v0, v7, :cond_22

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_22

    .line 1185
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1188
    :cond_22
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1189
    add-int/2addr p1, v1

    .line 1190
    add-int/2addr v3, v1

    .line 1192
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v7}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 1193
    if-eq v6, v1, :cond_45

    .line 1194
    if-nez v0, :cond_34

    move v4, v6

    .line 1220
    :goto_33
    return v4

    .line 1197
    :cond_34
    add-int/2addr p1, v1

    .line 1198
    add-int/2addr v3, v1

    .line 1205
    :cond_36
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 1206
    add-int/2addr p1, v1

    .line 1207
    add-int/2addr v3, v1

    .line 1209
    move v2, p1

    .line 1210
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parsePEncodingVal(I)I

    move-result v1

    .line 1211
    if-ne v6, v1, :cond_49

    move v4, v6

    .line 1212
    goto :goto_33

    .line 1200
    :cond_45
    if-ne v0, v7, :cond_36

    move v4, v6

    .line 1201
    goto :goto_33

    .line 1214
    :cond_49
    add-int/2addr p1, v1

    .line 1215
    add-int/2addr v3, v1

    .line 1216
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v4, :cond_5a

    .line 1217
    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v5, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_5a
    move v4, v3

    .line 1220
    goto :goto_33
.end method

.method private parseParam3(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1227
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1229
    .local v1, start:I
    const-string v3, "CHARSET"

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1230
    if-ne v5, v0, :cond_f

    move v3, v5

    .line 1265
    :goto_e
    return v3

    .line 1233
    :cond_f
    add-int/2addr p1, v0

    .line 1234
    add-int/2addr v2, v0

    .line 1235
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_20

    .line 1236
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1239
    :cond_20
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1240
    add-int/2addr p1, v0

    .line 1241
    add-int/2addr v2, v0

    .line 1243
    const-string v3, "="

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1244
    if-ne v5, v0, :cond_30

    move v3, v5

    .line 1245
    goto :goto_e

    .line 1247
    :cond_30
    add-int/2addr p1, v0

    .line 1248
    add-int/2addr v2, v0

    .line 1250
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1251
    add-int/2addr p1, v0

    .line 1252
    add-int/2addr v2, v0

    .line 1254
    move v1, p1

    .line 1255
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCharsetVal(I)I

    move-result v0

    .line 1256
    if-ne v5, v0, :cond_41

    move v3, v5

    .line 1257
    goto :goto_e

    .line 1259
    :cond_41
    add-int/2addr p1, v0

    .line 1260
    add-int/2addr v2, v0

    .line 1261
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_52

    .line 1262
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_52
    move v3, v2

    .line 1265
    goto :goto_e
.end method

.method private parseParam4(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1272
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1274
    .local v1, start:I
    const-string v3, "LANGUAGE"

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1275
    if-ne v5, v0, :cond_f

    move v3, v5

    .line 1310
    :goto_e
    return v3

    .line 1278
    :cond_f
    add-int/2addr p1, v0

    .line 1279
    add-int/2addr v2, v0

    .line 1280
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_20

    .line 1281
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1284
    :cond_20
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1285
    add-int/2addr p1, v0

    .line 1286
    add-int/2addr v2, v0

    .line 1288
    const-string v3, "="

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1289
    if-ne v5, v0, :cond_30

    move v3, v5

    .line 1290
    goto :goto_e

    .line 1292
    :cond_30
    add-int/2addr p1, v0

    .line 1293
    add-int/2addr v2, v0

    .line 1295
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1296
    add-int/2addr p1, v0

    .line 1297
    add-int/2addr v2, v0

    .line 1299
    move v1, p1

    .line 1300
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseLangVal(I)I

    move-result v0

    .line 1301
    if-ne v5, v0, :cond_41

    move v3, v5

    .line 1302
    goto :goto_e

    .line 1304
    :cond_41
    add-int/2addr p1, v0

    .line 1305
    add-int/2addr v2, v0

    .line 1306
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_52

    .line 1307
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_52
    move v3, v2

    .line 1310
    goto :goto_e
.end method

.method private parseParam5(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1317
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1319
    .local v1, start:I
    const-string v3, "ROLE"

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1320
    if-ne v5, v0, :cond_f

    move v3, v5

    .line 1355
    :goto_e
    return v3

    .line 1323
    :cond_f
    add-int/2addr p1, v0

    .line 1324
    add-int/2addr v2, v0

    .line 1325
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_20

    .line 1326
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1329
    :cond_20
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1330
    add-int/2addr p1, v0

    .line 1331
    add-int/2addr v2, v0

    .line 1333
    const-string v3, "="

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1334
    if-ne v5, v0, :cond_30

    move v3, v5

    .line 1335
    goto :goto_e

    .line 1337
    :cond_30
    add-int/2addr p1, v0

    .line 1338
    add-int/2addr v2, v0

    .line 1340
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1341
    add-int/2addr p1, v0

    .line 1342
    add-int/2addr v2, v0

    .line 1344
    move v1, p1

    .line 1345
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseRoleVal(I)I

    move-result v0

    .line 1346
    if-ne v5, v0, :cond_41

    move v3, v5

    .line 1347
    goto :goto_e

    .line 1349
    :cond_41
    add-int/2addr p1, v0

    .line 1350
    add-int/2addr v2, v0

    .line 1351
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_52

    .line 1352
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_52
    move v3, v2

    .line 1355
    goto :goto_e
.end method

.method private parseParam6(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1362
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1364
    .local v1, start:I
    const-string v3, "STATUS"

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1365
    if-ne v5, v0, :cond_f

    move v3, v5

    .line 1400
    :goto_e
    return v3

    .line 1368
    :cond_f
    add-int/2addr p1, v0

    .line 1369
    add-int/2addr v2, v0

    .line 1370
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_20

    .line 1371
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1374
    :cond_20
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1375
    add-int/2addr p1, v0

    .line 1376
    add-int/2addr v2, v0

    .line 1378
    const-string v3, "="

    invoke-virtual {p0, p1, v3, v6}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1379
    if-ne v5, v0, :cond_30

    move v3, v5

    .line 1380
    goto :goto_e

    .line 1382
    :cond_30
    add-int/2addr p1, v0

    .line 1383
    add-int/2addr v2, v0

    .line 1385
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1386
    add-int/2addr p1, v0

    .line 1387
    add-int/2addr v2, v0

    .line 1389
    move v1, p1

    .line 1390
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseStatuVal(I)I

    move-result v0

    .line 1391
    if-ne v5, v0, :cond_41

    move v3, v5

    .line 1392
    goto :goto_e

    .line 1394
    :cond_41
    add-int/2addr p1, v0

    .line 1395
    add-int/2addr v2, v0

    .line 1396
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_52

    .line 1397
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_52
    move v3, v2

    .line 1400
    goto :goto_e
.end method

.method private parseParam7(I)I
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v5, -0x1

    .line 1408
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v2, 0x0

    .local v2, sum:I
    move v1, p1

    .line 1410
    .local v1, start:I
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1411
    if-ne v5, v0, :cond_c

    move v3, v5

    .line 1446
    :goto_b
    return v3

    .line 1414
    :cond_c
    add-int/2addr p1, v0

    .line 1415
    add-int/2addr v2, v0

    .line 1416
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_1d

    .line 1417
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamType(Ljava/lang/String;)V

    .line 1420
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1421
    add-int/2addr p1, v0

    .line 1422
    add-int/2addr v2, v0

    .line 1424
    const-string v3, "="

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1425
    if-ne v5, v0, :cond_2e

    move v3, v5

    .line 1426
    goto :goto_b

    .line 1428
    :cond_2e
    add-int/2addr p1, v0

    .line 1429
    add-int/2addr v2, v0

    .line 1431
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 1432
    add-int/2addr p1, v0

    .line 1433
    add-int/2addr v2, v0

    .line 1435
    move v1, p1

    .line 1436
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseWord(I)I

    move-result v0

    .line 1437
    if-ne v5, v0, :cond_3f

    move v3, v5

    .line 1438
    goto :goto_b

    .line 1440
    :cond_3f
    add-int/2addr p1, v0

    .line 1441
    add-int/2addr v2, v0

    .line 1442
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v3, :cond_50

    .line 1443
    iget-object v3, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    iget-object v4, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/syncml/pim/VBuilder;->propertyParamValue(Ljava/lang/String;)V

    :cond_50
    move v3, v2

    .line 1446
    goto :goto_b
.end method

.method private parseParamlist(I)I
    .registers 9
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    .line 838
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 840
    .local v2, sum:I
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 841
    if-ne v6, v1, :cond_b

    move v4, v6

    .line 875
    :goto_a
    return v4

    .line 844
    :cond_b
    add-int/2addr p1, v1

    .line 845
    add-int/2addr v2, v1

    .line 847
    move v0, p1

    .line 848
    .local v0, offsetTemp:I
    move v3, v2

    .line 850
    .local v3, sumTemp:I
    :goto_f
    invoke-virtual {p0, v0}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 851
    add-int/2addr v0, v1

    .line 852
    add-int/2addr v3, v1

    .line 854
    const-string v4, ";"

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 855
    if-ne v6, v1, :cond_20

    move v4, v2

    .line 856
    goto :goto_a

    .line 858
    :cond_20
    add-int/2addr v0, v1

    .line 859
    add-int/2addr v3, v1

    .line 861
    invoke-virtual {p0, v0}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v1

    .line 862
    add-int/2addr v0, v1

    .line 863
    add-int/2addr v3, v1

    .line 865
    invoke-direct {p0, v0}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParam(I)I

    move-result v1

    .line 866
    if-ne v6, v1, :cond_30

    move v4, v2

    .line 875
    goto :goto_a

    .line 869
    :cond_30
    add-int/2addr v0, v1

    .line 870
    add-int/2addr v3, v1

    .line 873
    move v2, v3

    goto :goto_f
.end method

.method private parseParams(I)I
    .registers 7
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 812
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 814
    .local v1, sum:I
    const-string v2, ";"

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 815
    if-ne v4, v0, :cond_e

    move v2, v4

    .line 831
    :goto_d
    return v2

    .line 818
    :cond_e
    add-int/2addr p1, v0

    .line 819
    add-int/2addr v1, v0

    .line 821
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 822
    add-int/2addr p1, v0

    .line 823
    add-int/2addr v1, v0

    .line 825
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseParamlist(I)I

    move-result v0

    .line 826
    if-ne v4, v0, :cond_1e

    move v2, v4

    .line 827
    goto :goto_d

    .line 829
    :cond_1e
    add-int/2addr v1, v0

    move v2, v1

    .line 831
    goto :goto_d
.end method

.method private parsePtypeval(I)I
    .registers 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 1483
    const/4 v0, 0x0

    .line 1485
    .local v0, ret:I
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseKnownType(I)I

    move-result v0

    .line 1486
    if-eq v1, v0, :cond_a

    move v1, v0

    .line 1495
    :cond_9
    :goto_9
    return v1

    .line 1490
    :cond_a
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1491
    if-eq v1, v0, :cond_9

    move v1, v0

    .line 1492
    goto :goto_9
.end method

.method private parseRoleVal(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1502
    const/4 v0, 0x0

    .line 1504
    .local v0, ret:I
    const-string v1, "ATTENDEE"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1505
    if-eq v2, v0, :cond_d

    move v1, v0

    .line 1524
    :goto_c
    return v1

    .line 1509
    :cond_d
    const-string v1, "ORGANIZER"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1510
    if-eq v2, v0, :cond_17

    move v1, v0

    .line 1511
    goto :goto_c

    .line 1514
    :cond_17
    const-string v1, "OWNER"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1515
    if-eq v2, v0, :cond_21

    move v1, v0

    .line 1516
    goto :goto_c

    .line 1519
    :cond_21
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1520
    if-eq v2, v0, :cond_29

    move v1, v0

    .line 1521
    goto :goto_c

    :cond_29
    move v1, v2

    .line 1524
    goto :goto_c
.end method

.method private parseStatuVal(I)I
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1532
    const/4 v0, 0x0

    .line 1534
    .local v0, ret:I
    const-string v1, "ACCEPTED"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1535
    if-eq v2, v0, :cond_d

    move v1, v0

    .line 1570
    :goto_c
    return v1

    .line 1539
    :cond_d
    const-string v1, "NEED ACTION"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1540
    if-eq v2, v0, :cond_17

    move v1, v0

    .line 1541
    goto :goto_c

    .line 1544
    :cond_17
    const-string v1, "TENTATIVE"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1545
    if-eq v2, v0, :cond_21

    move v1, v0

    .line 1546
    goto :goto_c

    .line 1548
    :cond_21
    const-string v1, "CONFIRMED"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1549
    if-eq v2, v0, :cond_2b

    move v1, v0

    .line 1550
    goto :goto_c

    .line 1552
    :cond_2b
    const-string v1, "DECLINED"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1553
    if-eq v2, v0, :cond_35

    move v1, v0

    .line 1554
    goto :goto_c

    .line 1556
    :cond_35
    const-string v1, "COMPLETED"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1557
    if-eq v2, v0, :cond_3f

    move v1, v0

    .line 1558
    goto :goto_c

    .line 1560
    :cond_3f
    const-string v1, "DELEGATED"

    invoke-virtual {p0, p1, v1, v3}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 1561
    if-eq v2, v0, :cond_49

    move v1, v0

    .line 1562
    goto :goto_c

    .line 1565
    :cond_49
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseXWord(I)I

    move-result v0

    .line 1566
    if-eq v2, v0, :cond_51

    move v1, v0

    .line 1567
    goto :goto_c

    :cond_51
    move v1, v2

    .line 1570
    goto :goto_c
.end method

.method private parseTodoentity(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v7, ":"

    const-string v6, "VTODO"

    .line 625
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 627
    .local v1, sum:I
    const-string v2, "BEGIN"

    invoke-virtual {p0, p1, v2, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 628
    if-ne v4, v0, :cond_12

    move v2, v4

    .line 747
    :goto_11
    return v2

    .line 631
    :cond_12
    add-int/2addr p1, v0

    .line 632
    add-int/2addr v1, v0

    .line 635
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 636
    add-int/2addr p1, v0

    .line 637
    add-int/2addr v1, v0

    .line 640
    const-string v2, ":"

    invoke-virtual {p0, p1, v7, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 641
    if-ne v4, v0, :cond_24

    move v2, v4

    .line 642
    goto :goto_11

    .line 644
    :cond_24
    add-int/2addr p1, v0

    .line 645
    add-int/2addr v1, v0

    .line 648
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 649
    add-int/2addr p1, v0

    .line 650
    add-int/2addr v1, v0

    .line 653
    const-string v2, "VTODO"

    invoke-virtual {p0, p1, v6, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 654
    if-ne v4, v0, :cond_36

    move v2, v4

    .line 655
    goto :goto_11

    .line 657
    :cond_36
    add-int/2addr p1, v0

    .line 658
    add-int/2addr v1, v0

    .line 659
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_43

    .line 660
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v3, "VTODO"

    invoke-interface {v2, v6}, Landroid/syncml/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 664
    :cond_43
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 665
    if-ne v4, v0, :cond_4b

    move v2, v4

    .line 666
    goto :goto_11

    .line 668
    :cond_4b
    add-int/2addr p1, v0

    .line 669
    add-int/2addr v1, v0

    .line 670
    :goto_4d
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_56

    .line 671
    add-int/2addr p1, v0

    .line 672
    add-int/2addr v1, v0

    goto :goto_4d

    .line 675
    :cond_56
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseEntprops(I)I

    move-result v0

    .line 676
    if-ne v4, v0, :cond_5e

    move v2, v4

    .line 677
    goto :goto_11

    .line 679
    :cond_5e
    add-int/2addr p1, v0

    .line 680
    add-int/2addr v1, v0

    .line 683
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 684
    add-int/2addr p1, v0

    .line 685
    add-int/2addr v1, v0

    .line 688
    :goto_66
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_6f

    .line 689
    add-int/2addr p1, v0

    .line 690
    add-int/2addr v1, v0

    goto :goto_66

    .line 694
    :cond_6f
    const-string v2, "END"

    invoke-virtual {p0, p1, v2, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 695
    if-ne v4, v0, :cond_79

    move v2, v4

    .line 696
    goto :goto_11

    .line 698
    :cond_79
    add-int/2addr p1, v0

    .line 699
    add-int/2addr v1, v0

    .line 702
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 703
    add-int/2addr p1, v0

    .line 704
    add-int/2addr v1, v0

    .line 707
    const-string v2, ":"

    invoke-virtual {p0, p1, v7, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 708
    if-ne v4, v0, :cond_8b

    move v2, v4

    .line 709
    goto :goto_11

    .line 711
    :cond_8b
    add-int/2addr p1, v0

    .line 712
    add-int/2addr v1, v0

    .line 715
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 716
    add-int/2addr p1, v0

    .line 717
    add-int/2addr v1, v0

    .line 720
    const-string v2, "VTODO"

    invoke-virtual {p0, p1, v6, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 721
    if-ne v4, v0, :cond_9e

    move v2, v4

    .line 722
    goto/16 :goto_11

    .line 724
    :cond_9e
    add-int/2addr p1, v0

    .line 725
    add-int/2addr v1, v0

    .line 726
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_a9

    .line 727
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->endRecord()V

    .line 731
    :cond_a9
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 732
    add-int/2addr p1, v0

    .line 733
    add-int/2addr v1, v0

    .line 736
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 737
    if-ne v4, v0, :cond_b8

    move v2, v4

    .line 738
    goto/16 :goto_11

    .line 740
    :cond_b8
    add-int/2addr p1, v0

    .line 741
    add-int/2addr v1, v0

    .line 742
    :goto_ba
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_c3

    .line 743
    add-int/2addr p1, v0

    .line 744
    add-int/2addr v1, v0

    goto :goto_ba

    :cond_c3
    move v2, v1

    .line 747
    goto/16 :goto_11
.end method

.method private parseVCal(I)I
    .registers 10
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v7, ":"

    const-string v6, "VCALENDAR"

    .line 118
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 121
    .local v1, sum:I
    const-string v2, "BEGIN"

    invoke-virtual {p0, p1, v2, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 122
    if-ne v4, v0, :cond_12

    move v2, v4

    .line 256
    :goto_11
    return v2

    .line 125
    :cond_12
    add-int/2addr p1, v0

    .line 126
    add-int/2addr v1, v0

    .line 129
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 130
    add-int/2addr p1, v0

    .line 131
    add-int/2addr v1, v0

    .line 134
    const-string v2, ":"

    invoke-virtual {p0, p1, v7, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 135
    if-ne v4, v0, :cond_24

    move v2, v4

    .line 136
    goto :goto_11

    .line 138
    :cond_24
    add-int/2addr p1, v0

    .line 139
    add-int/2addr v1, v0

    .line 142
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 143
    add-int/2addr p1, v0

    .line 144
    add-int/2addr v1, v0

    .line 147
    const-string v2, "VCALENDAR"

    invoke-virtual {p0, p1, v6, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 148
    if-ne v4, v0, :cond_36

    move v2, v4

    .line 149
    goto :goto_11

    .line 151
    :cond_36
    add-int/2addr p1, v0

    .line 152
    add-int/2addr v1, v0

    .line 153
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_43

    .line 154
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    const-string v3, "VCALENDAR"

    invoke-interface {v2, v6}, Landroid/syncml/pim/VBuilder;->startRecord(Ljava/lang/String;)V

    .line 158
    :cond_43
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 159
    add-int/2addr p1, v0

    .line 160
    add-int/2addr v1, v0

    .line 163
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 164
    if-ne v4, v0, :cond_51

    move v2, v4

    .line 165
    goto :goto_11

    .line 167
    :cond_51
    add-int/2addr p1, v0

    .line 168
    add-int/2addr v1, v0

    .line 169
    :goto_53
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_5c

    .line 170
    add-int/2addr p1, v0

    .line 171
    add-int/2addr v1, v0

    goto :goto_53

    .line 175
    :cond_5c
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalprops(I)I

    move-result v0

    .line 176
    if-ne v4, v0, :cond_64

    move v2, v4

    .line 177
    goto :goto_11

    .line 179
    :cond_64
    add-int/2addr p1, v0

    .line 180
    add-int/2addr v1, v0

    .line 183
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCalentities(I)I

    move-result v0

    .line 184
    if-ne v4, v0, :cond_6e

    move v2, v4

    .line 185
    goto :goto_11

    .line 187
    :cond_6e
    add-int/2addr p1, v0

    .line 188
    add-int/2addr v1, v0

    .line 191
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 192
    add-int/2addr p1, v0

    .line 193
    add-int/2addr v1, v0

    .line 196
    :goto_76
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_7f

    .line 197
    add-int/2addr p1, v0

    .line 198
    add-int/2addr v1, v0

    goto :goto_76

    .line 202
    :cond_7f
    const-string v2, "END"

    invoke-virtual {p0, p1, v2, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 203
    if-ne v4, v0, :cond_89

    move v2, v4

    .line 204
    goto :goto_11

    .line 206
    :cond_89
    add-int/2addr p1, v0

    .line 207
    add-int/2addr v1, v0

    .line 210
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 211
    add-int/2addr p1, v0

    .line 212
    add-int/2addr v1, v0

    .line 216
    const-string v2, ":"

    invoke-virtual {p0, p1, v7, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 217
    if-ne v4, v0, :cond_9c

    move v2, v4

    .line 218
    goto/16 :goto_11

    .line 220
    :cond_9c
    add-int/2addr p1, v0

    .line 221
    add-int/2addr v1, v0

    .line 224
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 225
    add-int/2addr p1, v0

    .line 226
    add-int/2addr v1, v0

    .line 229
    const-string v2, "VCALENDAR"

    invoke-virtual {p0, p1, v6, v5}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 230
    if-ne v4, v0, :cond_af

    move v2, v4

    .line 231
    goto/16 :goto_11

    .line 233
    :cond_af
    add-int/2addr p1, v0

    .line 234
    add-int/2addr v1, v0

    .line 235
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    if-eqz v2, :cond_ba

    .line 236
    iget-object v2, p0, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mBuilder:Landroid/syncml/pim/VBuilder;

    invoke-interface {v2}, Landroid/syncml/pim/VBuilder;->endRecord()V

    .line 240
    :cond_ba
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->removeWs(I)I

    move-result v0

    .line 241
    add-int/2addr p1, v0

    .line 242
    add-int/2addr v1, v0

    .line 245
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    .line 246
    if-ne v4, v0, :cond_c9

    move v2, v4

    .line 247
    goto/16 :goto_11

    .line 249
    :cond_c9
    add-int/2addr p1, v0

    .line 250
    add-int/2addr v1, v0

    .line 251
    :goto_cb
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseCrlf(I)I

    move-result v0

    if-eq v4, v0, :cond_d4

    .line 252
    add-int/2addr p1, v0

    .line 253
    add-int/2addr v1, v0

    goto :goto_cb

    :cond_d4
    move v2, v1

    .line 256
    goto/16 :goto_11
.end method

.method private parseVCalFile(I)I
    .registers 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 89
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 92
    .local v1, sum:I
    :goto_3
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_c

    .line 93
    add-int/2addr p1, v0

    .line 94
    add-int/2addr v1, v0

    goto :goto_3

    .line 97
    :cond_c
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseVCal(I)I

    move-result v0

    .line 98
    if-eq v2, v0, :cond_1e

    .line 99
    add-int/2addr p1, v0

    .line 100
    add-int/2addr v1, v0

    .line 106
    :goto_14
    invoke-virtual {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseWsls(I)I

    move-result v0

    if-eq v2, v0, :cond_1d

    .line 107
    add-int/2addr p1, v0

    .line 108
    add-int/2addr v1, v0

    goto :goto_14

    :cond_1d
    move v2, v1

    .line 110
    :cond_1e
    return v2
.end method

.method private valueFilter(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 7
    .parameter "propName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1579
    if-eqz p1, :cond_13

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_13
    move v2, v3

    .line 1592
    .end local p0
    :goto_14
    return v2

    .line 1583
    .restart local p0
    :cond_15
    sget-object v2, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1584
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1585
    .local v1, value:Ljava/lang/String;
    sget-object v2, Landroid/syncml/pim/vcalendar/VCalParser_V10;->mSpecialValueSetMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1586
    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1587
    const/4 v2, -0x1

    goto :goto_14

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #value:Ljava/lang/String;
    :cond_45
    move v2, v3

    .line 1592
    goto :goto_14
.end method


# virtual methods
.method protected parseVFile(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/syncml/pim/vcalendar/VCalParser_V10;->parseVCalFile(I)I

    move-result v0

    return v0
.end method
