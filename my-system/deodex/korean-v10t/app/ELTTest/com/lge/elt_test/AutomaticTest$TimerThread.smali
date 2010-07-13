.class Lcom/lge/elt_test/AutomaticTest$TimerThread;
.super Ljava/lang/Thread;
.source "AutomaticTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/elt_test/AutomaticTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/AutomaticTest;


# direct methods
.method private constructor <init>(Lcom/lge/elt_test/AutomaticTest;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/lge/elt_test/AutomaticTest$TimerThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/elt_test/AutomaticTest;Lcom/lge/elt_test/AutomaticTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/lge/elt_test/AutomaticTest$TimerThread;-><init>(Lcom/lge/elt_test/AutomaticTest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x3c

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 338
    .local v2, startTime:J
    :goto_6
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TimerThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1700(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 340
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TimerThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const/4 v5, 0x4

    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long v9, v0, v2

    const-wide/32 v11, 0x36ee80

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sub-long v9, v0, v2

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    rem-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sub-long v9, v0, v2

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    rem-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 341
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6

    .line 343
    .end local v0           #currentTime:J
    :cond_4f
    return-void
.end method
