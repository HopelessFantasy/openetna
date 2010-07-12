.class Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsNetworkThread"
.end annotation


# instance fields
.field private mDone:Z

.field private mNextNtpTime:J

.field private mNextXtraTime:J

.field private mTimeInjectRequested:Z

.field private mXtraDownloadRequested:Z

.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1513
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    .line 1514
    const-string v0, "GpsNetworkThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1507
    iput-wide v2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mNextNtpTime:J

    .line 1508
    iput-wide v2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mNextXtraTime:J

    .line 1509
    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mTimeInjectRequested:Z

    .line 1510
    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mXtraDownloadRequested:Z

    .line 1511
    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mDone:Z

    .line 1515
    return-void
.end method

.method private getWaitTime()J
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 1688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1689
    .local v0, now:J
    const-wide v2, 0x7fffffffffffffffL

    .line 1702
    .local v2, waitTime:J
    iget-boolean v4, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mXtraDownloadRequested:Z

    if-nez v4, :cond_13

    iget-boolean v4, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mTimeInjectRequested:Z

    if-eqz v4, :cond_15

    :cond_13
    move-wide v4, v8

    .line 1712
    :goto_14
    return-wide v4

    .line 1704
    :cond_15
    sget v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    if-lez v4, :cond_27

    .line 1705
    sget-wide v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J

    sget v6, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    .line 1706
    :cond_27
    sget v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadEnabled:I

    if-lez v4, :cond_37

    sget v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraAutoDownloadFrequency:I

    if-nez v4, :cond_37

    .line 1707
    sget-wide v4, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    .line 1709
    :cond_37
    cmp-long v4, v2, v8

    if-gez v4, :cond_3d

    .line 1710
    const-wide/16 v2, 0x0

    :cond_3d
    move-wide v4, v2

    .line 1712
    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$1300(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1519
    :try_start_7
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mDone:Z

    if-nez v1, :cond_e

    .line 1520
    invoke-virtual {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->runLocked()V

    .line 1522
    :cond_e
    monitor-exit v0

    .line 1523
    return-void

    .line 1522
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public runLocked()V
    .registers 20

    .prologue
    .line 1526
    const-string v3, "GpsLocationProvider"

    const-string v4, "NetworkThread starting"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    new-instance v9, Landroid/net/SntpClient;

    invoke-direct {v9}, Landroid/net/SntpClient;-><init>()V

    .line 1529
    .local v9, client:Landroid/net/SntpClient;
    const/4 v14, 0x0

    .line 1531
    .local v14, xtraDownloader:Lcom/android/internal/location/GpsXtraDownloader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$1400(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1532
    new-instance v14, Lcom/android/internal/location/GpsXtraDownloader;

    .end local v14           #xtraDownloader:Lcom/android/internal/location/GpsXtraDownloader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$1500(Lcom/android/internal/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/internal/location/GpsLocationProvider;->access$1600(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v4

    invoke-direct {v14, v3, v4}, Lcom/android/internal/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 1609
    .restart local v14       #xtraDownloader:Lcom/android/internal/location/GpsXtraDownloader;
    :cond_2f
    :goto_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mDone:Z

    move v3, v0

    if-nez v3, :cond_193

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->getWaitTime()J

    move-result-wide v12

    .line 1613
    .local v12, waitTime:J
    :cond_3a
    monitor-enter p0

    .line 1615
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$800(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v3

    if-nez v3, :cond_147

    .line 1616
    const-string v3, "GpsLocationProvider"

    const-string v4, "NetworkThread wait for network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_17e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_50} :catch_173

    .line 1625
    :cond_50
    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_17e

    .line 1626
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->getWaitTime()J

    move-result-wide v12

    .line 1627
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mDone:Z

    move v3, v0

    if-nez v3, :cond_6d

    const-wide/16 v15, 0x0

    cmp-long v3, v12, v15

    if-gtz v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$800(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1629
    :cond_6d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mDone:Z

    move v3, v0

    if-nez v3, :cond_103

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$1700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_103

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mTimeInjectRequested:Z

    move v3, v0

    if-eqz v3, :cond_103

    .line 1630
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting time from NTP server "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/location/GpsLocationProvider;->access$1700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mTimeInjectRequested:Z

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$1700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v9, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 1633
    invoke-virtual {v9}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    .line 1634
    .local v4, time:J
    invoke-virtual {v9}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    .line 1635
    .local v6, timeReference:J
    invoke-virtual {v9}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v15

    const-wide/16 v17, 0x2

    div-long v15, v15, v17

    long-to-int v8, v15

    .line 1636
    .local v8, certainty:I
    const-string v3, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calling native_inject_time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " reference: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " certainty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/location/GpsLocationProvider;->access$1800(Lcom/android/internal/location/GpsLocationProvider;JJI)V

    .line 1643
    .end local v4           #time:J
    .end local v6           #timeReference:J
    .end local v8           #certainty:I
    :cond_103
    :goto_103
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mDone:Z

    move v3, v0

    if-nez v3, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mXtraDownloadRequested:Z

    move v3, v0

    if-eqz v3, :cond_2f

    if-eqz v14, :cond_2f

    .line 1644
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mXtraDownloadRequested:Z

    .line 1645
    invoke-virtual {v14}, Lcom/android/internal/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v10

    .line 1646
    .local v10, data:[B
    if-eqz v10, :cond_18a

    .line 1647
    const-string v3, "GpsLocationProvider"

    const-string v4, "calling native_inject_xtra_data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    array-length v4, v10

    invoke-static {v3, v10, v4}, Lcom/android/internal/location/GpsLocationProvider;->access$1900(Lcom/android/internal/location/GpsLocationProvider;[BI)V

    .line 1649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sput-wide v15, Lcom/android/internal/location/GpsLocationProvider;->mXtraDownloadDate:J

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$2000(Lcom/android/internal/location/GpsLocationProvider;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/location/GpsLocationProvider;->broadcastXtraSettings()V

    goto/16 :goto_2f

    .line 1618
    .end local v10           #data:[B
    :cond_147
    const-wide/16 v15, 0x0

    cmp-long v3, v12, v15

    if-lez v3, :cond_50

    .line 1619
    :try_start_14d
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkThread wait for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    move-object/from16 v0, p0

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_171
    .catchall {:try_start_14d .. :try_end_171} :catchall_17e
    .catch Ljava/lang/InterruptedException; {:try_start_14d .. :try_end_171} :catch_173

    goto/16 :goto_50

    .line 1622
    :catch_173
    move-exception v3

    move-object v11, v3

    .line 1623
    .local v11, e:Ljava/lang/InterruptedException;
    :try_start_175
    const-string v3, "GpsLocationProvider"

    const-string v4, "InterruptedException in GpsNetworkThread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 1625
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catchall_17e
    move-exception v3

    monitor-exit p0
    :try_end_180
    .catchall {:try_start_175 .. :try_end_180} :catchall_17e

    throw v3

    .line 1639
    :cond_181
    const-string v3, "GpsLocationProvider"

    const-string v4, "requestTime failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_103

    .line 1653
    .restart local v10       #data:[B
    :cond_18a
    const-string v3, "GpsLocationProvider"

    const-string v4, "requestDownloadXtraData failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 1658
    .end local v10           #data:[B
    .end local v12           #waitTime:J
    :cond_193
    return-void
.end method

.method declared-synchronized setDone()V
    .registers 3

    .prologue
    .line 1682
    monitor-enter p0

    :try_start_1
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopping NetworkThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mDone:Z

    .line 1684
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1685
    monitor-exit p0

    return-void

    .line 1682
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized signal()V
    .registers 2

    .prologue
    .line 1678
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1679
    monitor-exit p0

    return-void

    .line 1678
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized timeInjectRequest()V
    .registers 2

    .prologue
    .line 1673
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mTimeInjectRequested:Z

    .line 1674
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1675
    monitor-exit p0

    return-void

    .line 1673
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized xtraAutoDownloadRequest()V
    .registers 2

    .prologue
    .line 1662
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1663
    monitor-exit p0

    return-void

    .line 1662
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized xtraDownloadRequest()V
    .registers 2

    .prologue
    .line 1667
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsNetworkThread;->mXtraDownloadRequested:Z

    .line 1669
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1670
    monitor-exit p0

    return-void

    .line 1667
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
