.class Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;
.super Ljava/lang/Object;
.source "ApacheHttpRequestAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/ApacheHttpRequestAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalConsumed"
.end annotation


# instance fields
.field private mConsumed:Z

.field final synthetic this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;


# direct methods
.method constructor <init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V
    .registers 3
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->mConsumed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized packetConsumed()V
    .registers 2

    .prologue
    .line 285
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->mConsumed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_b

    .line 287
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 288
    :catch_9
    move-exception v0

    goto :goto_1

    .line 295
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->mConsumed:Z

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 297
    monitor-exit p0

    return-void

    .line 285
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitUntilPacketConsumed()V
    .registers 2

    .prologue
    .line 271
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->mConsumed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_b

    .line 273
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 274
    :catch_9
    move-exception v0

    goto :goto_1

    .line 281
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->mConsumed:Z

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 283
    monitor-exit p0

    return-void

    .line 271
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
