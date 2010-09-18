.class Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;
.super Ljava/lang/Thread;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneCheckerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarProvider;Lcom/android/providers/calendar/CalendarProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v4, "CalendarProvider"

    .line 347
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 349
    :try_start_7
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider;->access$300(Lcom/android/providers/calendar/CalendarProvider;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_c} :catch_d

    .line 360
    :goto_c
    return-void

    .line 350
    :catch_d
    move-exception v2

    move-object v0, v2

    .line 351
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "CalendarProvider"

    const-string v2, "doUpdateTimezoneDependentFields() failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    :try_start_16
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    iget-object v2, v2, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_1d
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_c

    .line 356
    :catch_1e
    move-exception v2

    move-object v1, v2

    .line 357
    .local v1, e2:Landroid/database/SQLException;
    const-string v2, "CalendarProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearInstanceRange() also failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method
