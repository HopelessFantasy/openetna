.class Lcom/android/server/status/StatusBarService$H;
.super Landroid/os/Handler;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method private constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .registers 2
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService$H;-><init>(Lcom/android/server/status/StatusBarService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .parameter "m"

    .prologue
    .line 786
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    const/16 v14, 0x3e8

    if-ne v13, v14, :cond_12

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/status/StatusBarService;->doAnimation()V

    .line 898
    :goto_11
    return-void

    .line 790
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    const/16 v14, 0x3e9

    if-ne v13, v14, :cond_24

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/server/status/StatusBarService;->doRevealAnimation()V

    goto :goto_11

    .line 794
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    monitor-enter v13

    .line 795
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-boolean v12, v14, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    .line 799
    .local v12, wasExpanded:Z
    move v7, v12

    .line 800
    .local v7, expand:Z
    const/4 v4, 0x0

    .line 801
    .local v4, doExpand:Z
    const/4 v3, 0x0

    .line 802
    .local v3, doDisable:Z
    const/4 v2, 0x0

    .line 803
    .local v2, disableWhat:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 804
    .local v1, N:I
    :cond_42
    :goto_42
    if-lez v1, :cond_152

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 806
    .local v10, op:Lcom/android/server/status/StatusBarService$PendingOp;
    const/4 v5, 0x0

    .line 807
    .local v5, doOp:Z
    const/4 v11, 0x0

    .line 808
    .local v11, visible:Z
    const/4 v6, 0x0

    .line 809
    .local v6, doVisibility:Z
    iget v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_a6

    .line 810
    const/4 v6, 0x1

    .line 811
    iget-boolean v11, v10, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 825
    :goto_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget v15, v10, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    invoke-static {v14, v15}, Lcom/android/server/status/StatusBarService;->access$900(Lcom/android/server/status/StatusBarService;I)Z

    move-result v14

    if-eqz v14, :cond_d8

    .line 827
    const/4 v8, 0x1

    .local v8, i:I
    :goto_6b
    if-ge v8, v1, :cond_d8

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 829
    .local v9, o:Lcom/android/server/status/StatusBarService$PendingOp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget v15, v9, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    invoke-static {v14, v15}, Lcom/android/server/status/StatusBarService;->access$900(Lcom/android/server/status/StatusBarService;I)Z

    move-result v14

    if-nez v14, :cond_a3

    iget-object v14, v9, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    iget-object v15, v10, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    if-ne v14, v15, :cond_a3

    .line 830
    iget v14, v9, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_bf

    .line 831
    iget-boolean v11, v9, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 832
    const/4 v6, 0x1

    .line 843
    :goto_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 844
    add-int/lit8 v8, v8, -0x1

    .line 845
    add-int/lit8 v1, v1, -0x1

    .line 827
    :cond_a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    .line 813
    .end local v8           #i:I
    .end local v9           #o:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_a6
    iget v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_af

    .line 814
    const/4 v4, 0x1

    .line 815
    iget-boolean v7, v10, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    goto :goto_5d

    .line 817
    :cond_af
    iget v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_bd

    .line 818
    const/4 v4, 0x1

    .line 819
    if-nez v7, :cond_ba

    const/4 v14, 0x1

    move v7, v14

    :goto_b9
    goto :goto_5d

    :cond_ba
    const/4 v14, 0x0

    move v7, v14

    goto :goto_b9

    .line 822
    :cond_bd
    const/4 v5, 0x1

    goto :goto_5d

    .line 834
    .restart local v8       #i:I
    .restart local v9       #o:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_bf
    iget v14, v9, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_c8

    .line 835
    iget-boolean v7, v9, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 836
    const/4 v4, 0x1

    goto :goto_95

    .line 839
    :cond_c8
    iget v14, v9, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    iput v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 840
    iget-object v14, v9, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    iput-object v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    .line 841
    iget-object v14, v9, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    iput-object v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    goto :goto_95

    .line 897
    .end local v1           #N:I
    .end local v2           #disableWhat:I
    .end local v3           #doDisable:Z
    .end local v4           #doExpand:Z
    .end local v5           #doOp:Z
    .end local v6           #doVisibility:Z
    .end local v7           #expand:Z
    .end local v8           #i:I
    .end local v9           #o:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v10           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v11           #visible:Z
    .end local v12           #wasExpanded:Z
    :catchall_d5
    move-exception v14

    monitor-exit v13
    :try_end_d7
    .catchall {:try_start_2c .. :try_end_d7} :catchall_d5

    throw v14

    .line 850
    .restart local v1       #N:I
    .restart local v2       #disableWhat:I
    .restart local v3       #doDisable:Z
    .restart local v4       #doExpand:Z
    .restart local v5       #doOp:Z
    .restart local v6       #doVisibility:Z
    .restart local v7       #expand:Z
    .restart local v10       #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .restart local v11       #visible:Z
    .restart local v12       #wasExpanded:Z
    :cond_d8
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 851
    add-int/lit8 v1, v1, -0x1

    .line 853
    if-eqz v5, :cond_ec

    .line 854
    iget v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    packed-switch v14, :pswitch_data_1aa

    .line 877
    :cond_ec
    :goto_ec
    :pswitch_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v14}, Lcom/android/server/status/StatusBarView;->invalidate()V

    .line 878
    if-eqz v6, :cond_42

    iget v14, v10, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_42

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v15, v10, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    invoke-virtual {v14, v15, v11}, Lcom/android/server/status/StatusBarService;->performSetIconVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_42

    .line 857
    :pswitch_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v15, v10, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    move-object/from16 v16, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/status/StatusBarService;->performAddUpdateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_ec

    .line 860
    :pswitch_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v15, v10, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    invoke-virtual {v14, v15}, Lcom/android/server/status/StatusBarService;->performRemoveIcon(Landroid/os/IBinder;)V

    goto :goto_ec

    .line 863
    :pswitch_129
    const/4 v3, 0x1

    .line 864
    iget v2, v10, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    .line 865
    goto :goto_ec

    .line 869
    :pswitch_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v15, v10, Lcom/android/server/status/StatusBarService$PendingOp;->theme:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/status/StatusBarService;->performSetBackground(Ljava/lang/String;)V

    goto :goto_ec

    .line 872
    :pswitch_138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v15, v10, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    move-object/from16 v16, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    move-object/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/status/StatusBarService;->performUpdateIconColor(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    goto :goto_ec

    .line 883
    .end local v5           #doOp:Z
    .end local v6           #doVisibility:Z
    .end local v10           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v11           #visible:Z
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_188

    .line 884
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Assertion failed: mQueue.size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 886
    :cond_188
    if-eqz v4, :cond_194

    .line 888
    if-eqz v7, :cond_1a1

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/server/status/StatusBarService;->animateExpand()V

    .line 894
    :cond_194
    :goto_194
    if-eqz v3, :cond_19e

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    invoke-virtual {v14, v2}, Lcom/android/server/status/StatusBarService;->performDisableActions(I)V

    .line 897
    :cond_19e
    monitor-exit v13

    goto/16 :goto_11

    .line 891
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/server/status/StatusBarService;->animateCollapse()V
    :try_end_1a9
    .catchall {:try_start_d8 .. :try_end_1a9} :catchall_d5

    goto :goto_194

    .line 854
    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_109
        :pswitch_109
        :pswitch_11e
        :pswitch_ec
        :pswitch_ec
        :pswitch_ec
        :pswitch_129
        :pswitch_12d
        :pswitch_138
    .end packed-switch
.end method
