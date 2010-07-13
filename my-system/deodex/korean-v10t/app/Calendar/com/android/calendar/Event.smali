.class public Lcom/android/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIDNIGHT_IN_MINUTES:I = 0x5a0

.field private static final PROFILE:Z = false

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x6

.field private static final PROJECTION_COLOR_INDEX:I = 0x3

.field private static final PROJECTION_END_DAY_INDEX:I = 0xa

.field private static final PROJECTION_END_INDEX:I = 0x7

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xc

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x5

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xd

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_RDATE_INDEX:I = 0xf

.field private static final PROJECTION_RRULE_INDEX:I = 0xe

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0x10

.field private static final PROJECTION_START_DAY_INDEX:I = 0x9

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0xb

.field private static final PROJECTION_TIMEZONE_INDEX:I = 0x4

.field private static final PROJECTION_TITLE_INDEX:I


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lcom/android/calendar/Event;

.field public nextLeft:Lcom/android/calendar/Event;

.field public nextRight:Lcom/android/calendar/Event;

.field public nextUp:Lcom/android/calendar/Event;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 226
    if-eqz p1, :cond_11

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, aStr:Ljava/lang/String;
    :goto_6
    if-eqz p2, :cond_14

    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, bStr:Ljava/lang/String;
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 229
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_11
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_6

    .line 234
    :cond_14
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_c
.end method

.method static computePositions(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-nez p0, :cond_3

    .line 393
    :goto_2
    return-void

    .line 391
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    .line 392
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    goto :goto_2
.end method

.method private static createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;
    .registers 8
    .parameter
    .parameter "id"
    .parameter "startMinute"
    .parameter "endMinute"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III)",
            "Lcom/android/calendar/Event;"
        }
    .end annotation

    .prologue
    .local p0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v3, 0x1

    .line 519
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 520
    .local v0, ev:Lcom/android/calendar/Event;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 521
    iput v3, v0, Lcom/android/calendar/Event;->startDay:I

    .line 522
    iput v3, v0, Lcom/android/calendar/Event;->endDay:I

    .line 523
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/Event;->setStartMillis(J)V

    .line 524
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/Event;->setEndMillis(J)V

    .line 525
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    return-object v0
.end method

.method private static createTestEventList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x22

    const/16 v5, 0x20

    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 487
    const/4 v1, 0x2

    invoke-static {v0, v1, v3, v4}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 488
    const/4 v1, 0x3

    const/16 v2, 0xf

    invoke-static {v0, v1, v2, v7}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 489
    const/4 v1, 0x4

    const/16 v2, 0x19

    invoke-static {v0, v1, v7, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 490
    const/16 v1, 0x1e

    const/16 v2, 0x46

    invoke-static {v0, v3, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 491
    const/4 v1, 0x6

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 492
    const/4 v1, 0x7

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 493
    const/16 v1, 0x8

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 494
    const/16 v1, 0x9

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 495
    const/16 v1, 0x2a

    const/16 v2, 0x32

    invoke-static {v0, v4, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 496
    const/16 v1, 0xb

    const/16 v2, 0x2d

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 497
    const/16 v1, 0xc

    const/16 v2, 0x37

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 498
    const/16 v1, 0xd

    const/16 v2, 0x41

    const/16 v3, 0x4b

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 500
    const/16 v1, 0x15

    const/16 v2, 0x69

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 501
    const/16 v1, 0x16

    const/16 v2, 0x6e

    const/16 v3, 0x78

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 502
    const/16 v1, 0x17

    const/16 v2, 0x73

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 503
    const/16 v1, 0x18

    const/16 v2, 0x7d

    const/16 v3, 0x8c

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 504
    const/16 v1, 0x19

    const/16 v2, 0x7f

    const/16 v3, 0x87

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 506
    const/16 v1, 0x1f

    const/16 v2, 0x96

    const/16 v3, 0xa0

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 507
    const/16 v1, 0x98

    const/16 v2, 0xa2

    invoke-static {v0, v5, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 508
    const/16 v1, 0x21

    const/16 v2, 0x99

    const/16 v3, 0xa3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 509
    const/16 v1, 0x9b

    const/16 v2, 0xaa

    invoke-static {v0, v6, v1, v2}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 510
    const/16 v1, 0x23

    const/16 v2, 0x9e

    const/16 v3, 0xaf

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 511
    const/16 v1, 0x24

    const/16 v2, 0xa5

    const/16 v3, 0xb4

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/android/calendar/Event;

    .line 513
    return-object v0
.end method

.method private static doComputePositions(Ljava/util/ArrayList;Z)V
    .registers 16
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v0, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v4, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const-wide/16 v1, 0x0

    .line 401
    .local v1, colMask:J
    const/4 v3, 0x0

    .line 402
    .local v3, maxCols:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    move v7, v3

    .end local v3           #maxCols:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local p0           #eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .local v7, maxCols:I
    :cond_12
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_8e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 404
    .local v3, event:Lcom/android/calendar/Event;
    iget-boolean p0, v3, Lcom/android/calendar/Event;->allDay:Z

    if-ne p0, p1, :cond_12

    .line 407
    invoke-virtual {v3}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v8

    .line 419
    .local v8, start:J
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 420
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :cond_2a
    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 421
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 422
    .local p0, active:Lcom/android/calendar/Event;
    invoke-virtual {p0}, Lcom/android/calendar/Event;->getEndMillis()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gtz v10, :cond_2a

    .line 430
    const-wide/16 v10, 0x1

    invoke-virtual {p0}, Lcom/android/calendar/Event;->getColumn()I

    move-result p0

    .end local p0           #active:Lcom/android/calendar/Event;
    shl-long/2addr v10, p0

    const-wide/16 v12, -0x1

    xor-long/2addr v10, v12

    and-long/2addr v1, v10

    .line 431
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    .line 437
    :cond_4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 438
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 439
    .local p0, ev:Lcom/android/calendar/Event;
    invoke-virtual {p0, v7}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_57

    .line 441
    .end local p0           #ev:Lcom/android/calendar/Event;
    :cond_67
    const/4 p0, 0x0

    .line 442
    .end local v7           #maxCols:I
    .local p0, maxCols:I
    const-wide/16 v1, 0x0

    .line 443
    .local v1, colMask:J
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v6, p0

    .line 448
    .end local p0           #maxCols:I
    .local v6, maxCols:I
    :goto_6e
    invoke-static {v1, v2}, Lcom/android/calendar/Event;->findFirstZeroBit(J)I

    move-result p0

    .line 449
    .local p0, col:I
    const/16 v7, 0x40

    if-ne p0, v7, :cond_78

    .line 450
    const/16 p0, 0x3f

    .line 451
    :cond_78
    const-wide/16 v7, 0x1

    shl-long/2addr v7, p0

    or-long/2addr v1, v7

    .line 452
    invoke-virtual {v3, p0}, Lcom/android/calendar/Event;->setColumn(I)V

    .line 453
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 456
    .local p0, len:I
    if-ge v6, p0, :cond_a3

    .line 457
    move p0, p0

    .end local v6           #maxCols:I
    .local p0, maxCols:I
    :goto_8c
    move v7, p0

    .line 458
    .end local p0           #maxCols:I
    .restart local v7       #maxCols:I
    goto :goto_12

    .line 459
    .end local v3           #event:Lcom/android/calendar/Event;
    .end local v8           #start:J
    :cond_8e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 460
    .local p0, ev:Lcom/android/calendar/Event;
    invoke-virtual {p0, v7}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_92

    .line 462
    .end local p0           #ev:Lcom/android/calendar/Event;
    :cond_a2
    return-void

    .end local v7           #maxCols:I
    .restart local v3       #event:Lcom/android/calendar/Event;
    .restart local v6       #maxCols:I
    .restart local v8       #start:J
    .local p0, len:I
    .local p1, doAllDayEvents:Z
    :cond_a3
    move p0, v6

    .end local v6           #maxCols:I
    .local p0, maxCols:I
    goto :goto_8c

    .end local p0           #maxCols:I
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .restart local v7       #maxCols:I
    :cond_a5
    move v6, v7

    .end local v7           #maxCols:I
    .local v6, maxCols:I
    goto :goto_6e
.end method

.method public static findFirstZeroBit(J)I
    .registers 8
    .parameter "val"

    .prologue
    const/16 v5, 0x40

    .line 465
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_3
    if-ge v0, v5, :cond_14

    .line 466
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    move v1, v0

    .line 469
    :goto_10
    return v1

    .line 465
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    move v1, v5

    .line 469
    goto :goto_10
.end method

.method private static final getDarkerColor(I)I
    .registers 5
    .parameter "color"

    .prologue
    .line 478
    shr-int/lit8 v2, p0, 0x1

    const v3, 0x7f7f7f

    and-int v1, v2, v3

    .line 479
    .local v1, darker:I
    const/high16 v2, -0x100

    and-int v0, p0, v2

    .line 480
    .local v0, alpha:I
    or-int v2, v0, v1

    return v2
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V
    .registers 22
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v12, 0x0

    .line 251
    .local v12, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 253
    :try_start_4
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 256
    .local v4, local:Landroid/text/format/Time;
    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 257
    iget-wide v5, v4, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    move-wide v2, v5

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v14

    .line 258
    .local v14, startDay:I
    add-int v13, v14, p4

    .line 260
    .local v13, endDay:I
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int p4, p4, v5

    move/from16 v0, p4

    move-object v1, v4

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 261
    .end local p4
    const/16 p4, 0x1

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 278
    .local v8, end:J
    const-string v11, "begin ASC, end DESC, title ASC"

    .line 281
    .local v11, orderBy:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 282
    .local p4, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_hide_declined"

    .end local v4           #local:Landroid/text/format/Time;
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    .line 285
    .local p4, hideDeclined:Z
    const/4 v10, 0x0

    .line 286
    .local v10, where:Ljava/lang/String;
    if-eqz p4, :cond_42

    .line 287
    const-string v10, "selfAttendeeStatus!=2"

    .line 290
    :cond_42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/calendar/Event;->PROJECTION:[Ljava/lang/String;

    const-wide/32 v6, 0x5265c00

    sub-long v6, p2, v6

    const-wide/32 p2, 0x5265c00

    add-long v8, v8, p2

    invoke-static/range {v4 .. v11}, Landroid/provider/Calendar$Instances;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_1ce

    .end local v8           #end:J
    .end local p2
    move-result-object p2

    .line 293
    .end local v12           #c:Landroid/database/Cursor;
    .local p2, c:Landroid/database/Cursor;
    if-nez p2, :cond_65

    .line 294
    :try_start_58
    const-string p0, "Cal"

    .end local p0
    const-string p1, "loadEvents() returned null cursor!"

    .end local p1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_199

    .line 364
    if-eqz p2, :cond_64

    .line 365
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 371
    .end local p4           #hideDeclined:Z
    .end local p5
    .end local p6
    :cond_64
    :goto_64
    return-void

    .line 300
    .restart local p0
    .restart local p1       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .restart local p4       #hideDeclined:Z
    .restart local p5
    .restart local p6
    :cond_65
    :try_start_65
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_199

    move-result p3

    move/from16 v0, p5

    move/from16 v1, p3

    if-eq v0, v1, :cond_75

    .line 364
    if-eqz p2, :cond_64

    .line 365
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .line 304
    :cond_75
    :try_start_75
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_199

    move-result p3

    .line 306
    .local p3, count:I
    if-nez p3, :cond_81

    .line 364
    if-eqz p2, :cond_64

    .line 365
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .line 310
    :cond_81
    :try_start_81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 311
    .end local p0
    .end local p3           #count:I
    .end local p4           #hideDeclined:Z
    .end local p5
    .end local p6
    .local v4, res:Landroid/content/res/Resources;
    :cond_85
    :goto_85
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1c4

    .line 312
    new-instance p0, Lcom/android/calendar/Event;

    invoke-direct {p0}, Lcom/android/calendar/Event;-><init>()V

    .line 314
    .local p0, e:Lcom/android/calendar/Event;
    const/16 p3, 0x5

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    move-wide/from16 v0, p3

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/calendar/Event;->id:J

    .line 315
    const/16 p3, 0x0

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 316
    const/16 p3, 0x1

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 317
    const/16 p3, 0x2

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    if-eqz p3, :cond_1a4

    const/16 p3, 0x1

    :goto_bb
    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->allDay:Z

    .line 318
    const/16 p3, 0x4

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 320
    .local p3, timezone:Ljava/lang/String;
    move-object v0, p0

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 p3, v0

    .end local p3           #timezone:Ljava/lang/String;
    if-eqz p3, :cond_d8

    move-object v0, p0

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 p3, v0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_e7

    .line 321
    :cond_d8
    const p3, 0x7f080007

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 324
    :cond_e7
    const/16 p3, 0x3

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p3

    if-nez p3, :cond_1a8

    .line 326
    const/16 p3, 0x3

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    .line 331
    :goto_fa
    const/16 p3, 0x6

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p5

    .line 332
    .local p5, eStart:J
    const/16 p3, 0x7

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 334
    .local p3, eEnd:J
    move-wide/from16 v0, p5

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/calendar/Event;->startMillis:J

    .line 335
    const/16 p5, 0xb

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local p5           #eStart:J
    move-result p5

    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->startTime:I

    .line 336
    const/16 p5, 0x9

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->startDay:I

    .line 338
    move-wide/from16 v0, p3

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/calendar/Event;->endMillis:J

    .line 339
    const/16 p3, 0xc

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #eEnd:J
    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->endTime:I

    .line 340
    const/16 p3, 0xa

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->endDay:I

    .line 342
    move-object v0, p0

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 p3, v0

    move/from16 v0, p3

    move v1, v13

    if-gt v0, v1, :cond_85

    move-object v0, p0

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 p3, v0

    move/from16 v0, p3

    move v1, v14

    if-lt v0, v1, :cond_85

    .line 346
    const/16 p3, 0xd

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    if-eqz p3, :cond_1b9

    const/16 p3, 0x1

    :goto_162
    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 349
    const/16 p3, 0xe

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 350
    .local p4, rrule:Ljava/lang/String;
    const/16 p3, 0xf

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 351
    .local p3, rdate:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    .end local p4           #rrule:Ljava/lang/String;
    if-eqz p4, :cond_17f

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3           #rdate:Ljava/lang/String;
    if-nez p3, :cond_1bc

    .line 352
    :cond_17f
    const/16 p3, 0x1

    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->isRepeating:Z

    .line 357
    :goto_186
    const/16 p3, 0x10

    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 359
    move-object/from16 v0, p1

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_197
    .catchall {:try_start_81 .. :try_end_197} :catchall_199

    goto/16 :goto_85

    .line 364
    .end local v4           #res:Landroid/content/res/Resources;
    .end local p0           #e:Lcom/android/calendar/Event;
    .end local p1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :catchall_199
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local v10           #where:Ljava/lang/String;
    .end local v11           #orderBy:Ljava/lang/String;
    .end local v13           #endDay:I
    .end local v14           #startDay:I
    .end local p2           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_19e
    if-eqz p0, :cond_1a3

    .line 365
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1a3
    throw p1

    .line 317
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local v10       #where:Ljava/lang/String;
    .restart local v11       #orderBy:Ljava/lang/String;
    .restart local v13       #endDay:I
    .restart local v14       #startDay:I
    .local p0, e:Lcom/android/calendar/Event;
    .restart local p1       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .restart local p2       #c:Landroid/database/Cursor;
    :cond_1a4
    const/16 p3, 0x0

    goto/16 :goto_bb

    .line 328
    :cond_1a8
    const p3, 0x7f07001c

    :try_start_1ab
    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/android/calendar/Event;->color:I

    goto/16 :goto_fa

    .line 346
    :cond_1b9
    const/16 p3, 0x0

    goto :goto_162

    .line 354
    :cond_1bc
    const/16 p3, 0x0

    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/Event;->isRepeating:Z

    goto :goto_186

    .line 362
    .end local p0           #e:Lcom/android/calendar/Event;
    :cond_1c4
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;)V
    :try_end_1c7
    .catchall {:try_start_1ab .. :try_end_1c7} :catchall_199

    .line 364
    if-eqz p2, :cond_64

    .line 365
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_64

    .line 364
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v10           #where:Ljava/lang/String;
    .end local v11           #orderBy:Ljava/lang/String;
    .end local v13           #endDay:I
    .end local v14           #startDay:I
    .end local p2           #c:Landroid/database/Cursor;
    .restart local v12       #c:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p5, requestId:I
    .restart local p6
    :catchall_1ce
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v12

    .end local v12           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_19e
.end method

.method public static final newInstance()Lcom/android/calendar/Event;
    .registers 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 154
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 156
    .local v0, e:Lcom/android/calendar/Event;
    iput-wide v2, v0, Lcom/android/calendar/Event;->id:J

    .line 157
    iput-object v4, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 158
    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 159
    iput-object v4, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 160
    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 161
    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 162
    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 163
    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 164
    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 165
    iput-wide v2, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 166
    iput-wide v2, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 167
    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 168
    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 169
    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 171
    return-object v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 117
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 119
    .local v0, e:Lcom/android/calendar/Event;
    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 120
    iget v1, p0, Lcom/android/calendar/Event;->color:I

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 121
    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 122
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 123
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 124
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 125
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 126
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 127
    iget-wide v1, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 128
    iget-wide v1, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 129
    iget-boolean v1, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 130
    iget-boolean v1, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 131
    iget v1, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 133
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 179
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/Event;

    move-object v2, v0

    .line 182
    .local v2, e:Lcom/android/calendar/Event;
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    iget v4, v2, Lcom/android/calendar/Event;->startDay:I

    if-ge v3, v4, :cond_e

    move v3, v5

    .line 212
    :goto_d
    return v3

    .line 183
    :cond_e
    iget v3, p0, Lcom/android/calendar/Event;->startDay:I

    iget v4, v2, Lcom/android/calendar/Event;->startDay:I

    if-le v3, v4, :cond_16

    move v3, v6

    goto :goto_d

    .line 184
    :cond_16
    iget v3, p0, Lcom/android/calendar/Event;->startTime:I

    iget v4, v2, Lcom/android/calendar/Event;->startTime:I

    if-ge v3, v4, :cond_1e

    move v3, v5

    goto :goto_d

    .line 185
    :cond_1e
    iget v3, p0, Lcom/android/calendar/Event;->startTime:I

    iget v4, v2, Lcom/android/calendar/Event;->startTime:I

    if-le v3, v4, :cond_26

    move v3, v6

    goto :goto_d

    .line 189
    :cond_26
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    iget v4, v2, Lcom/android/calendar/Event;->endDay:I

    if-ge v3, v4, :cond_2e

    move v3, v6

    goto :goto_d

    .line 190
    :cond_2e
    iget v3, p0, Lcom/android/calendar/Event;->endDay:I

    iget v4, v2, Lcom/android/calendar/Event;->endDay:I

    if-le v3, v4, :cond_36

    move v3, v5

    goto :goto_d

    .line 191
    :cond_36
    iget v3, p0, Lcom/android/calendar/Event;->endTime:I

    iget v4, v2, Lcom/android/calendar/Event;->endTime:I

    if-ge v3, v4, :cond_3e

    move v3, v6

    goto :goto_d

    .line 192
    :cond_3e
    iget v3, p0, Lcom/android/calendar/Event;->endTime:I

    iget v4, v2, Lcom/android/calendar/Event;->endTime:I

    if-le v3, v4, :cond_46

    move v3, v5

    goto :goto_d

    .line 195
    :cond_46
    iget-boolean v3, p0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_50

    iget-boolean v3, v2, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_50

    move v3, v5

    goto :goto_d

    .line 196
    :cond_50
    iget-boolean v3, p0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_5a

    iget-boolean v3, v2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_5a

    move v3, v6

    goto :goto_d

    .line 200
    :cond_5a
    iget-object v3, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 201
    .local v1, cmp:I
    if-eqz v1, :cond_66

    move v3, v1

    .line 202
    goto :goto_d

    .line 208
    :cond_66
    iget-object v3, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 209
    if-eqz v1, :cond_72

    move v3, v1

    .line 210
    goto :goto_d

    .line 212
    :cond_72
    const/4 v3, 0x0

    goto :goto_d
.end method

.method public final copyTo(Lcom/android/calendar/Event;)V
    .registers 4
    .parameter "dest"

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->id:J

    .line 138
    iget-object v0, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 139
    iget v0, p0, Lcom/android/calendar/Event;->color:I

    iput v0, p1, Lcom/android/calendar/Event;->color:I

    .line 140
    iget-object v0, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 141
    iget-boolean v0, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->allDay:Z

    .line 142
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    iput v0, p1, Lcom/android/calendar/Event;->startDay:I

    .line 143
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    iput v0, p1, Lcom/android/calendar/Event;->endDay:I

    .line 144
    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iput v0, p1, Lcom/android/calendar/Event;->startTime:I

    .line 145
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    iput v0, p1, Lcom/android/calendar/Event;->endTime:I

    .line 146
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->startMillis:J

    .line 147
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->endMillis:J

    .line 148
    iget-boolean v0, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 149
    iget-boolean v0, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->isRepeating:Z

    .line 150
    iget v0, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v0, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 151
    return-void
.end method

.method public final dump()V
    .registers 5

    .prologue
    const-string v3, "Cal"

    .line 530
    const-string v0, "Cal"

    const-string v0, "+-----------------------------------------+"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+        id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/calendar/Event;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+     color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+     title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+  location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+    allDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+  startDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+    endDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v0, "Cal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+   endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method public getColumn()I
    .registers 2

    .prologue
    .line 599
    iget v0, p0, Lcom/android/calendar/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .registers 3

    .prologue
    .line 623
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .registers 2

    .prologue
    .line 607
    iget v0, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 615
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .registers 5

    .prologue
    .line 580
    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2d

    .line 586
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, locationString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .end local v0           #locationString:Ljava/lang/String;
    :cond_2d
    return-object v1
.end method

.method public final intersects(III)Z
    .registers 7
    .parameter "julianDay"
    .parameter "startMinute"
    .parameter "endMinute"

    .prologue
    const/4 v2, 0x0

    .line 544
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    if-ge v0, p1, :cond_7

    move v0, v2

    .line 569
    :goto_6
    return v0

    .line 548
    :cond_7
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    if-le v0, p1, :cond_d

    move v0, v2

    .line 549
    goto :goto_6

    .line 552
    :cond_d
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    if-ne v0, p1, :cond_29

    .line 553
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    if-ge v0, p2, :cond_17

    move v0, v2

    .line 554
    goto :goto_6

    .line 559
    :cond_17
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v0, p2, :cond_29

    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v0, v1, :cond_27

    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    if-eq v0, v1, :cond_29

    :cond_27
    move v0, v2

    .line 561
    goto :goto_6

    .line 565
    :cond_29
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    if-ne v0, p1, :cond_33

    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    if-le v0, p3, :cond_33

    move v0, v2

    .line 566
    goto :goto_6

    .line 569
    :cond_33
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public setColumn(I)V
    .registers 2
    .parameter "column"

    .prologue
    .line 595
    iput p1, p0, Lcom/android/calendar/Event;->mColumn:I

    .line 596
    return-void
.end method

.method public setEndMillis(J)V
    .registers 3
    .parameter "endMillis"

    .prologue
    .line 619
    iput-wide p1, p0, Lcom/android/calendar/Event;->endMillis:J

    .line 620
    return-void
.end method

.method public setMaxColumns(I)V
    .registers 2
    .parameter "maxColumns"

    .prologue
    .line 603
    iput p1, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    .line 604
    return-void
.end method

.method public setStartMillis(J)V
    .registers 3
    .parameter "startMillis"

    .prologue
    .line 611
    iput-wide p1, p0, Lcom/android/calendar/Event;->startMillis:J

    .line 612
    return-void
.end method
