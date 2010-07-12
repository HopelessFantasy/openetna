.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x0

    .line 509
    const-wide/16 v4, -0x1

    .local v4, preTxPkts:J
    const-wide/16 v2, -0x1

    .line 513
    .local v2, preRxPkts:J
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v4

    .line 514
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v2

    .line 517
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/INetStatService;

    move-result-object v10

    if-eqz v10, :cond_9c

    .line 519
    :try_start_1a
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/INetStatService;

    move-result-object v11

    invoke-interface {v11}, Landroid/os/INetStatService;->getMobileTxPackets()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 520
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/INetStatService;

    move-result-object v11

    invoke-interface {v11}, Landroid/os/INetStatService;->getMobileRxPackets()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_38} :catch_9d

    .line 528
    :goto_38
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v10

    if-eqz v10, :cond_7d

    cmp-long v10, v4, v13

    if-gtz v10, :cond_48

    cmp-long v10, v2, v13

    if-lez v10, :cond_7d

    .line 529
    :cond_48
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v10

    sub-long v8, v10, v4

    .line 530
    .local v8, sent:J
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v10

    sub-long v6, v10, v2

    .line 532
    .local v6, received:J
    cmp-long v10, v8, v13

    if-lez v10, :cond_aa

    cmp-long v10, v6, v13

    if-lez v10, :cond_aa

    .line 533
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 534
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 562
    .local v1, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_67
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    if-eq v10, v1, :cond_7d

    .line 563
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 564
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 568
    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v6           #received:J
    .end local v8           #sent:J
    :cond_7d
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v11, 0x3e8

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 570
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 571
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v10, p0, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    :cond_9c
    return-void

    .line 521
    :catch_9d
    move-exception v10

    move-object v0, v10

    .line 522
    .local v0, e:Landroid/os/RemoteException;
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 523
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto :goto_38

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v6       #received:J
    .restart local v8       #sent:J
    :cond_aa
    cmp-long v10, v8, v13

    if-lez v10, :cond_ce

    cmp-long v10, v6, v13

    if-nez v10, :cond_ce

    .line 536
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_c8

    .line 537
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2114(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 541
    :goto_c5
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto :goto_67

    .line 539
    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_c8
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto :goto_c5

    .line 542
    :cond_ce
    cmp-long v10, v8, v13

    if-nez v10, :cond_de

    cmp-long v10, v6, v13

    if-lez v10, :cond_de

    .line 543
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 544
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto :goto_67

    .line 545
    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_de
    cmp-long v10, v8, v13

    if-nez v10, :cond_f8

    cmp-long v10, v6, v13

    if-nez v10, :cond_f8

    .line 547
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v10, v11, :cond_f4

    .line 548
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_67

    .line 550
    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_f4
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_67

    .line 553
    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_f8
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10, v13, v14}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 555
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v10, v11, :cond_10b

    .line 556
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_67

    .line 558
    .end local v1           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_10b
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_67
.end method
