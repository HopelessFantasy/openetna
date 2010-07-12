.class final Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%17s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%17s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%17s %8d %17s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .parameter

    .prologue
    .line 1269
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    .line 1715
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    return-void
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Ljava/util/Map;)V
    .registers 15
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "debugMode"
    .parameter "isRestrictedBackupMode"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZ",
            "Landroid/content/res/Configuration;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1439
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p11, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-static {p1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 1441
    if-eqz p11, :cond_8

    .line 1443
    invoke-static {p11}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1446
    :cond_8
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$AppBindData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1447
    .local v0, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1448
    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1449
    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 1450
    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 1451
    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    .line 1452
    iput-object p6, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 1453
    iput-object p7, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1454
    iput p8, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 1455
    iput-boolean p9, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 1456
    iput-object p10, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 1457
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6e

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1458
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 59
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1549
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v32, v48, v50

    .line 1550
    .local v32, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v28, v48, v50

    .line 1551
    .local v28, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v30, v48, v50

    .line 1553
    .local v30, nativeFree:J
    new-instance v27, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v27 .. v27}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 1554
    .local v27, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v27 .. v27}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 1556
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v35, v0

    .line 1557
    .local v35, nativeShared:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v21, v0

    .line 1558
    .local v21, dalvikShared:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v38, v0

    .line 1560
    .local v38, otherShared:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v34, v0

    .line 1561
    .local v34, nativePrivate:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v20, v0

    .line 1562
    .local v20, dalvikPrivate:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v37, v0

    .line 1564
    .local v37, otherPrivate:I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v40

    .line 1566
    .local v40, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v18, v48, v50

    .line 1567
    .local v18, dalvikMax:J
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v16, v48, v50

    .line 1568
    .local v16, dalvikFree:J
    sub-long v14, v18, v16

    .line 1569
    .local v14, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v44

    .line 1570
    .local v44, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootInstanceCount()J

    move-result-wide v46

    .line 1571
    .local v46, viewRootInstanceCount:J
    invoke-static {}, Landroid/app/ApplicationContext;->getInstanceCount()J

    move-result-wide v6

    .line 1572
    .local v6, appContextInstanceCount:J
    invoke-static {}, Landroid/app/Activity;->getInstanceCount()J

    move-result-wide v4

    .line 1573
    .local v4, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v23

    .line 1574
    .local v23, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v24

    .line 1575
    .local v24, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v12

    .line 1576
    .local v12, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    .line 1577
    .local v13, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v11

    .line 1578
    .local v11, binderDeathObjectCount:I
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInstanceCount()I

    move-result v36

    .line 1579
    .local v36, openSslSocketCount:I
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getHeapAllocatedSize()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v41, v48, v50

    .line 1580
    .local v41, sqliteAllocated:J
    new-instance v43, Landroid/database/sqlite/SQLiteDebug$PagerStats;

    invoke-direct/range {v43 .. v43}, Landroid/database/sqlite/SQLiteDebug$PagerStats;-><init>()V

    .line 1581
    .local v43, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static/range {v43 .. v43}, Landroid/database/sqlite/SQLiteDebug;->getPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V

    .line 1584
    const/16 v22, 0x0

    .line 1585
    .local v22, doCheckinFormat:Z
    if-eqz p3, :cond_b6

    .line 1586
    move-object/from16 v9, p3

    .local v9, arr$:[Ljava/lang/String;
    move-object v0, v9

    array-length v0, v0

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_9e
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b6

    aget-object v8, v9, v25

    .line 1587
    .local v8, arg:Ljava/lang/String;
    const-string v48, "-c"

    move-object/from16 v0, v48

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_b3

    const/16 v22, 0x1

    .line 1586
    :cond_b3
    add-int/lit8 v25, v25, 0x1

    goto :goto_9e

    .line 1592
    .end local v8           #arg:Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v25           #i$:I
    .end local v26           #len$:I
    :cond_b6
    if-eqz v22, :cond_3ce

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v48, v0

    if-eqz v48, :cond_3c8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v39, v48

    .line 1599
    .local v39, processName:Ljava/lang/String;
    :goto_da
    const/16 v48, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1600
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v48

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1601
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1604
    move-object/from16 v0, p2

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1605
    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1606
    const-string v48, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1607
    add-long v48, v32, v18

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1610
    move-object/from16 v0, p2

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1611
    move-object/from16 v0, p2

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1612
    const-string v48, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1613
    add-long v48, v28, v14

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1616
    move-object/from16 v0, p2

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1617
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1618
    const-string v48, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1619
    add-long v48, v30, v16

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1622
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v48, v0

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1623
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v48, v0

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1624
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v48, v0

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1625
    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v48, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v49, v0

    add-int v48, v48, v49

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v49, v0

    add-int v48, v48, v49

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1628
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1629
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1630
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1631
    add-int v48, v35, v21

    add-int v48, v48, v38

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1634
    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1635
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1636
    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1637
    add-int v48, v34, v20

    add-int v48, v48, v37

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1640
    move-object/from16 v0, p2

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1641
    move-object/from16 v0, p2

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1642
    move-object/from16 v0, p2

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1643
    move-object/from16 v0, p2

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1645
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1646
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1647
    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1648
    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1650
    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1651
    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1654
    move-object/from16 v0, p2

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1655
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->databaseBytes:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1656
    move-object/from16 v0, v43

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->numPagers:I

    move/from16 v48, v0

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1657
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->totalBytes:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->referencedBytes:J

    move-wide/from16 v50, v0

    sub-long v48, v48, v50

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1658
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->referencedBytes:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    move-object/from16 v0, p2

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v48, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1712
    .end local v39           #processName:Ljava/lang/String;
    :cond_3c7
    :goto_3c7
    return-void

    .line 1595
    :cond_3c8
    const-string v48, "unknown"

    move-object/from16 v39, v48

    goto/16 :goto_da

    .line 1664
    :cond_3ce
    const-string v48, "%17s %8s %8s %8s %8s"

    const/16 v49, 0x5

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, ""

    aput-object v51, v49, v50

    const/16 v50, 0x1

    const-string v51, "native"

    aput-object v51, v49, v50

    const/16 v50, 0x2

    const-string v51, "dalvik"

    aput-object v51, v49, v50

    const/16 v50, 0x3

    const-string v51, "other"

    aput-object v51, v49, v50

    const/16 v50, 0x4

    const-string v51, "total"

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    const-string v48, "%17s %8s %8s %8s %8s"

    const/16 v49, 0x5

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "size:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x3

    const-string v51, "N/A"

    aput-object v51, v49, v50

    const/16 v50, 0x4

    add-long v51, v32, v18

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1666
    const-string v48, "%17s %8s %8s %8s %8s"

    const/16 v49, 0x5

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "allocated:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x3

    const-string v51, "N/A"

    aput-object v51, v49, v50

    const/16 v50, 0x4

    add-long v51, v28, v14

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    const-string v48, "%17s %8s %8s %8s %8s"

    const/16 v49, 0x5

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "free:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x3

    const-string v51, "N/A"

    aput-object v51, v49, v50

    const/16 v50, 0x4

    add-long v51, v30, v16

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1671
    const-string v48, "%17s %8s %8s %8s %8s"

    const/16 v49, 0x5

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "(Pss):"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x3

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x4

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v51, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v52, v0

    add-int v51, v51, v52

    move-object/from16 v0, v27

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v52, v0

    add-int v51, v51, v52

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1674
    const-string v48, "%17s %8s %8s %8s %8s"

    const/16 v49, 0x5

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "(shared dirty):"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x3

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x4

    add-int v51, v35, v21

    add-int v51, v51, v38

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1676
    const-string v48, "%17s %8s %8s %8s %8s"

    const/16 v49, 0x5

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "(priv dirty):"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x3

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x4

    add-int v51, v34, v20

    add-int v51, v51, v37

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    const-string v48, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    const-string v48, " Objects"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    const-string v48, "%17s %8d %17s %8d"

    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "Views:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    const-string v51, "ViewRoots:"

    aput-object v51, v49, v50

    const/16 v50, 0x3

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1684
    const-string v48, "%17s %8d %17s %8d"

    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "AppContexts:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    const-string v51, "Activities:"

    aput-object v51, v49, v50

    const/16 v50, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1687
    const-string v48, "%17s %8d %17s %8d"

    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "Assets:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    const-string v51, "AssetManagers:"

    aput-object v51, v49, v50

    const/16 v50, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1690
    const-string v48, "%17s %8d %17s %8d"

    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "Local Binders:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    const-string v51, "Proxy Binders:"

    aput-object v51, v49, v50

    const/16 v50, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1692
    const-string v48, "%17s %8d"

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "Death Recipients:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1694
    const-string v48, "%17s %8d"

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "OpenSSL Sockets:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1697
    const-string v48, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    const-string v48, " SQL"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    const-string v48, "%17s %8d %17s %8d"

    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "heap:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    const-string v51, "dbFiles:"

    aput-object v51, v49, v50

    const/16 v50, 0x3

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->databaseBytes:J

    move-wide/from16 v51, v0

    const-wide/16 v53, 0x400

    div-long v51, v51, v53

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1701
    const-string v48, "%17s %8d %17s %8d"

    const/16 v49, 0x4

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "numPagers:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->numPagers:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x2

    const-string v51, "inactivePageKB:"

    aput-object v51, v49, v50

    const/16 v50, 0x3

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->totalBytes:J

    move-wide/from16 v51, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->referencedBytes:J

    move-wide/from16 v53, v0

    sub-long v51, v51, v53

    const-wide/16 v53, 0x400

    div-long v51, v51, v53

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1703
    const-string v48, "%17s %8d"

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "activePageKB:"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->referencedBytes:J

    move-wide/from16 v51, v0

    const-wide/16 v53, 0x400

    div-long v51, v51, v53

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1706
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v10

    .line 1707
    .local v10, assetAlloc:Ljava/lang/String;
    if-eqz v10, :cond_3c7

    .line 1708
    const-string v48, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    const-string v48, " Asset Allocations"

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3c7
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 1485
    new-instance v0, Landroid/app/ActivityThread$DumpServiceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$DumpServiceInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1486
    .local v0, data:Landroid/app/ActivityThread$DumpServiceInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    .line 1487
    iput-object p2, v0, Landroid/app/ActivityThread$DumpServiceInfo;->service:Landroid/os/IBinder;

    .line 1488
    iput-object p3, v0, Landroid/app/ActivityThread$DumpServiceInfo;->args:[Ljava/lang/String;

    .line 1489
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 1490
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7b

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1491
    monitor-enter v0

    .line 1492
    :goto_17
    :try_start_17
    iget-boolean v1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_23

    if-nez v1, :cond_21

    .line 1494
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_17

    .line 1495
    :catch_1f
    move-exception v1

    goto :goto_17

    .line 1500
    :cond_21
    :try_start_21
    monitor-exit v0

    .line 1501
    return-void

    .line 1500
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public processInBackground()V
    .registers 4

    .prologue
    const/16 v2, 0x78

    .line 1480
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1481
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1482
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .parameter "start"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 1529
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ProfilerControlData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1530
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 1531
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1532
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7f

    if-eqz p1, :cond_15

    const/4 v3, 0x1

    :goto_11
    invoke-static {v1, v2, v0, v3}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1533
    return-void

    .line 1532
    :cond_15
    const/4 v3, 0x0

    goto :goto_11
.end method

.method public requestPss()V
    .registers 4

    .prologue
    .line 1522
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getPss(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->reportPss(Landroid/app/IApplicationThread;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1526
    :goto_10
    return-void

    .line 1524
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1466
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 1517
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1518
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .registers 7
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"

    .prologue
    .line 1403
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$BindServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1404
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1405
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1406
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 1408
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1409
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 1469
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1470
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 1471
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12

    .line 1472
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1473
    return-void

    .line 1471
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .registers 6
    .parameter "app"
    .parameter "backupMode"

    .prologue
    .line 1378
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1379
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1380
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 1382
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1383
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;)V
    .registers 6
    .parameter "token"
    .parameter "info"

    .prologue
    .line 1394
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1395
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 1396
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 1398
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1399
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .registers 7
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6d

    if-eqz p2, :cond_b

    const/4 v2, 0x1

    :goto_7
    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1361
    return-void

    .line 1359
    :cond_b
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .parameter "app"

    .prologue
    .line 1386
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1387
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1389
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1390
    return-void
.end method

.method public final scheduleExit()V
    .registers 4

    .prologue
    .line 1461
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1462
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V
    .registers 13
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1315
    .local p6, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p7, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$ActivityRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityRecord;-><init>()V

    .line 1317
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    .line 1318
    iput p3, v0, Landroid/app/ActivityThread$ActivityRecord;->ident:I

    .line 1319
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    .line 1320
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1321
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    .line 1323
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    .line 1324
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    .line 1326
    iput-boolean p8, v0, Landroid/app/ActivityThread$ActivityRecord;->startsNotResumed:Z

    .line 1327
    iput-boolean p9, v0, Landroid/app/ActivityThread$ActivityRecord;->isForward:Z

    .line 1329
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x64

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1330
    return-void
.end method

.method public scheduleLowMemory()V
    .registers 4

    .prologue
    .line 1513
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1514
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1350
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$NewIntentData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1351
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 1352
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 1354
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1355
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .registers 8
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_d

    const/16 v1, 0x66

    :goto_6
    if-eqz p3, :cond_10

    const/4 v2, 0x1

    :goto_9
    invoke-static {v0, v1, p1, v2, p4}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1284
    return-void

    .line 1279
    :cond_d
    const/16 v1, 0x65

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 10
    .parameter "intent"
    .parameter "info"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 1365
    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1367
    .local v0, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p1, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 1368
    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 1369
    iput p3, v0, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    .line 1370
    iput-object p4, v0, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    .line 1371
    iput-object p5, v0, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    .line 1372
    iput-boolean p6, v0, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    .line 1374
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1375
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 7
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1509
    invoke-interface/range {p1 .. p6}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 1510
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZ)V
    .registers 9
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1335
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$ActivityRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityRecord;-><init>()V

    .line 1337
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    .line 1338
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    .line 1339
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    .line 1340
    iput-boolean p5, v0, Landroid/app/ActivityThread$ActivityRecord;->startsNotResumed:Z

    .line 1342
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1343
    :try_start_12
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_22

    .line 1346
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7e

    invoke-static {v1, v2, v0, p4}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1347
    return-void

    .line 1344
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .registers 6
    .parameter "token"
    .parameter "isForward"

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6b

    if-eqz p2, :cond_b

    const/4 v2, 0x1

    :goto_7
    invoke-static {v0, v1, p1, v2}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1301
    return-void

    .line 1300
    :cond_b
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 6
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1304
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ResultData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1305
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 1306
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 1307
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1308
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .registers 7
    .parameter "token"
    .parameter "startId"
    .parameter "args"

    .prologue
    .line 1421
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ServiceArgsData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1422
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 1423
    iput p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 1424
    iput-object p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 1426
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1427
    return-void
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .registers 7
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_b

    const/16 v1, 0x67

    :goto_6
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1291
    return-void

    .line 1288
    :cond_b
    const/16 v1, 0x68

    goto :goto_6
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1431
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 6
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 1412
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$BindServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1413
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1414
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1416
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1417
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .registers 5
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_a

    const/16 v1, 0x69

    :goto_6
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1297
    return-void

    .line 1294
    :cond_a
    const/16 v1, 0x6a

    goto :goto_6
.end method

.method public setSchedulingGroup(I)V
    .registers 6
    .parameter "group"

    .prologue
    .line 1541
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1545
    :goto_7
    return-void

    .line 1542
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 1543
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public updateTimeZone()V
    .registers 2

    .prologue
    .line 1476
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1477
    return-void
.end method
