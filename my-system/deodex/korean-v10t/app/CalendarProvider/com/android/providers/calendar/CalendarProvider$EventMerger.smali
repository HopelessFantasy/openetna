.class Lcom/android/providers/calendar/CalendarProvider$EventMerger;
.super Landroid/content/AbstractTableMerger;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventMerger"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider;)V
    .registers 8
    .parameter

    .prologue
    .line 3838
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    .line 3839
    invoke-virtual {p1}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$500()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$700()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 3837
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    .line 3840
    return-void
.end method

.method private clearSyncDirtyFlag(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 8
    .parameter "db"
    .parameter "rowId"

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3882
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    const-string v1, "_sync_dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3883
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mTable:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3884
    return-void
.end method

.method private insertAttendees(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 15
    .parameter "diffs"
    .parameter "diffsRowId"
    .parameter "rowId"
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 3891
    sget-object v1, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3894
    .local v6, attendeesCursor:Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3896
    .local v7, attendeesValues:Landroid/content/ContentValues;
    :goto_22
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3897
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 3898
    const-string v0, "attendeeName"

    invoke-static {v6, v0, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3901
    const-string v0, "attendeeEmail"

    invoke-static {v6, v0, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3904
    const-string v0, "attendeeStatus"

    invoke-static {v6, v0, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3907
    const-string v0, "attendeeType"

    invoke-static {v6, v0, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3910
    const-string v0, "attendeeRelationship"

    invoke-static {v6, v0, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3913
    const-string v0, "event_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3914
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider;->access$1200(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J
    :try_end_56
    .catchall {:try_start_22 .. :try_end_56} :catchall_57

    goto :goto_22

    .line 3917
    :catchall_57
    move-exception v0

    if-eqz v6, :cond_5d

    .line 3918
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5d
    throw v0

    .line 3917
    :cond_5e
    if-eqz v6, :cond_63

    .line 3918
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3921
    :cond_63
    return-void
.end method

.method private insertExtendedPropertiesIfNecessary(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .parameter "diffs"
    .parameter "diffsRowId"
    .parameter "rowId"
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 3960
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    const-string v1, "hasExtendedProperties"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 3961
    .local v8, hasExtendedProperties:Ljava/lang/Integer;
    if-eqz v8, :cond_5b

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 3963
    sget-object v1, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3966
    .local v6, extendedPropertiesCursor:Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3968
    .local v7, extendedPropertiesValues:Landroid/content/ContentValues;
    :goto_32
    :try_start_32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3969
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 3970
    const-string v0, "name"

    invoke-static {v6, v0, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3972
    const-string v0, "value"

    invoke-static {v6, v0, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3974
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider;->access$1400(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4f

    goto :goto_32

    .line 3977
    :catchall_4f
    move-exception v0

    if-eqz v6, :cond_55

    .line 3978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v0

    .line 3977
    :cond_56
    if-eqz v6, :cond_5b

    .line 3978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3982
    .end local v6           #extendedPropertiesCursor:Landroid/database/Cursor;
    .end local v7           #extendedPropertiesValues:Landroid/content/ContentValues;
    :cond_5b
    return-void
.end method

.method private insertRemindersIfNecessary(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .parameter "diffs"
    .parameter "diffsRowId"
    .parameter "rowId"
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 3928
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    const-string v1, "hasAlarm"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 3929
    .local v6, hasAlarm:Ljava/lang/Integer;
    if-eqz v6, :cond_65

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 3931
    sget-object v1, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3934
    .local v7, reminderCursor:Landroid/database/Cursor;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3936
    .local v8, reminderValues:Landroid/content/ContentValues;
    :goto_33
    :try_start_33
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3937
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 3938
    const-string v0, "method"

    invoke-static {v7, v0, v8}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3941
    const-string v0, "minutes"

    invoke-static {v7, v0, v8}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3944
    const-string v0, "event_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3945
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider;->access$1300(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_59

    goto :goto_33

    .line 3948
    :catchall_59
    move-exception v0

    if-eqz v7, :cond_5f

    .line 3949
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0

    .line 3948
    :cond_60
    if-eqz v7, :cond_65

    .line 3949
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3953
    .end local v7           #reminderCursor:Landroid/database/Cursor;
    .end local v8           #reminderValues:Landroid/content/ContentValues;
    :cond_65
    return-void
.end method

.method private rowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "diffsCursor"
    .parameter "values"

    .prologue
    .line 4066
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 4068
    const-string v0, "_sync_id"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4069
    const-string v0, "_sync_time"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4070
    const-string v0, "_sync_version"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4071
    const-string v0, "_sync_dirty"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4072
    const-string v0, "_sync_account"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4073
    const-string v0, "htmlUri"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4074
    const-string v0, "title"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4075
    const-string v0, "eventLocation"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4076
    const-string v0, "description"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4077
    const-string v0, "eventStatus"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4078
    const-string v0, "selfAttendeeStatus"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4080
    const-string v0, "commentsUri"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4081
    const-string v0, "dtstart"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4082
    const-string v0, "dtend"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4083
    const-string v0, "eventTimezone"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4084
    const-string v0, "duration"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4085
    const-string v0, "allDay"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4086
    const-string v0, "visibility"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4087
    const-string v0, "transparency"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4088
    const-string v0, "hasAlarm"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4089
    const-string v0, "hasExtendedProperties"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4091
    const-string v0, "rrule"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4092
    const-string v0, "originalEvent"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4093
    const-string v0, "originalInstanceTime"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4095
    const-string v0, "originalAllDay"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4097
    const-string v0, "lastDate"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4098
    const-string v0, "calendar_id"

    invoke-static {p1, v0, p2}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4099
    return-void
.end method


# virtual methods
.method protected cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cursor"
    .parameter "map"

    .prologue
    .line 3850
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->rowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3851
    return-void
.end method

.method public deleteRow(Landroid/database/Cursor;)V
    .registers 16
    .parameter "localCursor"

    .prologue
    .line 4034
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4035
    .local v9, localId:J
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v0, v9, v10}, Lcom/android/providers/calendar/CalendarProvider;->access$1900(Lcom/android/providers/calendar/CalendarProvider;J)V

    .line 4039
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$400()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rrule"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "rdate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "originalEvent"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4043
    .local v8, c:Landroid/database/Cursor;
    :try_start_46
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 4052
    const-string v0, "rrule"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4053
    .local v13, rrule:Ljava/lang/String;
    const-string v0, "rdate"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4054
    .local v12, rdate:Ljava/lang/String;
    const-string v0, "originalEvent"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4055
    .local v11, origEvent:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 4057
    :cond_79
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_80
    .catchall {:try_start_46 .. :try_end_80} :catchall_87

    .line 4060
    :cond_80
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4062
    invoke-super {p0, p1}, Landroid/content/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 4063
    return-void

    .line 4060
    .end local v11           #origEvent:Ljava/lang/String;
    .end local v12           #rdate:Ljava/lang/String;
    .end local v13           #rrule:Ljava/lang/String;
    :catchall_87
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 16
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 3855
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p2, v0}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->rowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3856
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 3857
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider;->access$800(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3858
    .local v4, rowId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_38

    .line 3859
    const-string v0, "CalendarProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to insert values into calendar db: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :goto_37
    return-void

    .line 3863
    :cond_38
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, diffsRowId:J
    move-object v0, p0

    move-object v1, p1

    .line 3866
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->insertAttendees(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, p0

    move-object v1, p1

    .line 3867
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->insertRemindersIfNecessary(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, p0

    move-object v1, p1

    .line 3868
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->insertExtendedPropertiesIfNecessary(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V

    .line 3869
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {v0, v4, v5, v1}, Lcom/android/providers/calendar/CalendarProvider;->access$900(Lcom/android/providers/calendar/CalendarProvider;JLandroid/content/ContentValues;)V

    .line 3870
    iget-object v7, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    iget-object v8, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-wide v9, v4

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lcom/android/providers/calendar/CalendarProvider;->access$1000(Lcom/android/providers/calendar/CalendarProvider;Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 3871
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {v0, v4, v5, v1}, Lcom/android/providers/calendar/CalendarProvider;->access$1100(Lcom/android/providers/calendar/CalendarProvider;JLandroid/content/ContentValues;)V

    .line 3877
    invoke-direct {p0, v6, v4, v5}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->clearSyncDirtyFlag(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_37
.end method

.method protected notifyChanges()V
    .registers 5

    .prologue
    .line 3844
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3846
    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 6
    .parameter "localId"
    .parameter "syncId"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 4029
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 4030
    return-void
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 23
    .parameter "localId"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 3987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->rowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 3988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 3989
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    move-object v0, v4

    move-wide/from16 v1, p1

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->access$1500(Lcom/android/providers/calendar/CalendarProvider;JLandroid/content/ContentValues;)V

    .line 3990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mTable:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 3992
    .local v17, numRows:I
    if-gtz v17, :cond_6c

    .line 3993
    const-string v4, "CalendarProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to update calendar db: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    :goto_6b
    return-void

    .line 3997
    :cond_6c
    const-string v4, "_id"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p4

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4002
    .local v6, diffsRowId:J
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$1600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v10, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4003
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$1700()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v10, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4004
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider;->access$1800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v10, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-wide/from16 v8, p1

    .line 4008
    invoke-direct/range {v4 .. v10}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->insertAttendees(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-wide/from16 v8, p1

    .line 4010
    invoke-direct/range {v4 .. v10}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->insertRemindersIfNecessary(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-wide/from16 v8, p1

    .line 4013
    invoke-direct/range {v4 .. v10}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->insertExtendedPropertiesIfNecessary(Landroid/content/ContentProvider;JJLandroid/database/sqlite/SQLiteDatabase;)V

    .line 4015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    move-object v0, v4

    move-wide/from16 v1, p1

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->access$900(Lcom/android/providers/calendar/CalendarProvider;JLandroid/content/ContentValues;)V

    .line 4016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->mValues:Landroid/content/ContentValues;

    move-object v12, v0

    const/4 v15, 0x0

    move-wide/from16 v13, p1

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/android/providers/calendar/CalendarProvider;->access$1000(Lcom/android/providers/calendar/CalendarProvider;Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 4022
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;->clearSyncDirtyFlag(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_6b
.end method
