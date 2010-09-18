.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 159
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private connectToSupplicant()Z
    .registers 5

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 281
    .local v0, connectTries:I
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    monitor-enter v2

    .line 282
    :try_start_8
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 283
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    .line 292
    :goto_11
    return v2

    .line 285
    :cond_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1e

    .line 286
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_21

    .line 287
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$200(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1

    .line 285
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v3

    .line 292
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_21
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_11
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .registers 4
    .parameter "state"

    .prologue
    const-string v1, "WifiMonitor"

    .line 300
    if-nez p1, :cond_5

    .line 316
    :cond_4
    :goto_4
    return-void

    .line 303
    :cond_5
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 306
    const-string v0, "WifiMonitor"

    const-string v0, "handleDriverEvent:notifyDriverStopped "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStopped()V

    goto :goto_4

    .line 309
    :cond_1e
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    const-string v0, "WifiMonitor"

    const-string v0, "handleDriverEvent:notifyDriverStarted "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyDriverStarted()V

    goto :goto_4
.end method

.method private handlePasswordKeyMayBeIncorrect()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->notifyPasswordKeyMayBeIncorrect()V

    .line 297
    return-void
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .registers 19
    .parameter "dataString"

    .prologue
    .line 378
    const-string v14, " "

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, dataTokens:[Ljava/lang/String;
    const/4 v8, -0x1

    .line 381
    .local v8, networkId:I
    const/4 v9, -0x1

    .line 382
    .local v9, newState:I
    move-object v2, v3

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_e
    if-ge v5, v6, :cond_5b

    aget-object v12, v2, v5

    .line 383
    .local v12, token:Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, nameValue:[Ljava/lang/String;
    array-length v14, v7

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1f

    .line 382
    :cond_1c
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 390
    :cond_1f
    const/4 v14, 0x1

    :try_start_20
    aget-object v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_25} :catch_33

    move-result v13

    .line 396
    .local v13, value:I
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string v15, "id"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4e

    .line 397
    move v8, v13

    goto :goto_1c

    .line 391
    .end local v13           #value:I
    :catch_33
    move-exception v14

    move-object v4, v14

    .line 392
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "STATE-CHANGE non-integer parameter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 398
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #value:I
    :cond_4e
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string v15, "state"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 399
    move v9, v13

    goto :goto_1c

    .line 403
    .end local v7           #nameValue:[Ljava/lang/String;
    .end local v12           #token:Ljava/lang/String;
    .end local v13           #value:I
    :cond_5b
    const/4 v14, -0x1

    if-ne v9, v14, :cond_5f

    .line 416
    .end local v2           #arr$:[Ljava/lang/String;
    :goto_5e
    return-void

    .line 405
    .restart local v2       #arr$:[Ljava/lang/String;
    :cond_5f
    sget-object v10, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 406
    .local v10, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v2

    .local v2, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_67
    if-ge v5, v6, :cond_72

    aget-object v11, v2, v5

    .line 407
    .local v11, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v14

    if-ne v14, v9, :cond_9b

    .line 408
    move-object v10, v11

    .line 412
    .end local v11           #state:Landroid/net/wifi/SupplicantState;
    :cond_72
    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v10, v14, :cond_8e

    .line 413
    const-string v14, "WifiMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid supplicant state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object v14, v0

    invoke-static {v14}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v14

    invoke-virtual {v14, v8, v10}, Landroid/net/wifi/WifiStateTracker;->notifyStateChange(ILandroid/net/wifi/SupplicantState;)V

    goto :goto_5e

    .line 406
    .restart local v11       #state:Landroid/net/wifi/SupplicantState;
    :cond_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_67
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .registers 7
    .parameter "event"
    .parameter "remainder"

    .prologue
    const-string v3, "N3"

    .line 325
    packed-switch p1, :pswitch_data_ac

    .line 370
    :goto_5
    :pswitch_5
    return-void

    .line 327
    :pswitch_6
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v2, p2}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_5

    .line 331
    :pswitch_e
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v1, v2, p2}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_5

    .line 335
    :pswitch_16
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->notifyScanResultsAvailable()V

    goto :goto_5

    .line 341
    :pswitch_20
    const-string v1, "N3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netcube.wifi.msg"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MSG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 350
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netcube.wifi.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "N3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send IntentNoti: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v1, "NOTIFICATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 359
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_7c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netcube.wifi.customevent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "N3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send IntentCustom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v1, "CUSTOMEVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 325
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_16
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4e
        :pswitch_20
        :pswitch_7c
    .end packed-switch
.end method

.method public run()V
    .registers 13

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v9

    if-eqz v9, :cond_64

    .line 167
    iget-object v9, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v9}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantConnection()V

    .line 177
    :cond_f
    :goto_f
    const/4 v4, 0x0

    .line 178
    .local v4, eventStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 179
    .local v8, reply_tmp:[B
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForEvent()[B

    move-result-object v8

    .line 180
    if-eqz v8, :cond_1f

    .line 182
    :try_start_17
    new-instance v5, Ljava/lang/String;

    const-string v9, "KSC5601"

    invoke-direct {v5, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_1e} :catch_6e

    .end local v4           #eventStr:Ljava/lang/String;
    .local v5, eventStr:Ljava/lang/String;
    move-object v4, v5

    .line 189
    .end local v5           #eventStr:Ljava/lang/String;
    .restart local v4       #eventStr:Ljava/lang/String;
    :cond_1f
    :goto_1f
    if-eqz v4, :cond_f

    .line 194
    const-string v9, "SCAN-RESULTS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_48

    .line 195
    const-string v9, "WifiMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Event ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_48
    const-string v9, "CTRL-EVENT-"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_78

    .line 198
    const-string v9, "WPA:"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "pre-shared key may be incorrect"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_f

    .line 199
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handlePasswordKeyMayBeIncorrect()V

    goto :goto_f

    .line 169
    .end local v4           #eventStr:Ljava/lang/String;
    .end local v8           #reply_tmp:[B
    :cond_64
    iget-object v9, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v9}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    .line 275
    :goto_6d
    return-void

    .line 183
    .restart local v4       #eventStr:Ljava/lang/String;
    .restart local v8       #reply_tmp:[B
    :catch_6e
    move-exception v9

    move-object v0, v9

    .line 184
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v9, "WifiMonitor"

    const-string v10, "KSC5601 Error in MonitorThread"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 204
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_78
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$100()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, eventName:Ljava/lang/String;
    const/16 v9, 0x20

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 206
    .local v7, nameEnd:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_8e

    .line 207
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 208
    :cond_8e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_9d

    .line 209
    const-string v9, "WifiMonitor"

    const-string v10, "Received wpa_supplicant event with empty event name"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 216
    :cond_9d
    const-string v9, "CONNECTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_be

    .line 217
    const/4 v1, 0x1

    .line 248
    .local v1, event:I
    :goto_a6
    move-object v2, v4

    .line 249
    .local v2, eventData:Ljava/lang/String;
    const/4 v9, 0x7

    if-eq v1, v9, :cond_ad

    const/4 v9, 0x5

    if-ne v1, v9, :cond_135

    .line 250
    :cond_ad
    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v2, v9, v10

    .line 263
    :cond_b6
    :goto_b6
    const/4 v9, 0x3

    if-ne v1, v9, :cond_15a

    .line 264
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 218
    .end local v1           #event:I
    .end local v2           #eventData:Ljava/lang/String;
    :cond_be
    const-string v9, "DISCONNECTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 219
    const/4 v1, 0x2

    .restart local v1       #event:I
    goto :goto_a6

    .line 220
    .end local v1           #event:I
    :cond_c8
    const-string v9, "STATE-CHANGE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 221
    const/4 v1, 0x3

    .restart local v1       #event:I
    goto :goto_a6

    .line 222
    .end local v1           #event:I
    :cond_d2
    const-string v9, "SCAN-RESULTS"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 223
    const/4 v1, 0x4

    .restart local v1       #event:I
    goto :goto_a6

    .line 224
    .end local v1           #event:I
    :cond_dc
    const-string v9, "LINK-SPEED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 225
    const/4 v1, 0x5

    .restart local v1       #event:I
    goto :goto_a6

    .line 226
    .end local v1           #event:I
    :cond_e6
    const-string v9, "TERMINATING"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 227
    const/4 v1, 0x6

    .restart local v1       #event:I
    goto :goto_a6

    .line 228
    .end local v1           #event:I
    :cond_f0
    const-string v9, "DRIVER-STATE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fa

    .line 229
    const/4 v1, 0x7

    .restart local v1       #event:I
    goto :goto_a6

    .line 232
    .end local v1           #event:I
    :cond_fa
    const-string v9, "EAP-NOTIFICATION"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10c

    .line 233
    const-string v9, "N3"

    const-string v10, "EAP-Notification"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v1, 0x9

    .restart local v1       #event:I
    goto :goto_a6

    .line 236
    .end local v1           #event:I
    :cond_10c
    const-string v9, "MSG"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 237
    const-string v9, "N3"

    const-string v10, "EAP-MSG"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v1, 0xa

    .restart local v1       #event:I
    goto :goto_a6

    .line 240
    .end local v1           #event:I
    :cond_11e
    const-string v9, "CUSTOM-EVENT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_131

    .line 241
    const-string v9, "N3"

    const-string v10, "CUSTOM-EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v1, 0xb

    .restart local v1       #event:I
    goto/16 :goto_a6

    .line 246
    .end local v1           #event:I
    :cond_131
    const/16 v1, 0x8

    .restart local v1       #event:I
    goto/16 :goto_a6

    .line 251
    .restart local v2       #eventData:Ljava/lang/String;
    :cond_135
    const/4 v9, 0x3

    if-ne v1, v9, :cond_149

    .line 252
    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 253
    .local v6, ind:I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_b6

    .line 254
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b6

    .line 257
    .end local v6           #ind:I
    :cond_149
    const-string v9, " - "

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 258
    .restart local v6       #ind:I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_b6

    .line 259
    add-int/lit8 v9, v6, 0x3

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b6

    .line 265
    .end local v6           #ind:I
    :cond_15a
    const/4 v9, 0x7

    if-ne v1, v9, :cond_162

    .line 266
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 267
    :cond_162
    const/4 v9, 0x6

    if-ne v1, v9, :cond_170

    .line 268
    iget-object v9, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v9}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateTracker;->notifySupplicantLost()V

    goto/16 :goto_6d

    .line 272
    :cond_170
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_f
.end method
