.class public Lcom/android/calendar/DismissAllAlarmsService;
.super Landroid/app/IntentService;
.source "DismissAllAlarmsService.java"


# static fields
.field private static final COLUMN_INDEX_STATE:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "DismissAllAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 50
    sget-object v1, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 51
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "state=1"

    .line 52
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/DismissAllAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/calendar/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_28

    .line 55
    const/4 v2, -0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 56
    :goto_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 57
    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-interface {v6, v2, v4}, Landroid/database/Cursor;->updateInt(II)Z

    goto :goto_16

    .line 59
    :cond_22
    invoke-interface {v6}, Landroid/database/Cursor;->commitUpdates()Z

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_28
    invoke-virtual {p0}, Lcom/android/calendar/DismissAllAlarmsService;->stopSelf()V

    .line 65
    return-void
.end method
