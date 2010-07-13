.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$PssStats;,
        Lcom/android/server/Watchdog$PssRequestor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$RebootReceiver;,
        Lcom/android/server/Watchdog$CheckupReceiver;,
        Lcom/android/server/Watchdog$GlobalPssCollected;,
        Lcom/android/server/Watchdog$HeartbeatHandler;,
        Lcom/android/server/Watchdog$MemMonitor;
    }
.end annotation


# static fields
.field static final CHECKUP_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.CHECKUP"

.field static final DB:Z = false

.field static final EVENT_LOG_HARD_RESET_TAG:I = 0xaf5

.field static final EVENT_LOG_MEMINFO_TAG:I = 0xaf9

.field static final EVENT_LOG_PROC_PSS_TAG:I = 0xaf3

.field static final EVENT_LOG_PROC_STATS_TAG:I = 0xaf7

.field static final EVENT_LOG_PSS_STATS_TAG:I = 0xaf6

.field static final EVENT_LOG_REQUESTED_REBOOT_TAG:I = 0xafb

.field static final EVENT_LOG_SCHEDULED_REBOOT_TAG:I = 0xaf8

.field static final EVENT_LOG_SOFT_RESET_TAG:I = 0xaf4

.field static final EVENT_LOG_TAG:I = 0xaf2

.field static final EVENT_LOG_VMSTAT_TAG:I = 0xafa

.field static final GLOBAL_PSS:I = 0xa9f

.field static final MEMCHECK_DEFAULT_EXEC_END_TIME:I = 0x4650

.field static final MEMCHECK_DEFAULT_EXEC_START_TIME:I = 0xe10

.field static final MEMCHECK_DEFAULT_INTERVAL:I = 0x708

.field static final MEMCHECK_DEFAULT_LOG_REALTIME_INTERVAL:I = 0x1c20

.field static final MEMCHECK_DEFAULT_MIN_ALARM:I = 0xb4

.field static final MEMCHECK_DEFAULT_MIN_SCREEN_OFF:I = 0x12c

.field static final MEMCHECK_DEFAULT_PHONE_HARD_THRESHOLD:I = 0xc00000

.field static final MEMCHECK_DEFAULT_PHONE_SOFT_THRESHOLD:I = 0x800000

.field static final MEMCHECK_DEFAULT_RECHECK_INTERVAL:I = 0x12c

.field static final MEMCHECK_DEFAULT_SYSTEM_HARD_THRESHOLD:I = 0x1400000

.field static final MEMCHECK_DEFAULT_SYSTEM_SOFT_THRESHOLD:I = 0x1000000

.field static final MONITOR:I = 0xa9e

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_DEFAULT_INTERVAL:I = 0x0

.field static final REBOOT_DEFAULT_START_TIME:I = 0x2a30

.field static final REBOOT_DEFAULT_WINDOW:I = 0xe10

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_TO_WAIT:I = 0xea60

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBattery:Lcom/android/server/BatteryService;

.field mBootTime:J

.field final mCalendar:Ljava/util/Calendar;

.field mCheckupIntent:Landroid/app/PendingIntent;

.field mCompleted:Z

.field mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field mForceKillSystem:Z

.field final mGlobalPssCollected:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field mHaveGlobalPss:Z

.field mHavePss:Z

.field mLastLogGlobalMemoryTime:J

.field mLastMemCheckRealtime:J

.field mLastMemCheckTime:J

.field final mMemInfoFields:[Ljava/lang/String;

.field final mMemInfoSizes:[J

.field mMemcheckExecEndTime:J

.field mMemcheckExecStartTime:J

.field mMemcheckLastTime:J

.field mMinAlarm:I

.field mMinScreenOff:I

.field final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field mNeedScheduledCheck:Z

.field final mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

.field mPhonePid:I

.field mPhonePss:I

.field mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

.field mPower:Lcom/android/server/PowerManagerService;

.field final mPrevVMStatSizes:[J

.field final mPssStats:Lcom/android/server/Watchdog$PssStats;

.field mRebootIntent:Landroid/app/PendingIntent;

.field mRebootInterval:I

.field mReqMinNextAlarm:I

.field mReqMinScreenOff:I

.field mReqRebootInterval:I

.field mReqRebootNoWait:Z

.field mReqRebootStartTime:I

.field mReqRebootWindow:I

.field mReqRecheckInterval:I

.field mResolver:Landroid/content/ContentResolver;

.field final mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

.field final mVMStatFields:[Ljava/lang/String;

.field final mVMStatSizes:[J


# direct methods
.method private constructor <init>()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 393
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    .line 105
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mLastMemCheckTime:J

    .line 107
    const-wide/32 v0, -0x6ddd00

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mLastMemCheckRealtime:J

    .line 109
    new-instance v0, Lcom/android/server/Watchdog$MemMonitor;

    const-string v2, "system"

    const-string v3, "memcheck_system_enabled"

    const-string v4, "memcheck_system_soft"

    const/high16 v5, 0x100

    const-string v6, "memcheck_system_hard"

    const/high16 v7, 0x140

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/Watchdog$MemMonitor;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    .line 115
    new-instance v0, Lcom/android/server/Watchdog$MemMonitor;

    const-string v2, "com.android.phone"

    const-string v3, "memcheck_phone_enabled"

    const-string v4, "memcheck_phone_soft"

    const/high16 v5, 0x80

    const-string v6, "memcheck_phone_hard"

    const/high16 v7, 0xc0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/Watchdog$MemMonitor;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    .line 126
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 127
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 136
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 137
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    .line 138
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    .line 139
    iput v8, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    .line 140
    iput v8, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    .line 141
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    .line 547
    new-instance v0, Lcom/android/server/Watchdog$PssStats;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$PssStats;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mPssStats:Lcom/android/server/Watchdog$PssStats;

    .line 548
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MemFree:"

    aput-object v1, v0, v9

    const-string v1, "Buffers:"

    aput-object v1, v0, v10

    const-string v1, "Cached:"

    aput-object v1, v0, v11

    const-string v1, "Active:"

    aput-object v1, v0, v12

    const/4 v1, 0x4

    const-string v2, "Inactive:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AnonPages:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Mapped:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Slab:"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SReclaimable:"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SUnreclaim:"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PageTables:"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMemInfoFields:[Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMemInfoFields:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    .line 554
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pgfree "

    aput-object v1, v0, v9

    const-string v1, "pgactivate "

    aput-object v1, v0, v10

    const-string v1, "pgdeactivate "

    aput-object v1, v0, v11

    const-string v1, "pgfault "

    aput-object v1, v0, v12

    const/4 v1, 0x4

    const-string v2, "pgmajfault "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    .line 558
    iget-object v0, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/Watchdog;->mPrevVMStatSizes:[J

    .line 394
    new-instance v0, Lcom/android/server/Watchdog$HeartbeatHandler;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$HeartbeatHandler;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    .line 395
    new-instance v0, Lcom/android/server/Watchdog$GlobalPssCollected;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$GlobalPssCollected;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mGlobalPssCollected:Ljava/lang/Runnable;

    .line 396
    return-void
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .registers 11
    .parameter "c"
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 782
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 784
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 785
    .local v2, val:I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 786
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 787
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 788
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 789
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 790
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 792
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 793
    .local v0, newTime:J
    cmp-long v3, v0, p1

    if-gez v3, :cond_37

    .line 796
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 797
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 800
    :cond_37
    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .prologue
    .line 385
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 386
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 389
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .parameter "monitor"

    .prologue
    .line 443
    monitor-enter p0

    .line 444
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 445
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added while the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 447
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 449
    return-void
.end method

.method checkMemory()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 479
    const-wide/16 v3, 0x0

    .line 481
    .local v3, nextTime:J
    iget-object v7, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "memcheck_recheck_interval"

    const-wide/16 v9, 0x12c

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 485
    .local v5, recheckInterval:J
    iget-object v7, p0, Lcom/android/server/Watchdog;->mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v8}, Lcom/android/server/Watchdog$MemMonitor;->retrieveSettings(Landroid/content/ContentResolver;)V

    .line 486
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v8}, Lcom/android/server/Watchdog$MemMonitor;->retrieveSettings(Landroid/content/ContentResolver;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    .line 489
    monitor-enter p0

    .line 490
    :try_start_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 491
    .local v0, curTime:J
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/Watchdog;->mNeedScheduledCheck:Z

    .line 494
    iget-object v7, p0, Lcom/android/server/Watchdog;->mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->getPss(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/android/server/Watchdog$MemMonitor;->checkLocked(JII)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 497
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    .line 498
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 499
    monitor-exit p0

    .line 545
    :goto_46
    return-void

    .line 503
    :cond_47
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    if-eqz v7, :cond_83

    .line 504
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    iget v8, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    iget v9, p0, Lcom/android/server/Watchdog;->mPhonePss:I

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/android/server/Watchdog$MemMonitor;->checkLocked(JII)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 507
    const-string v7, "Watchdog"

    const-string v8, "Watchdog is killing the phone process"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget v7, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 514
    :cond_63
    :goto_63
    iget-boolean v2, p0, Lcom/android/server/Watchdog;->mNeedScheduledCheck:Z

    .line 515
    .local v2, needScheduledCheck:Z
    if-eqz v2, :cond_71

    .line 518
    add-long v3, v0, v5

    .line 519
    iget-wide v7, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_8c

    .line 520
    iget-wide v3, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J

    .line 534
    :cond_71
    :goto_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_23 .. :try_end_72} :catchall_89

    .line 536
    if-eqz v2, :cond_98

    .line 539
    iget-object v7, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 540
    iget-object v7, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v11, v3, v4, v8}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_46

    .line 511
    .end local v2           #needScheduledCheck:Z
    :cond_83
    :try_start_83
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    invoke-virtual {v7}, Lcom/android/server/Watchdog$MemMonitor;->clear()V

    goto :goto_63

    .line 534
    .end local v0           #curTime:J
    :catchall_89
    move-exception v7

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_89

    throw v7

    .line 521
    .restart local v0       #curTime:J
    .restart local v2       #needScheduledCheck:Z
    :cond_8c
    :try_start_8c
    iget-wide v7, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    cmp-long v7, v3, v7

    if-ltz v7, :cond_71

    .line 525
    invoke-virtual {p0, v3, v4}, Lcom/android/server/Watchdog;->computeMemcheckTimesLocked(J)V

    .line 526
    iget-wide v3, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_89

    goto :goto_71

    .line 543
    :cond_98
    iget-object v7, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto :goto_46
.end method

.method checkReboot(Z)V
    .registers 25
    .parameter "fromAlarm"

    .prologue
    .line 598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v19, v0

    if-ltz v19, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v19, v0

    move/from16 v10, v19

    .line 602
    .local v10, rebootInterval:I
    :goto_10
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 603
    if-gtz v10, :cond_38

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 680
    :goto_26
    return-void

    .line 598
    .end local v10           #rebootInterval:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "reboot_interval"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v10, v19

    goto :goto_10

    .line 610
    .restart local v10       #rebootInterval:I
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v19, v0

    if-ltz v19, :cond_113

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v13, v19

    .line 614
    .local v13, rebootStartTime:J
    :goto_4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v19, v0

    if-ltz v19, :cond_125

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :goto_60
    const-wide/16 v21, 0x3e8

    mul-long v15, v19, v21

    .line 618
    .local v15, rebootWindowMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v19, v0

    if-ltz v19, :cond_135

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :goto_77
    const-wide/16 v21, 0x3e8

    mul-long v17, v19, v21

    .line 623
    .local v17, recheckInterval:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    .line 628
    monitor-enter p0

    .line 629
    :try_start_7f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 630
    .local v6, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v6

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v8

    .line 633
    .local v8, realStartTime:J
    mul-int/lit8 v19, v10, 0x18

    mul-int/lit8 v19, v19, 0x3c

    mul-int/lit8 v19, v19, 0x3c

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide v11, v0

    .line 634
    .local v11, rebootIntervalMillis:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    move/from16 v19, v0

    if-nez v19, :cond_b7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/Watchdog;->mBootTime:J

    move-wide/from16 v19, v0

    sub-long v19, v6, v19

    sub-long v21, v11, v15

    cmp-long v19, v19, v21

    if-ltz v19, :cond_157

    .line 636
    :cond_b7
    if-eqz p1, :cond_145

    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_145

    .line 638
    const/16 v19, 0xaf8

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-wide v0, v11

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-wide v0, v13

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, ""

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 641
    const-string v19, "Checkin scheduled forced"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 642
    monitor-exit p0

    goto/16 :goto_26

    .line 674
    .end local v6           #now:J
    .end local v8           #realStartTime:J
    .end local v11           #rebootIntervalMillis:J
    :catchall_110
    move-exception v19

    monitor-exit p0
    :try_end_112
    .catchall {:try_start_7f .. :try_end_112} :catchall_110

    throw v19

    .line 610
    .end local v13           #rebootStartTime:J
    .end local v15           #rebootWindowMillis:J
    .end local v17           #recheckInterval:J
    :cond_113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "reboot_start_time"

    const-wide/16 v21, 0x2a30

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v13, v19

    goto/16 :goto_4d

    .line 614
    .restart local v13       #rebootStartTime:J
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "reboot_window"

    const-wide/16 v21, 0xe10

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    goto/16 :goto_60

    .line 618
    .restart local v15       #rebootWindowMillis:J
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "memcheck_recheck_interval"

    const-wide/16 v21, 0x12c

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    goto/16 :goto_77

    .line 646
    .restart local v6       #now:J
    .restart local v8       #realStartTime:J
    .restart local v11       #rebootIntervalMillis:J
    .restart local v17       #recheckInterval:J
    :cond_145
    cmp-long v19, v6, v8

    if-gez v19, :cond_181

    .line 648
    :try_start_149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v6

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v8

    .line 674
    :cond_157
    :goto_157
    monitor-exit p0
    :try_end_158
    .catchall {:try_start_149 .. :try_end_158} :catchall_110

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide v2, v8

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_26

    .line 650
    :cond_181
    add-long v19, v8, v15

    cmp-long v19, v6, v19

    if-gez v19, :cond_201

    .line 651
    :try_start_187
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->shouldWeBeBrutalLocked(J)Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, doit:Ljava/lang/String;
    const/16 v19, 0xaf8

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-wide v0, v13

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    if-eqz v5, :cond_1df

    move-object/from16 v22, v5

    :goto_1cc
    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 655
    if-nez v5, :cond_1e2

    .line 656
    const-string v19, "Checked scheduled range"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 657
    monitor-exit p0

    goto/16 :goto_26

    .line 652
    :cond_1df
    const-string v22, ""

    goto :goto_1cc

    .line 662
    :cond_1e2
    add-long v19, v6, v17

    add-long v21, v8, v15

    cmp-long v19, v19, v21

    if-ltz v19, :cond_1fd

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    add-long v20, v6, v11

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v8

    goto/16 :goto_157

    .line 666
    :cond_1fd
    add-long v8, v6, v17

    goto/16 :goto_157

    .line 670
    .end local v5           #doit:Ljava/lang/String;
    :cond_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    add-long v20, v6, v11

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J
    :try_end_211
    .catchall {:try_start_187 .. :try_end_211} :catchall_110

    move-result-wide v8

    goto/16 :goto_157
.end method

.method collectGlobalMemory()V
    .registers 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mGlobalPssCollected:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->requestPss(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method collectMemory()V
    .registers 2

    .prologue
    .line 457
    monitor-enter p0

    .line 458
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    if-eqz v0, :cond_a

    .line 459
    iget-object v0, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    invoke-interface {v0}, Lcom/android/server/Watchdog$PssRequestor;->requestPss()V

    .line 461
    :cond_a
    monitor-exit p0

    .line 462
    return-void

    .line 461
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method computeMemcheckTimesLocked(J)V
    .registers 13
    .parameter "curTime"

    .prologue
    const-wide/32 v8, 0x15180

    .line 744
    iget-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckLastTime:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_a

    .line 776
    :goto_9
    return-void

    .line 748
    :cond_a
    iput-wide p1, p0, Lcom/android/server/Watchdog;->mMemcheckLastTime:J

    .line 750
    iget-object v4, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "memcheck_exec_start_time"

    const-wide/16 v6, 0xe10

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 753
    .local v2, memcheckExecStartTime:J
    iget-object v4, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "memcheck_exec_end_time"

    const-wide/16 v6, 0x4650

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 757
    .local v0, memcheckExecEndTime:J
    iget-object v4, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, p1, p2, v0, v1}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    .line 759
    iget-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    cmp-long v4, v4, p1

    if-gez v4, :cond_38

    .line 760
    add-long/2addr v2, v8

    .line 761
    add-long/2addr v0, v8

    .line 762
    iget-object v4, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, p1, p2, v0, v1}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    .line 765
    :cond_38
    iget-object v4, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, p1, p2, v2, v3}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J

    goto :goto_9
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 12
    .parameter "context"
    .parameter "battery"
    .parameter "power"
    .parameter "alarm"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    const-string v5, "com.android.service.Watchdog.REBOOT"

    const-string v4, "com.android.service.Watchdog.CHECKUP"

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 402
    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 403
    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    .line 404
    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 405
    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 407
    new-instance v0, Lcom/android/server/Watchdog$CheckupReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$CheckupReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.CHECKUP"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.CHECKUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    .line 412
    new-instance v0, Lcom/android/server/Watchdog$RebootReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    .line 417
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mBootTime:J

    .line 422
    return-void
.end method

.method logGlobalMemory()V
    .registers 14

    .prologue
    .line 562
    iget-object v5, p0, Lcom/android/server/Watchdog;->mPssStats:Lcom/android/server/Watchdog$PssStats;

    .line 563
    .local v5, stats:Lcom/android/server/Watchdog$PssStats;
    iget-object v8, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/am/ActivityManagerService;->collectPss(Lcom/android/server/Watchdog$PssStats;)V

    .line 564
    const/16 v8, 0xaf6

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mEmptyPss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mEmptyCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mBackgroundPss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mBackgroundCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mServicePss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mServiceCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mVisiblePss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mVisibleCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mForegroundPss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mForegroundCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mNoPssCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 571
    const/16 v8, 0xaf7

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 574
    const-string v8, "/proc/meminfo"

    iget-object v9, p0, Lcom/android/server/Watchdog;->mMemInfoFields:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    invoke-static {v8, v9, v10}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 575
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c4
    iget-object v8, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    array-length v8, v8

    if-ge v2, v8, :cond_d5

    .line 576
    iget-object v8, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    aget-wide v9, v8, v2

    const-wide/16 v11, 0x400

    mul-long/2addr v9, v11

    aput-wide v9, v8, v2

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 578
    :cond_d5
    const/16 v8, 0xaf9

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x4

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x5

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x6

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x7

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/16 v12, 0x8

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/16 v12, 0x9

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/16 v12, 0xa

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 584
    .local v3, now:J
    iget-wide v8, p0, Lcom/android/server/Watchdog;->mLastLogGlobalMemoryTime:J

    sub-long v0, v3, v8

    .line 585
    .local v0, dur:J
    iput-wide v3, p0, Lcom/android/server/Watchdog;->mLastLogGlobalMemoryTime:J

    .line 586
    const-string v8, "/proc/vmstat"

    iget-object v9, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    invoke-static {v8, v9, v10}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 587
    const/4 v2, 0x0

    :goto_187
    iget-object v8, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1a2

    .line 588
    iget-object v8, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    aget-wide v6, v8, v2

    .line 589
    .local v6, v:J
    iget-object v8, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    aget-wide v9, v8, v2

    iget-object v11, p0, Lcom/android/server/Watchdog;->mPrevVMStatSizes:[J

    aget-wide v11, v11, v2

    sub-long/2addr v9, v11

    aput-wide v9, v8, v2

    .line 590
    iget-object v8, p0, Lcom/android/server/Watchdog;->mPrevVMStatSizes:[J

    aput-wide v6, v8, v2

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_187

    .line 592
    .end local v6           #v:J
    :cond_1a2
    const/16 v8, 0xafa

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x4

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 595
    return-void
.end method

.method public processStarted(Lcom/android/server/Watchdog$PssRequestor;Ljava/lang/String;I)V
    .registers 5
    .parameter "req"
    .parameter "name"
    .parameter "pid"

    .prologue
    .line 425
    monitor-enter p0

    .line 426
    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 427
    iput-object p1, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    .line 428
    iput p3, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/Watchdog;->mPhonePss:I

    .line 431
    :cond_10
    monitor-exit p0

    .line 432
    return-void

    .line 431
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 6
    .parameter "reason"

    .prologue
    const-string v3, "Watchdog"

    .line 686
    const-string v1, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rebooting system because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_1a
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 692
    :goto_1d
    return-void

    .line 689
    :catch_1e
    move-exception v0

    .line 690
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v1, "Reboot failed!"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public reportPss(Lcom/android/server/Watchdog$PssRequestor;Ljava/lang/String;I)V
    .registers 5
    .parameter "req"
    .parameter "name"
    .parameter "pss"

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    if-ne v0, p1, :cond_7

    .line 437
    iput p3, p0, Lcom/android/server/Watchdog;->mPhonePss:I

    .line 439
    :cond_7
    monitor-exit p0

    .line 440
    return-void

    .line 439
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method retrieveBrutalityAmount()V
    .registers 4

    .prologue
    .line 700
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    :goto_6
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 704
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    if-ltz v0, :cond_20

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    :goto_10
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 708
    return-void

    .line 700
    :cond_15
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_screen_off"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_6

    .line 704
    :cond_20
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_alarm"

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_10
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 806
    :cond_1
    :goto_1
    iput-boolean v10, p0, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 807
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa9e

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 809
    monitor-enter p0

    .line 810
    const-wide/32 v4, 0xea60

    .line 816
    .local v4, timeout:J
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_33

    move-result-wide v2

    .line 819
    .local v2, start:J
    :cond_12
    :try_start_12
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_36

    .line 828
    :goto_15
    const-wide/32 v6, 0xea60

    :try_start_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    sub-long v4, v6, v8

    .line 829
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_29

    iget-boolean v6, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    if-eqz v6, :cond_12

    .line 831
    :cond_29
    iget-boolean v6, p0, Lcom/android/server/Watchdog;->mCompleted:Z

    if-eqz v6, :cond_50

    iget-boolean v6, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    if-nez v6, :cond_50

    .line 833
    monitor-exit p0

    goto :goto_1

    .line 835
    .end local v2           #start:J
    :catchall_33
    move-exception v6

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_33

    throw v6

    .line 820
    .restart local v2       #start:J
    :catch_36
    move-exception v0

    .line 821
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_37
    const-string v6, "ro.secure"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 823
    const-string v6, "WatchDog"

    const-string v7, "Woof! Woof! Interrupter!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 825
    :cond_48
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Someone interrupted the watchdog"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 835
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_33

    .line 840
    iget-object v6, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-eqz v6, :cond_88

    iget-object v6, p0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 841
    .local v1, name:Ljava/lang/String;
    :goto_60
    const/16 v6, 0xaf2

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 842
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/os/Process;->sendSignal(II)V

    .line 846
    const-wide/16 v6, 0x2710

    :try_start_6f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_8c

    .line 851
    :goto_72
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 852
    const-string v6, "Watchdog"

    const-string v7, "Watchdog is killing the system process"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_1

    .line 840
    .end local v1           #name:Ljava/lang/String;
    :cond_88
    const-string v6, "null"

    move-object v1, v6

    goto :goto_60

    .line 847
    .restart local v1       #name:Ljava/lang/String;
    :catch_8c
    move-exception v6

    goto :goto_72
.end method

.method shouldWeBeBrutalLocked(J)Ljava/lang/String;
    .registers 7
    .parameter "curTime"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v0

    if-nez v0, :cond_f

    .line 721
    :cond_c
    const-string v0, "battery"

    .line 734
    :goto_e
    return-object v0

    .line 724
    :cond_f
    iget v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    if-ltz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->timeSinceScreenOn()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 726
    :cond_24
    const-string v0, "screen"

    goto :goto_e

    .line 729
    :cond_27
    iget v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    if-ltz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->timeToNextAlarm()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3f

    .line 731
    :cond_3c
    const-string v0, "alarm"

    goto :goto_e

    .line 734
    :cond_3f
    const/4 v0, 0x0

    goto :goto_e
.end method
