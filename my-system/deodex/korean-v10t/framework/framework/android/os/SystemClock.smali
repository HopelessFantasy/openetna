.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static native currentThreadTimeMillis()J
.end method

.method public static native elapsedRealtime()J
.end method

.method public static native setCurrentTimeMillis(J)Z
.end method

.method public static sleep(J)V
    .registers 12
    .parameter "ms"

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 104
    .local v4, start:J
    move-wide v0, p0

    .line 105
    .local v0, duration:J
    const/4 v3, 0x0

    .line 108
    .local v3, interrupted:Z
    :cond_6
    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_21

    .line 113
    :goto_9
    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 114
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_6

    .line 116
    if-eqz v3, :cond_20

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 122
    :cond_20
    return-void

    .line 110
    :catch_21
    move-exception v2

    .line 111
    .local v2, e:Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_9
.end method

.method public static native uptimeMillis()J
.end method
