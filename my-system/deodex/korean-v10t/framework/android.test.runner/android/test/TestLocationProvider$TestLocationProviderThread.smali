.class Landroid/test/TestLocationProvider$TestLocationProviderThread;
.super Ljava/lang/Thread;
.source "TestLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestLocationProviderThread"
.end annotation


# instance fields
.field private mDone:Z

.field final synthetic this$0:Landroid/test/TestLocationProvider;


# direct methods
.method public constructor <init>(Landroid/test/TestLocationProvider;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Landroid/test/TestLocationProvider$TestLocationProviderThread;->this$0:Landroid/test/TestLocationProvider;

    .line 57
    const-string v0, "TestLocationProviderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/TestLocationProvider$TestLocationProviderThread;->mDone:Z

    .line 58
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/test/TestLocationProvider$TestLocationProviderThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_17

    .line 65
    const-wide/16 v0, 0x3e8

    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_19

    .line 69
    :goto_a
    :try_start_a
    iget-boolean v0, p0, Landroid/test/TestLocationProvider$TestLocationProviderThread;->mDone:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Landroid/test/TestLocationProvider$TestLocationProviderThread;->this$0:Landroid/test/TestLocationProvider;

    invoke-static {v0}, Landroid/test/TestLocationProvider;->access$000(Landroid/test/TestLocationProvider;)V

    goto :goto_1

    .line 73
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_14

    .line 74
    return-void

    .line 66
    :catch_19
    move-exception v0

    goto :goto_a
.end method

.method declared-synchronized setDone()V
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/test/TestLocationProvider$TestLocationProviderThread;->mDone:Z

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
