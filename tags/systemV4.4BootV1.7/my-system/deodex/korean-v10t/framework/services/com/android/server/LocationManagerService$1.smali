.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1716
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, action:Ljava/lang/String;
    const-string v15, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    const-string v15, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11a

    .line 1720
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1721
    :try_start_1e
    const-string v16, "android.intent.extra.UID"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1722
    .local v13, uid:I
    if-ltz v13, :cond_118

    .line 1723
    const/4 v11, 0x0

    .line 1724
    .local v11, removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1725
    .local v5, i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v7, v16, v17

    .local v7, j:I
    :goto_55
    if-ltz v7, :cond_41

    .line 1726
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1727
    .local v14, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v16

    if-eqz v16, :cond_92

    move-object v0, v14

    iget v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v13

    if-ne v0, v1, :cond_92

    .line 1728
    if-nez v11, :cond_79

    .line 1729
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1731
    .restart local v11       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_79
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_92

    .line 1732
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v16, v0

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    :cond_92
    add-int/lit8 v7, v7, -0x1

    goto :goto_55

    .line 1737
    .end local v5           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v7           #j:I
    .end local v14           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_95
    const/4 v10, 0x0

    .line 1738
    .local v10, removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a8
    :goto_a8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1739
    .local v4, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    move-object v0, v4

    iget v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v13

    if-ne v0, v1, :cond_a8

    .line 1740
    if-nez v10, :cond_c5

    .line 1741
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1743
    .restart local v10       #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_c5
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a8

    .line 1744
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 1759
    .end local v4           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .end local v11           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v13           #uid:I
    .end local p1
    :catchall_cf
    move-exception v16

    monitor-exit v15
    :try_end_d1
    .catchall {:try_start_1e .. :try_end_d1} :catchall_cf

    throw v16

    .line 1748
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v10       #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .restart local v11       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v13       #uid:I
    .restart local p1
    :cond_d2
    if-eqz v11, :cond_f4

    .line 1749
    :try_start_d4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v4, v16, v17

    .end local p1
    .local v4, i:I
    :goto_dc
    if-ltz v4, :cond_f4

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v16, v0

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1749
    add-int/lit8 v4, v4, -0x1

    goto :goto_dc

    .line 1753
    .end local v4           #i:I
    :cond_f4
    if-eqz v10, :cond_118

    .line 1754
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v4, v16, v17

    .restart local v4       #i:I
    :goto_fe
    if-ltz v4, :cond_118

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v16, v0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$ProximityAlert;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 1754
    add-int/lit8 v4, v4, -0x1

    goto :goto_fe

    .line 1759
    .end local v4           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .end local v11           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_118
    monitor-exit v15
    :try_end_119
    .catchall {:try_start_d4 .. :try_end_119} :catchall_cf

    .line 1789
    .end local v13           #uid:I
    :cond_119
    :goto_119
    return-void

    .line 1760
    .restart local p1
    :cond_11a
    const-string v15, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_195

    .line 1761
    const-string v15, "noConnectivity"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1763
    .local v8, noConnectivity:Z
    if-nez v8, :cond_185

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object v15, v0

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Lcom/android/server/LocationManagerService;->access$1802(Lcom/android/server/LocationManagerService;I)I

    .line 1770
    :goto_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1771
    :try_start_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v4, v16, v17

    .restart local v4       #i:I
    :goto_157
    if-ltz v4, :cond_190

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/location/LocationProviderProxy;

    .line 1773
    .local v9, provider:Lcom/android/internal/location/LocationProviderProxy;
    invoke-virtual {v9}, Lcom/android/internal/location/LocationProviderProxy;->requiresNetwork()Z

    move-result v16

    if-eqz v16, :cond_182

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)I

    move-result v16

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/location/LocationProviderProxy;->updateNetworkState(I)V
    :try_end_182
    .catchall {:try_start_145 .. :try_end_182} :catchall_192

    .line 1771
    :cond_182
    add-int/lit8 v4, v4, -0x1

    goto :goto_157

    .line 1766
    .end local v4           #i:I
    .end local v9           #provider:Lcom/android/internal/location/LocationProviderProxy;
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/server/LocationManagerService;->access$1802(Lcom/android/server/LocationManagerService;I)I

    goto :goto_13b

    .line 1777
    .restart local v4       #i:I
    :cond_190
    :try_start_190
    monitor-exit v15

    goto :goto_119

    .end local v4           #i:I
    :catchall_192
    move-exception v16

    monitor-exit v15
    :try_end_194
    .catchall {:try_start_190 .. :try_end_194} :catchall_192

    throw v16

    .line 1780
    .end local v8           #noConnectivity:Z
    :cond_195
    const-string v15, "com.android.mms.transaction.GPSONSMS_RECEIVED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_119

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Z

    move-result v15

    if-eqz v15, :cond_119

    .line 1782
    const-string v15, "testNum"

    const/16 v16, 0x5

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1783
    .local v12, testNum:I
    const-string v15, "LocationManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[GPS-SMS] Received Intent: GPSON_SMS_RECEIVED, testNum="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v15

    move/from16 v1, v16

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LocationManagerService;->startAirTest(II)Z

    goto/16 :goto_119
.end method
