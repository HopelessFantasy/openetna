.class Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/android/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadBusyBitsRequest"
.end annotation


# instance fields
.field public allDayCounts:[I

.field public busybits:[I

.field public numDays:I

.field public startDay:I

.field public uiCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II[I[ILjava/lang/Runnable;)V
    .registers 6
    .parameter "startDay"
    .parameter "numDays"
    .parameter "busybits"
    .parameter "allDayCounts"
    .parameter "uiCallback"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->startDay:I

    .line 64
    iput p2, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->numDays:I

    .line 65
    iput-object p3, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->busybits:[I

    .line 66
    iput-object p4, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->allDayCounts:[I

    .line 67
    iput-object p5, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->uiCallback:Ljava/lang/Runnable;

    .line 68
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .registers 12
    .parameter "eventLoader"

    .prologue
    const/4 v9, 0x0

    .line 71
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v7

    .line 72
    .local v7, handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$100(Lcom/android/calendar/EventLoader;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 75
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .local v6, dayIndex:I
    :goto_a
    iget v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->numDays:I

    if-ge v6, v8, :cond_19

    .line 76
    iget-object v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->busybits:[I

    aput v9, v8, v6

    .line 77
    iget-object v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->allDayCounts:[I

    aput v9, v8, v6

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 80
    :cond_19
    iget v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->startDay:I

    iget v9, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->numDays:I

    invoke-static {v2, v8, v9}, Landroid/provider/Calendar$BusyBits;->query(Landroid/content/ContentResolver;II)Landroid/database/Cursor;

    move-result-object v3

    .line 82
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_21
    const-string v8, "day"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 83
    .local v5, dayColumnIndex:I
    const-string v8, "busyBits"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, busybitColumnIndex:I
    const-string v8, "allDayCount"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, allDayCountColumnIndex:I
    :goto_33
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 87
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 88
    .local v4, day:I
    iget v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->startDay:I

    sub-int v6, v4, v8

    .line 89
    iget-object v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->busybits:[I

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v8, v6

    .line 90
    iget-object v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->allDayCounts:[I

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v8, v6
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_52

    goto :goto_33

    .line 93
    .end local v0           #allDayCountColumnIndex:I
    .end local v1           #busybitColumnIndex:I
    .end local v4           #day:I
    .end local v5           #dayColumnIndex:I
    :catchall_52
    move-exception v8

    if-eqz v3, :cond_58

    .line 94
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v8

    .line 93
    .restart local v0       #allDayCountColumnIndex:I
    .restart local v1       #busybitColumnIndex:I
    .restart local v5       #dayColumnIndex:I
    :cond_59
    if-eqz v3, :cond_5e

    .line 94
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_5e
    iget-object v8, p0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;->uiCallback:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .registers 2
    .parameter "eventLoader"

    .prologue
    .line 101
    return-void
.end method
