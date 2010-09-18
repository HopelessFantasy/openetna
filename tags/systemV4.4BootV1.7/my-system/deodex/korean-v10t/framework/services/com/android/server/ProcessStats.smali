.class public Lcom/android/server/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I = null

.field private static final PROCESS_FULL_STATS_FORMAT:[I = null

.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xf

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 88
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_82

    sput-object v0, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 196
    new-instance v0, Lcom/android/server/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 39
    nop

    :array_2a
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 67
    :array_4c
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 88
    :array_6e
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 101
    :array_82
    .array-data 0x4
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 6
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    .line 65
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    .line 85
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 86
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    .line 107
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    .line 111
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad1:F

    .line 112
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad5:F

    .line 113
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad15:F

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 140
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    .line 217
    iput-boolean p1, p0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    .line 218
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
    .registers 35
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 300
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ProcessStats$Stats;>;"
    .local p6, workingProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ProcessStats$Stats;>;"
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clear()V

    .line 302
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v20

    .line 303
    .local v20, pids:[I
    if-nez v20, :cond_55

    const/4 v5, 0x0

    move v12, v5

    .line 304
    .local v12, NP:I
    :goto_f
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 305
    .local v13, NS:I
    const/4 v14, 0x0

    .line 306
    .local v14, curStatsIndex:I
    const/4 v15, 0x0

    .end local p1
    .local v15, i:I
    :goto_15
    if-ge v15, v12, :cond_1c

    .line 307
    aget v7, v20, v15

    .line 308
    .local v7, pid:I
    if-gez v7, :cond_5b

    .line 309
    move v12, v7

    .line 434
    .end local v7           #pid:I
    :cond_1c
    :goto_1c
    if-ge v14, v13, :cond_2bc

    .line 436
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/ProcessStats$Stats;

    .line 437
    .local v23, st:Lcom/android/server/ProcessStats$Stats;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 438
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 439
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 440
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 441
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    .line 442
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    add-int/lit8 v13, v13, -0x1

    .line 446
    goto :goto_1c

    .line 303
    .end local v12           #NP:I
    .end local v13           #NS:I
    .end local v14           #curStatsIndex:I
    .end local v15           #i:I
    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    .restart local p1
    :cond_55
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    move v12, v5

    goto :goto_f

    .line 312
    .end local p1
    .restart local v7       #pid:I
    .restart local v12       #NP:I
    .restart local v13       #NS:I
    .restart local v14       #curStatsIndex:I
    .restart local v15       #i:I
    :cond_5b
    if-ge v14, v13, :cond_9c

    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ProcessStats$Stats;

    move-object/from16 v23, p1

    .line 314
    .restart local v23       #st:Lcom/android/server/ProcessStats$Stats;
    :goto_68
    if-eqz v23, :cond_17c

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-ne v5, v7, :cond_17c

    .line 316
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    .line 317
    add-int/lit8 v14, v14, 0x1

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v21, v0

    .line 321
    .local v21, procStats:[J
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, v21

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 306
    .end local v21           #procStats:[J
    :cond_98
    :goto_98
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_15

    .line 312
    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_9c
    const/4 v5, 0x0

    move-object/from16 v23, v5

    goto :goto_68

    .line 326
    .restart local v21       #procStats:[J
    .restart local v23       #st:Lcom/android/server/ProcessStats$Stats;
    :cond_a0
    const/4 v5, 0x0

    aget-wide v18, v21, v5

    .line 327
    .local v18, minfaults:J
    const/4 v5, 0x1

    aget-wide v16, v21, v5

    .line 328
    .local v16, majfaults:J
    const/4 v5, 0x2

    aget-wide v26, v21, v5

    .line 329
    .local v26, utime:J
    const/4 v5, 0x3

    aget-wide v24, v21, v5

    .line 331
    .local v24, stime:J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    cmp-long v5, v26, v5

    if-nez v5, :cond_e4

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    cmp-long v5, v24, v5

    if-nez v5, :cond_e4

    .line 332
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 333
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 334
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 335
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 336
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-eqz v5, :cond_98

    .line 337
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    goto :goto_98

    .line 342
    :cond_e4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-nez v5, :cond_f1

    .line 343
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    .line 346
    :cond_f1
    if-gez p2, :cond_127

    .line 347
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_127

    .line 349
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    .line 355
    :cond_127
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    sub-long v5, v26, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 356
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    sub-long v5, v24, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 357
    move-wide/from16 v0, v26

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 358
    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    .line 359
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    move-wide v5, v0

    sub-long v5, v18, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 360
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v5, v0

    sub-long v5, v16, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 361
    move-wide/from16 v0, v18

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    .line 362
    move-wide/from16 v0, v16

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    .line 366
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 370
    .end local v16           #majfaults:J
    .end local v18           #minfaults:J
    .end local v21           #procStats:[J
    .end local v24           #stime:J
    .end local v26           #utime:J
    :cond_17c
    if-eqz v23, :cond_185

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-le v5, v7, :cond_28b

    .line 372
    :cond_185
    new-instance v23, Lcom/android/server/ProcessStats$Stats;

    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    move v5, v0

    move-object/from16 v0, v23

    move v1, v7

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ProcessStats$Stats;-><init>(IIZ)V

    .line 373
    .restart local v23       #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p5

    move v1, v14

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 374
    add-int/lit8 v14, v14, 0x1

    .line 375
    add-int/lit8 v13, v13, 0x1

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v22, v0

    .line 379
    .local v22, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v21, v0

    .line 380
    .restart local v21       #procStats:[J
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_227

    .line 383
    if-gez p2, :cond_222

    const/4 v5, 0x0

    aget-object v5, v22, v5

    :goto_1cb
    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 385
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 386
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    .line 387
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    .line 394
    :goto_1ea
    if-gez p2, :cond_247

    .line 395
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    .line 407
    :cond_1f9
    :goto_1f9
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 408
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 409
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 410
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 411
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    .line 412
    if-nez p3, :cond_98

    .line 413
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 383
    :cond_222
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1cb

    .line 389
    :cond_227
    const-string v5, "<unknown>"

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 390
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 391
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    goto :goto_1ea

    .line 397
    :cond_247
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 398
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    .line 399
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_1f9

    .line 400
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    goto/16 :goto_1f9

    .line 419
    .end local v21           #procStats:[J
    .end local v22           #procStatsString:[Ljava/lang/String;
    :cond_28b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 420
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 421
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 422
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 423
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    .line 424
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 426
    add-int/lit8 v13, v13, -0x1

    .line 430
    add-int/lit8 v15, v15, -0x1

    .line 431
    goto/16 :goto_98

    .line 448
    .end local v7           #pid:I
    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_2bc
    return-object v20
.end method

.method private getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V
    .registers 9
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    const/4 v5, 0x1

    .line 619
    iget-object v2, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 620
    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 621
    :cond_11
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_34

    .line 623
    move-object v2, v0

    .line 624
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 625
    .local v1, i:I
    if-lez v1, :cond_34

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_34

    .line 626
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 630
    .end local v0           #cmdName:Ljava/lang/String;
    .end local v1           #i:I
    :cond_34
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_40

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 631
    :cond_40
    iput-object v2, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 632
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    .line 634
    :cond_4a
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .registers 15
    .parameter "pw"
    .parameter "prefix"
    .parameter "label"
    .parameter "totalTime"
    .parameter "user"
    .parameter "system"
    .parameter "iowait"
    .parameter "irq"
    .parameter "softIrq"
    .parameter "minFaults"
    .parameter "majFaults"

    .prologue
    const-string v2, " "

    const-string v1, " + "

    .line 556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    if-nez p4, :cond_12

    const/4 p4, 0x1

    .line 560
    :cond_12
    add-int v0, p5, p6

    add-int/2addr v0, p7

    add-int/2addr v0, p8

    add-int/2addr v0, p9

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 561
    const-string v0, "% = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    mul-int/lit8 v0, p5, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 563
    const-string v0, "% user + "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    mul-int/lit8 v0, p6, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 565
    const-string v0, "% kernel"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    if-lez p7, :cond_4a

    .line 567
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 568
    mul-int/lit8 v0, p7, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 569
    const-string v0, "% iowait"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    :cond_4a
    if-lez p8, :cond_5c

    .line 572
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    mul-int/lit8 v0, p8, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 574
    const-string v0, "% irq"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    :cond_5c
    if-lez p9, :cond_6e

    .line 577
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    mul-int/lit8 v0, p9, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 579
    const-string v0, "% softirq"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    :cond_6e
    if-gtz p10, :cond_72

    if-lez p11, :cond_95

    .line 582
    :cond_72
    const-string v0, " / faults:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    if-lez p10, :cond_86

    .line 584
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    .line 586
    const-string v0, " minor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    :cond_86
    if-lez p11, :cond_95

    .line 589
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1, p11}, Ljava/io/PrintWriter;->print(I)V

    .line 591
    const-string v0, " major"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    :cond_95
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 595
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 599
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 600
    .local v1, is:Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 601
    .local v2, len:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 603
    if-lez v2, :cond_27

    .line 605
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v2, :cond_19

    .line 606
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    aget-byte v3, v3, v0

    if-ne v3, p2, :cond_23

    .line 610
    :cond_19
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/lang/String;-><init>([BIII)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_22} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_26

    .line 615
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :goto_22
    return-object v3

    .line 605
    .restart local v0       #i:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    .restart local v2       #len:I
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 613
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :catch_26
    move-exception v3

    .line 615
    :cond_27
    :goto_27
    const/4 v3, 0x0

    goto :goto_22

    .line 612
    :catch_29
    move-exception v3

    goto :goto_27
.end method


# virtual methods
.method public final countWorkingStats()I
    .registers 3

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_e

    .line 494
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 497
    :cond_e
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 10
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, statFile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    .line 454
    .local v1, statsData:[J
    sget-object v4, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 456
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .local v2, time:J
    move-wide v4, v2

    .line 460
    .end local v2           #time:J
    :goto_2d
    return-wide v4

    :cond_2e
    const-wide/16 v4, 0x0

    goto :goto_2d
.end method

.method public final getLastIdleTime()I
    .registers 2

    .prologue
    .line 484
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .prologue
    .line 472
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .prologue
    .line 476
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .prologue
    .line 468
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getTotalCpuPercent()F
    .registers 4

    .prologue
    .line 488
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;
    .registers 3
    .parameter "index"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/ProcessStats$Stats;

    return-object p0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/server/ProcessStats;->update()V

    .line 230
    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    .line 221
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentState()Ljava/lang/String;
    .registers 24

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    move v2, v0

    if-nez v2, :cond_17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    sget-object v3, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 507
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 510
    :cond_17
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 511
    .local v21, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 512
    .local v3, pw:Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad1:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 514
    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad5:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 516
    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad15:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 521
    .local v18, now:J
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v4, v0

    sub-long v4, v18, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 523
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v4, v0

    sub-long v4, v18, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 525
    const-string v2, "ms ago:"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    move v4, v0

    add-int v6, v2, v4

    .line 530
    .local v6, totalTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 531
    .local v15, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_a1
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_154

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/ProcessStats$Stats;

    .line 533
    .local v20, st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v2, v0

    if-eqz v2, :cond_131

    const-string v2, " +"

    move-object v4, v2

    :goto_be
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    move v12, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    move v13, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 536
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-nez v2, :cond_150

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    if-eqz v2, :cond_150

    .line 537
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 538
    .local v14, M:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_f8
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_150

    .line 539
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/ProcessStats$Stats;

    .line 540
    .local v22, tst:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v2, v0

    if-eqz v2, :cond_141

    const-string v2, "   +"

    move-object v4, v2

    :goto_115
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 538
    add-int/lit8 v17, v17, 0x1

    goto :goto_f8

    .line 533
    .end local v14           #M:I
    .end local v17           #j:I
    .end local v22           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_131
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-eqz v2, :cond_13c

    const-string v2, " -"

    move-object v4, v2

    goto :goto_be

    :cond_13c
    const-string v2, "  "

    move-object v4, v2

    goto/16 :goto_be

    .line 540
    .restart local v14       #M:I
    .restart local v17       #j:I
    .restart local v22       #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_141
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-eqz v2, :cond_14c

    const-string v2, "   -"

    move-object v4, v2

    goto :goto_115

    :cond_14c
    const-string v2, "    "

    move-object v4, v2

    goto :goto_115

    .line 531
    .end local v14           #M:I
    .end local v17           #j:I
    .end local v22           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_150
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a1

    .line 548
    .end local v20           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_154
    const-string v4, ""

    const-string v5, "TOTAL"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 551
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .registers 30

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v21, v0

    .line 237
    .local v21, loadAverages:[F
    const-string v5, "/proc/loadavg"

    sget-object v6, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 239
    const/4 v5, 0x0

    aget v18, v21, v5

    .line 240
    .local v18, load1:F
    const/4 v5, 0x1

    aget v20, v21, v5

    .line 241
    .local v20, load5:F
    const/4 v5, 0x2

    aget v19, v21, v5

    .line 242
    .local v19, load15:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad1:F

    move v5, v0

    cmpl-float v5, v18, v5

    if-nez v5, :cond_4f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad5:F

    move v5, v0

    cmpl-float v5, v20, v5

    if-nez v5, :cond_4f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad15:F

    move v5, v0

    cmpl-float v5, v19, v5

    if-eqz v5, :cond_6c

    .line 243
    :cond_4f
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad1:F

    .line 244
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad5:F

    .line 245
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad15:F

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ProcessStats;->onLoadChanged(FFF)V

    .line 250
    .end local v18           #load1:F
    .end local v19           #load15:F
    .end local v20           #load5:F
    :cond_6c
    const-string v6, "/proc"

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mFirst:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurPids:[I

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurPids:[I

    .line 252
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v24, v0

    .line 255
    .local v24, sysCpu:[J
    const-string v5, "/proc/stat"

    sget-object v6, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v24

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 258
    const/4 v5, 0x0

    aget-wide v5, v24, v5

    const/4 v7, 0x1

    aget-wide v7, v24, v7

    add-long v27, v5, v7

    .line 260
    .local v27, usertime:J
    const/4 v5, 0x2

    aget-wide v25, v24, v5

    .line 262
    .local v25, systemtime:J
    const/4 v5, 0x3

    aget-wide v12, v24, v5

    .line 264
    .local v12, idletime:J
    const/4 v5, 0x4

    aget-wide v14, v24, v5

    .line 265
    .local v14, iowaittime:J
    const/4 v5, 0x5

    aget-wide v16, v24, v5

    .line 266
    .local v16, irqtime:J
    const/4 v5, 0x6

    aget-wide v22, v24, v5

    .line 268
    .local v22, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelUserTime:I

    .line 269
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    .line 270
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    move-wide v5, v0

    sub-long v5, v14, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    .line 271
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    move-wide v5, v0

    sub-long v5, v16, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    .line 272
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    move-wide v5, v0

    sub-long v5, v22, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    .line 273
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    move-wide v5, v0

    sub-long v5, v12, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    .line 284
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    .line 285
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    .line 286
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    .line 287
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    .line 288
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    .line 289
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    .line 292
    .end local v12           #idletime:J
    .end local v14           #iowaittime:J
    .end local v16           #irqtime:J
    .end local v22           #softirqtime:J
    .end local v25           #systemtime:J
    .end local v27           #usertime:J
    :cond_133
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 293
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 294
    return-void
.end method
