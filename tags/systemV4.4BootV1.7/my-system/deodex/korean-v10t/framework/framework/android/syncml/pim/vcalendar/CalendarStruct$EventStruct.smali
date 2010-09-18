.class public Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/syncml/pim/vcalendar/CalendarStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventStruct"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public dtend:Ljava/lang/String;

.field public dtstart:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public event_location:Ljava/lang/String;

.field public has_alarm:Ljava/lang/String;

.field public last_date:Ljava/lang/String;

.field public reminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rrule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addReminderList(Ljava/lang/String;)V
    .registers 3
    .parameter "method"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    .line 44
    :cond_b
    iget-object v0, p0, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
