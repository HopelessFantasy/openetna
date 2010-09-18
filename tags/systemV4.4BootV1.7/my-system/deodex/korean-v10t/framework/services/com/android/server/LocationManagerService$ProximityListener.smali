.class Lcom/android/server/LocationManagerService$ProximityListener;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximityListener"
.end annotation


# instance fields
.field isGpsAvailable:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 3
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 32
    .parameter "loc"

    .prologue
    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1275
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1277
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    move v6, v0

    if-eqz v6, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1367
    :cond_25
    return-void

    .line 1282
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 1283
    .local v28, now:J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    .line 1284
    .local v24, latitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    .line 1285
    .local v26, longitude:D
    const/16 v23, 0x0

    .line 1287
    .local v23, intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_45
    :goto_45
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_134

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1288
    .local v15, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    invoke-virtual {v15}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 1289
    .local v5, intent:Landroid/app/PendingIntent;
    invoke-virtual {v15}, Lcom/android/server/LocationManagerService$ProximityAlert;->getExpiration()J

    move-result-wide v18

    .line 1291
    .local v18, expiration:J
    const-wide/16 v6, -0x1

    cmp-long v6, v18, v6

    if-eqz v6, :cond_63

    cmp-long v6, v28, v18

    if-gtz v6, :cond_121

    .line 1292
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 1293
    .local v17, entered:Z
    move-object v0, v15

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LocationManagerService$ProximityAlert;->isInProximity(DD)Z

    move-result v22

    .line 1295
    .local v22, inProximity:Z
    if-nez v17, :cond_cc

    if-eqz v22, :cond_cc

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1300
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1301
    .local v8, enteredIntent:Landroid/content/Intent;
    const-string v6, "entering"

    const/4 v7, 0x1

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1303
    :try_start_94
    monitor-enter p0
    :try_end_95
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_94 .. :try_end_95} :catch_ba

    .line 1306
    :try_start_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v10

    move-object/from16 v9, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 1310
    monitor-exit p0

    goto :goto_45

    :catchall_b7
    move-exception v6

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_95 .. :try_end_b9} :catchall_b7

    :try_start_b9
    throw v6
    :try_end_ba
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_b9 .. :try_end_ba} :catch_ba

    .line 1311
    :catch_ba
    move-exception v6

    move-object/from16 v16, v6

    .line 1315
    .local v16, e:Landroid/app/PendingIntent$CanceledException;
    if-nez v23, :cond_c4

    .line 1316
    new-instance v23, Ljava/util/ArrayList;

    .end local v23           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .restart local v23       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_c4
    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 1320
    .end local v8           #enteredIntent:Landroid/content/Intent;
    .end local v16           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_cc
    if-eqz v17, :cond_45

    if-nez v22, :cond_45

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1325
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1326
    .local v12, exitedIntent:Landroid/content/Intent;
    const-string v6, "entering"

    const/4 v7, 0x0

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1328
    :try_start_e7
    monitor-enter p0
    :try_end_e8
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_e7 .. :try_end_e8} :catch_10f

    .line 1331
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v14

    move-object v9, v5

    move-object/from16 v13, p0

    invoke-virtual/range {v9 .. v14}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 1335
    monitor-exit p0

    goto/16 :goto_45

    :catchall_10c
    move-exception v6

    monitor-exit p0
    :try_end_10e
    .catchall {:try_start_e8 .. :try_end_10e} :catchall_10c

    :try_start_10e
    throw v6
    :try_end_10f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_10e .. :try_end_10f} :catch_10f

    .line 1336
    :catch_10f
    move-exception v6

    move-object/from16 v16, v6

    .line 1340
    .restart local v16       #e:Landroid/app/PendingIntent$CanceledException;
    if-nez v23, :cond_119

    .line 1341
    new-instance v23, Ljava/util/ArrayList;

    .end local v23           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    .restart local v23       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_119
    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 1351
    .end local v12           #exitedIntent:Landroid/content/Intent;
    .end local v16           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v17           #entered:Z
    .end local v22           #inProximity:Z
    :cond_121
    if-nez v23, :cond_128

    .line 1352
    new-instance v23, Ljava/util/ArrayList;

    .end local v23           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .restart local v23       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_128
    invoke-virtual {v15}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 1359
    .end local v5           #intent:Landroid/app/PendingIntent;
    .end local v15           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    .end local v18           #expiration:J
    :cond_134
    if-eqz v23, :cond_25

    .line 1360
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_13a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/PendingIntent;

    .line 1361
    .local v20, i:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1363
    .restart local v15       #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_13a
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 1371
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1374
    :cond_b
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 1379
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 1393
    monitor-enter p0

    .line 1394
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)V

    .line 1395
    monitor-exit p0

    .line 1396
    return-void

    .line 1395
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1383
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_e

    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1387
    :cond_e
    return-void
.end method
