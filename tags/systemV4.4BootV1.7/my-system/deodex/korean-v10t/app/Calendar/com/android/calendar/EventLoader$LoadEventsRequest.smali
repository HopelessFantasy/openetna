.class Lcom/android/calendar/EventLoader$LoadEventsRequest;
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
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startMillis:J

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 8
    .parameter "id"
    .parameter "startMillis"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    .line 116
    iput-wide p2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    .line 117
    iput p4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    .line 118
    iput-object p5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 119
    iput-object p6, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 120
    iput-object p7, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 121
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .registers 9
    .parameter "eventLoader"

    .prologue
    .line 124
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$200(Lcom/android/calendar/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    iget v4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iget v5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 128
    iget v0, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 129
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :goto_28
    return-void

    .line 131
    :cond_29
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .registers 4
    .parameter "eventLoader"

    .prologue
    .line 136
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method
