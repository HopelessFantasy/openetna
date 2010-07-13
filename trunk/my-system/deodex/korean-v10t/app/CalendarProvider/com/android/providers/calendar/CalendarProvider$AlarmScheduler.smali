.class Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;
.super Ljava/lang/Thread;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmScheduler"
.end annotation


# instance fields
.field mRemoveAlarms:Z

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/CalendarProvider;Z)V
    .registers 3
    .parameter
    .parameter "removeAlarms"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 193
    iput-boolean p2, p0, Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;->mRemoveAlarms:Z

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 198
    const/16 v1, 0xa

    :try_start_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 199
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    iget-boolean v2, p0, Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;->mRemoveAlarms:Z

    invoke-static {v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->access$000(Lcom/android/providers/calendar/CalendarProvider;Z)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_c} :catch_d

    .line 203
    :goto_c
    return-void

    .line 200
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 201
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "CalendarProvider"

    const-string v2, "runScheduleNextAlarm() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
