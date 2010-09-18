.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$1;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPreCpuTime:J

.field private mPrePerfMetrics:Landroid/os/Bundle;

.field private mRunner:Ljava/lang/Thread;

.field private mStart:J

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 77
    iput-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 78
    iput-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPrePerfMetrics:Landroid/os/Bundle;

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 93
    return-void
.end method

.method static synthetic access$100(Landroid/app/Instrumentation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Instrumentation;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object v0
.end method

.method private addPerfMetricInt(Ljava/lang/String;I)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    return-void
.end method

.method private addPerfMetricLong(Ljava/lang/String;J)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 277
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 278
    return-void
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .parameter "key"
    .parameter "value"
    .parameter "results"

    .prologue
    .line 1313
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1314
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1315
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_13

    .line 1316
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13
    :goto_13
    return-void

    .line 1319
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_13
.end method

.method static checkStartActivityResult(ILandroid/content/Intent;)V
    .registers 5
    .parameter "res"
    .parameter "intent"

    .prologue
    .line 1472
    if-ltz p0, :cond_3

    .line 1473
    return-void

    .line 1476
    :cond_3
    packed-switch p0, :pswitch_data_90

    .line 1493
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :pswitch_29
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 1480
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_56
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :pswitch_6f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1490
    :pswitch_88
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    :pswitch_data_90
    .packed-switch -0x4
        :pswitch_6f
        :pswitch_88
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1034
    .local v0, app:Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1035
    return-object v0
.end method

.method private final validateNotAppThread()V
    .registers 3

    .prologue
    .line 1499
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1500
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1503
    :cond_e
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .parameter "filter"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 698
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 699
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 700
    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .parameter "cls"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 721
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 722
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 723
    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .parameter "monitor"

    .prologue
    .line 671
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v1, :cond_e

    .line 673
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 675
    :cond_e
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    monitor-exit v0

    .line 677
    return-void

    .line 676
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 11
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1109
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v5, :cond_34

    .line 1110
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1111
    :try_start_7
    iget-object v6, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 1112
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v0, :cond_33

    .line 1113
    iget-object v6, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1114
    .local v2, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v2, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1115
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1116
    iput-object p1, v2, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1117
    iget-object v6, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v7, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v7, p0, v2}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v6, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1112
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1120
    .end local v2           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_59

    .line 1123
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_34
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1125
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v5, :cond_5d

    .line 1126
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1127
    :try_start_3e
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 1128
    .restart local v0       #N:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_45
    if-ge v3, v0, :cond_5c

    .line 1129
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1130
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1, p1, p1, v6}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5e

    .line 1128
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1120
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v3           #i:I
    :catchall_59
    move-exception v6

    :try_start_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v6

    .line 1132
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_5c
    :try_start_5c
    monitor-exit v5

    .line 1134
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_5d
    return-void

    .line 1132
    :catchall_5e
    move-exception v6

    monitor-exit v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_5e

    throw v6
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 10
    .parameter "activity"

    .prologue
    .line 1137
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v5, :cond_34

    .line 1138
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1139
    :try_start_7
    iget-object v6, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 1140
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v0, :cond_33

    .line 1141
    iget-object v6, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1142
    .local v2, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v2, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1143
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1144
    iput-object p1, v2, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1145
    iget-object v6, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v7, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v7, p0, v2}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v6, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1140
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1148
    .end local v2           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_59

    .line 1151
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_34
    invoke-virtual {p1}, Landroid/app/Activity;->onDestroy()V

    .line 1153
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v5, :cond_5d

    .line 1154
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1155
    :try_start_3e
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 1156
    .restart local v0       #N:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_45
    if-ge v3, v0, :cond_5c

    .line 1157
    iget-object v6, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1158
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1, p1, p1, v6}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5e

    .line 1156
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1148
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v3           #i:I
    :catchall_59
    move-exception v6

    :try_start_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v6

    .line 1160
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_5c
    :try_start_5c
    monitor-exit v5

    .line 1162
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_5d
    return-void

    .line 1160
    :catchall_5e
    move-exception v6

    monitor-exit v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_5e

    throw v6
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 1195
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1196
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1266
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1267
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1184
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1185
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1215
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1216
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 1172
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1173
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    .line 1225
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1227
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_26

    .line 1228
    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1229
    :try_start_a
    iget-object v4, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1230
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v0, :cond_25

    .line 1231
    iget-object v4, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1232
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, p1, p1, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1230
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1234
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_25
    monitor-exit v3

    .line 1236
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_26
    return-void

    .line 1234
    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v4
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 1256
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1257
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1205
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1206
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1245
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1246
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1276
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1277
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2
    .parameter "app"

    .prologue
    .line 1045
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1046
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 5
    .parameter "monitor"
    .parameter "minHits"

    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 741
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_6
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v1

    if-ge v1, p2, :cond_10

    .line 743
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    .line 747
    :goto_f
    return v0

    .line 745
    :cond_10
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 746
    monitor-exit v0

    .line 747
    const/4 v0, 0x1

    goto :goto_f

    .line 746
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public endPerformanceSnapshot()V
    .registers 31

    .prologue
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v26

    if-nez v26, :cond_1a8

    .line 221
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v6

    .line 222
    .local v6, cpuTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 224
    .local v14, duration:J
    invoke-virtual/range {p0 .. p0}, Landroid/app/Instrumentation;->stopAllocCounting()V

    .line 226
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v26

    const-wide/16 v28, 0x400

    div-long v23, v26, v28

    .line 227
    .local v23, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v26

    const-wide/16 v28, 0x400

    div-long v19, v26, v28

    .line 228
    .local v19, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v26

    const-wide/16 v28, 0x400

    div-long v21, v26, v28

    .line 230
    .local v21, nativeFree:J
    new-instance v18, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v18 .. v18}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 231
    .local v18, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v18 .. v18}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 233
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    .line 235
    .local v25, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v26

    const-wide/16 v28, 0x400

    div-long v12, v26, v28

    .line 236
    .local v12, dalvikMax:J
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    const-wide/16 v28, 0x400

    div-long v10, v26, v28

    .line 237
    .local v10, dalvikFree:J
    sub-long v8, v12, v10

    .line 240
    .local v8, dalvikAllocated:J
    invoke-virtual/range {p0 .. p0}, Landroid/app/Instrumentation;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v5

    .line 241
    .local v5, binderCounts:Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_70

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 242
    .local v17, key:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    goto :goto_53

    .line 246
    .end local v17           #key:Ljava/lang/String;
    :cond_70
    invoke-virtual/range {p0 .. p0}, Landroid/app/Instrumentation;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v4

    .line 247
    .local v4, allocCounts:Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_99

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 248
    .restart local v17       #key:Ljava/lang/String;
    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    goto :goto_7c

    .line 251
    .end local v17           #key:Ljava/lang/String;
    :cond_99
    const-string v26, "execution_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/Instrumentation;->mStart:J

    move-wide/from16 v27, v0

    sub-long v27, v14, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 252
    const-string v26, "pre_cpu_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/Instrumentation;->mPreCpuTime:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 253
    const-string v26, "cpu_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/Instrumentation;->mPreCpuTime:J

    move-wide/from16 v27, v0

    sub-long v27, v6, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 255
    const-string v26, "native_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 256
    const-string v26, "native_allocated"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 257
    const-string v26, "native_free"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 258
    const-string v26, "native_pss"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 259
    const-string v26, "native_private_dirty"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 260
    const-string v26, "native_shared_dirty"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 262
    const-string v26, "java_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 263
    const-string v26, "java_allocated"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 264
    const-string v26, "java_free"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    .line 265
    const-string v26, "java_pss"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 266
    const-string v26, "java_private_dirty"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 267
    const-string v26, "java_shared_dirty"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 269
    const-string v26, "other_pss"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 270
    const-string v26, "other_private_dirty"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 271
    const-string v26, "other_shared_dirty"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/app/Instrumentation;->addPerfMetricInt(Ljava/lang/String;I)V

    .line 274
    .end local v4           #allocCounts:Landroid/os/Bundle;
    .end local v5           #binderCounts:Landroid/os/Bundle;
    .end local v6           #cpuTime:J
    .end local v8           #dalvikAllocated:J
    .end local v10           #dalvikFree:J
    .end local v12           #dalvikMax:J
    .end local v14           #duration:J
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #memInfo:Landroid/os/Debug$MemoryInfo;
    .end local v19           #nativeAllocated:J
    .end local v21           #nativeFree:J
    .end local v23           #nativeMax:J
    .end local v25           #runtime:Ljava/lang/Runtime;
    :cond_1a8
    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 26
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1432
    move-object/from16 v0, p2

    check-cast v0, Landroid/app/IApplicationThread;

    move-object v5, v0

    .line 1433
    .local v5, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_5f

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4

    .line 1435
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    .line 1436
    .local v15, N:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1d
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_5e

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1438
    .local v16, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 1439
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1440
    invoke-virtual/range {v16 .. v16}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1441
    if-ltz p6, :cond_59

    invoke-virtual/range {v16 .. v16}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v5

    .end local v5           #whoThread:Landroid/app/IApplicationThread;
    :goto_56
    monitor-exit v4

    move-object v4, v5

    .line 1457
    .end local v15           #N:I
    .end local v16           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v17           #i:I
    :goto_58
    return-object v4

    .line 1441
    .restart local v5       #whoThread:Landroid/app/IApplicationThread;
    .restart local v15       #N:I
    .restart local v16       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v17       #i:I
    :cond_59
    const/4 v5, 0x0

    goto :goto_56

    .line 1436
    :cond_5b
    add-int/lit8 v17, v17, 0x1

    goto :goto_1d

    .line 1446
    .end local v16           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_8d

    .line 1449
    .end local v15           #N:I
    .end local v17           #i:I
    :cond_5f
    :try_start_5f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p5

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p4, :cond_90

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v6, v0

    move-object v11, v6

    :goto_78
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p5

    move-object/from16 v10, p3

    move/from16 v12, p6

    invoke-interface/range {v4 .. v14}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v18

    .line 1454
    .local v18, result:I
    move/from16 v0, v18

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILandroid/content/Intent;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_8b} :catch_93

    .line 1457
    .end local v18           #result:I
    :goto_8b
    const/4 v4, 0x0

    goto :goto_58

    .line 1446
    .end local v5           #whoThread:Landroid/app/IApplicationThread;
    :catchall_8d
    move-exception v5

    :try_start_8e
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v5

    .line 1449
    .restart local v5       #whoThread:Landroid/app/IApplicationThread;
    :cond_90
    const/4 v6, 0x0

    move-object v11, v6

    goto :goto_78

    .line 1455
    :catch_93
    move-exception v4

    goto :goto_8b
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 183
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 186
    :cond_7
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 187
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 189
    :cond_10
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 1329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1330
    .local v0, results:Landroid/os/Bundle;
    const-string v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1331
    const-string v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1332
    const-string v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1333
    const-string v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1334
    const-string v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1335
    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 1343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1344
    .local v0, results:Landroid/os/Bundle;
    const-string v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1345
    const-string v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1346
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V
    .registers 7
    .parameter "thread"
    .parameter "instrContext"
    .parameter "appContext"
    .parameter "component"
    .parameter "watcher"

    .prologue
    .line 1463
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 1464
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 1465
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1466
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 1467
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 1468
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1469
    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 12
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    const/16 v7, 0x17

    const/4 v6, 0x0

    .line 850
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 856
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 857
    .local v1, downEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 860
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 862
    :try_start_11
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_30

    .line 868
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 869
    .local v3, upEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 872
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 896
    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 897
    .local v0, cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 898
    iget-boolean v4, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .end local v0           #cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    .end local v3           #upEvent:Landroid/view/KeyEvent;
    :goto_2f
    return v4

    .line 863
    :catch_30
    move-exception v4

    move-object v2, v4

    .line 864
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v4, "Instrumentation"

    const-string v5, "Could not sleep for long press timeout"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    .line 865
    goto :goto_2f
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 6
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 834
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 835
    .local v0, mr:Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 836
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public isProfiling()Z
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 24
    .parameter
    .parameter "context"
    .parameter "token"
    .parameter "application"
    .parameter "intent"
    .parameter "info"
    .parameter "title"
    .parameter "parent"
    .parameter "id"
    .parameter "lastNonConfigurationInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1075
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 1076
    .local v2, aThread:Landroid/app/ActivityThread;
    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, p2

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v12}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Landroid/content/res/Configuration;)V

    .line 1078
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 5
    .parameter "cl"
    .parameter "className"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1097
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .parameter "cl"
    .parameter "className"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "arguments"

    .prologue
    .line 111
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 289
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4
    .parameter "obj"
    .parameter "e"

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .parameter "monitor"

    .prologue
    .line 795
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runner"

    .prologue
    .line 412
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 413
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 414
    .local v0, sr:Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 416
    return-void
.end method

.method public sendCharacterSync(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 960
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 961
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 962
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .registers 4
    .parameter "key"

    .prologue
    .line 947
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 948
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 949
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 933
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 935
    :try_start_3
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    .line 939
    :goto_11
    return-void

    .line 937
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 976
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 978
    :try_start_3
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    .line 982
    :goto_11
    return-void

    .line 980
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 6
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 163
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_b

    .line 165
    :try_start_4
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v2, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 171
    :cond_b
    :goto_b
    return-void

    .line 167
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    goto :goto_b
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 908
    if-nez p1, :cond_3

    .line 921
    :cond_2
    return-void

    .line 911
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 914
    .local v2, keyCharacterMap:Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 916
    .local v0, events:[Landroid/view/KeyEvent;
    if-eqz v0, :cond_2

    .line 917
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 918
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 996
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 998
    :try_start_3
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    .line 1002
    :goto_11
    return-void

    .line 1000
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public setAutomaticPerformanceSnapshots()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 194
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 3
    .parameter "inTouch"

    .prologue
    .line 372
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 377
    :goto_d
    return-void

    .line 374
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public start()V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_c
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 123
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 10
    .parameter "intent"

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 441
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 442
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_af

    .line 444
    .end local p1
    .local v2, intent:Landroid/content/Intent;
    :try_start_b
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 446
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_37

    .line 447
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve activity for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_33

    .line 477
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catchall_33
    move-exception v5

    move-object p1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p1
    :goto_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_af

    throw v5

    .line 449
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_37
    :try_start_37
    iget-object v5, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, myProc:Ljava/lang/String;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 453
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resolved to different process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 458
    :cond_74
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    new-instance v1, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 462
    .local v1, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v5, :cond_92

    .line 463
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 465
    :cond_92
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9e
    .catchall {:try_start_37 .. :try_end_9e} :catchall_33

    .line 471
    :cond_9e
    :try_start_9e
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_9e .. :try_end_a3} :catch_b1

    .line 474
    :goto_a3
    :try_start_a3
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 476
    iget-object v5, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_a3 .. :try_end_ae} :catchall_33

    return-object v5

    .line 477
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #myProc:Ljava/lang/String;
    .restart local p1
    :catchall_af
    move-exception v5

    goto :goto_35

    .line 472
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #myProc:Ljava/lang/String;
    :catch_b1
    move-exception v5

    goto :goto_a3
.end method

.method public startAllocCounting()V
    .registers 2

    .prologue
    .line 1287
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1288
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1289
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1291
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1294
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1295
    return-void
.end method

.method public startPerformanceSnapshot()V
    .registers 7

    .prologue
    .line 197
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/app/Instrumentation;->mStart:J

    .line 198
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 200
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, binderCounts:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    .local v2, key:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Landroid/app/Instrumentation;->addPerfMetricLong(Ljava/lang/String;J)V

    goto :goto_16

    .line 208
    .end local v2           #key:Ljava/lang/String;
    :cond_3d
    invoke-virtual {p0}, Landroid/app/Instrumentation;->startAllocCounting()V

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/Instrumentation;->mStart:J

    .line 214
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/Instrumentation;->mPreCpuTime:J

    .line 216
    .end local v0           #binderCounts:Landroid/os/Bundle;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4c
    return-void
.end method

.method public startProfiling()V
    .registers 4

    .prologue
    .line 346
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 347
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x80

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 351
    .end local v0           #file:Ljava/io/File;
    :cond_23
    return-void
.end method

.method public stopAllocCounting()V
    .registers 2

    .prologue
    .line 1301
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1302
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1303
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1304
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1305
    return-void
.end method

.method public stopProfiling()V
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 358
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 360
    :cond_b
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .registers 5
    .parameter "recipient"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 388
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public waitForIdleSync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 397
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 398
    new-instance v0, Landroid/app/Instrumentation$Idler;

    invoke-direct {v0, v3}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 399
    .local v0, idler:Landroid/app/Instrumentation$Idler;
    iget-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 400
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v2, v3}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 402
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 5
    .parameter "monitor"

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 761
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    :try_start_7
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 763
    monitor-exit v1

    .line 764
    return-object v0

    .line 763
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 7
    .parameter "monitor"
    .parameter "timeOut"

    .prologue
    .line 779
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 780
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    :try_start_7
    iget-object v2, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 782
    monitor-exit v1

    .line 783
    return-object v0

    .line 782
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method
