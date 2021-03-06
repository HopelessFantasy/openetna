.class public Lcom/android/calendar/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventLoader$1;,
        Lcom/android/calendar/EventLoader$LoaderThread;,
        Lcom/android/calendar/EventLoader$LoadEventsRequest;,
        Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;,
        Lcom/android/calendar/EventLoader$ShutdownRequest;,
        Lcom/android/calendar/EventLoader$LoadRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    iput-object p1, p0, Lcom/android/calendar/EventLoader;->mContext:Landroid/content/Context;

    .line 191
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EventLoader;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/EventLoader;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method loadBusyBitsInBackground(II[I[ILjava/lang/Runnable;)V
    .registers 13
    .parameter "startDay"
    .parameter "numDays"
    .parameter "busybits"
    .parameter "allDayCounts"
    .parameter "uiCallback"

    .prologue
    .line 244
    new-instance v0, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;-><init>(II[I[ILjava/lang/Runnable;)V

    .line 248
    .local v0, request:Lcom/android/calendar/EventLoader$LoadBusyBitsRequest;
    :try_start_a
    iget-object v1, p0, Lcom/android/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    .line 255
    :goto_f
    return-void

    .line 249
    :catch_10
    move-exception v1

    move-object v6, v1

    .line 253
    .local v6, ex:Ljava/lang/InterruptedException;
    const-string v1, "Cal"

    const-string v2, "loadBusyBitsInBackground() interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 16
    .parameter "numDays"
    .parameter
    .parameter "start"
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v2, p0, Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 228
    .local v1, id:I
    new-instance v0, Lcom/android/calendar/EventLoader$LoadEventsRequest;

    move-wide v2, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 232
    .local v0, request:Lcom/android/calendar/EventLoader$LoadEventsRequest;
    :try_start_10
    iget-object v2, p0, Lcom/android/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16

    .line 239
    :goto_15
    return-void

    .line 233
    :catch_16
    move-exception v2

    move-object v8, v2

    .line 237
    .local v8, ex:Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "loadEventsInBackground() interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public startBackgroundThread()V
    .registers 3

    .prologue
    .line 199
    new-instance v0, Lcom/android/calendar/EventLoader$LoaderThread;

    iget-object v1, p0, Lcom/android/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/android/calendar/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/android/calendar/EventLoader;)V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

    .line 200
    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader$LoaderThread;->start()V

    .line 201
    return-void
.end method

.method public stopBackgroundThread()V
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader$LoaderThread;->shutdown()V

    .line 208
    return-void
.end method
