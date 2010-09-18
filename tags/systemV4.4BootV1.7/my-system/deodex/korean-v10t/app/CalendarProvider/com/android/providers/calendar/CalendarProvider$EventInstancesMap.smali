.class public final Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;
.super Ljava/util/HashMap;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInstancesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/providers/calendar/CalendarProvider$InstancesList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "syncId"
    .parameter "values"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/calendar/CalendarProvider$InstancesList;

    .line 179
    .local v0, instances:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    if-nez v0, :cond_10

    .line 180
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider$InstancesList;

    .end local v0           #instances:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarProvider$InstancesList;-><init>()V

    .line 181
    .restart local v0       #instances:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_10
    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarProvider$InstancesList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method
