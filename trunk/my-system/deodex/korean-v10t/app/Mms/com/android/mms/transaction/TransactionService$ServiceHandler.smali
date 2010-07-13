.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 497
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    return-void
.end method

.method private processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .registers 11
    .parameter "transaction"
    .parameter "settings"

    .prologue
    const-string v7, "TransactionService"

    .line 698
    const/4 v2, 0x0

    .line 699
    .local v2, numProcessTransaction:I
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 700
    :try_start_a
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_25

    .line 701
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 703
    :cond_25
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 704
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_63

    .line 706
    if-eqz p1, :cond_79

    .line 707
    if-eqz p2, :cond_37

    .line 708
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 715
    :cond_37
    :try_start_37
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 716
    .local v3, serviceId:I
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 717
    const-string v4, "Mms"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 718
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started deferred processing of transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_62} :catch_6d

    .line 734
    .end local v3           #serviceId:I
    :cond_62
    :goto_62
    return-void

    .line 704
    :catchall_63
    move-exception v4

    :try_start_64
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v4

    .line 722
    .restart local v3       #serviceId:I
    :cond_66
    const/4 p1, 0x0

    .line 723
    :try_start_67
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_6d

    goto :goto_62

    .line 725
    .end local v3           #serviceId:I
    :catch_6d
    move-exception v4

    move-object v1, v4

    .line 726
    .local v1, e:Ljava/io/IOException;
    const-string v4, "TransactionService"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 730
    .end local v1           #e:Ljava/io/IOException;
    :cond_79
    if-nez v2, :cond_62

    .line 731
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_62
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .registers 13
    .parameter "transaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v10, "TransactionService"

    const-string v9, "Mms"

    .line 746
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 747
    :try_start_d
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/Transaction;

    .line 748
    .local v2, t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v2, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 749
    const-string v4, "Mms"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 750
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction already pending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_4e
    monitor-exit v3

    move v3, v7

    .line 797
    .end local v2           #t:Lcom/android/mms/transaction/Transaction;
    :goto_50
    return v3

    .line 756
    :cond_51
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/Transaction;

    .line 757
    .restart local v2       #t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v2, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 758
    const-string v4, "Mms"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 759
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicated transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_92
    monitor-exit v3

    move v3, v7

    goto :goto_50

    .line 771
    .end local v2           #t:Lcom/android/mms/transaction/Transaction;
    :cond_95
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v0

    .line 772
    .local v0, connectivityResult:I
    if-ne v0, v7, :cond_b9

    .line 773
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    const-string v4, "Mms"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 775
    const-string v4, "TransactionService"

    const-string v5, "Defer txn processing pending MMS connectivity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_b6
    monitor-exit v3

    move v3, v7

    goto :goto_50

    .line 780
    :cond_b9
    const-string v4, "Mms"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 781
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding transaction to list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_da
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    monitor-exit v3
    :try_end_e4
    .catchall {:try_start_d .. :try_end_e4} :catchall_119

    .line 786
    const-string v3, "Mms"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 787
    const-string v3, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_104
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 795
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v3}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 796
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->process()V

    move v3, v7

    .line 797
    goto/16 :goto_50

    .line 784
    .end local v0           #connectivityResult:I
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_119
    move-exception v4

    :try_start_11a
    monitor-exit v3
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28
    .parameter "msg"

    .prologue
    .line 507
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 508
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handling incoming message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_26
    const/16 v17, 0x0

    .line 512
    .local v17, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_4b2

    .line 692
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "what="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local p1
    :cond_4f
    :goto_4f
    return-void

    .line 514
    .restart local p1
    :sswitch_50
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Looper;->quit()V

    goto :goto_4f

    .line 518
    :sswitch_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    monitor-enter v22

    .line 519
    :try_start_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_78

    .line 520
    monitor-exit v22

    goto :goto_4f

    .line 522
    :catchall_75
    move-exception v23

    monitor-exit v22
    :try_end_77
    .catchall {:try_start_63 .. :try_end_77} :catchall_75

    throw v23

    :cond_78
    :try_start_78
    monitor-exit v22
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_75

    .line 524
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_8a

    .line 525
    const-string v22, "TransactionService"

    const-string v23, "Extending MMS connectivity - still processing txn"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_8a
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v13

    .line 530
    .local v13, result:I
    if-eqz v13, :cond_c3

    .line 531
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Extending MMS connectivity returned "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_b7} :catch_b8

    goto :goto_4f

    .line 537
    .end local v13           #result:I
    :catch_b8
    move-exception v22

    move-object/from16 v6, v22

    .line 538
    .local v6, e:Ljava/io/IOException;
    const-string v22, "TransactionService"

    const-string v23, "Attempt to extend use of MMS connectivity failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 543
    .end local v6           #e:Ljava/io/IOException;
    .restart local v13       #result:I
    :cond_c3
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v23, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4f

    .line 553
    .end local v13           #result:I
    :sswitch_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/net/NetworkConnectivityListener;

    move-result-object v22

    if-eqz v22, :cond_4f

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/net/NetworkConnectivityListener;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 558
    .local v9, info:Landroid/net/NetworkInfo;
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_119

    .line 559
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Got DATA_STATE_CHANGED event: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_119
    if-eqz v9, :cond_4f

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    if-nez v22, :cond_4f

    .line 567
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_4f

    .line 571
    new-instance v15, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    .local v15, settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v15}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4f

    .line 580
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v23, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_4f

    .line 587
    .end local v9           #info:Landroid/net/NetworkInfo;
    .end local v15           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :sswitch_164
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v14, v0

    .line 589
    .local v14, serviceId:I
    :try_start_169
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/mms/transaction/TransactionBundle;

    .line 594
    .local v5, args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v10

    .line 595
    .local v10, mmsc:Ljava/lang/String;
    if-eqz v10, :cond_1ec

    .line 596
    new-instance v19, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v23

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 604
    .local v19, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_18a
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v22

    packed-switch v22, :pswitch_data_4c8

    .line 646
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid transaction type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ac
    .catchall {:try_start_169 .. :try_end_1ac} :catchall_460
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1ac} :catch_3a2

    .line 647
    const/16 v17, 0x0

    .line 679
    if-nez v17, :cond_4f

    .line 680
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_1d5

    .line 681
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_4f

    .line 599
    .end local v19           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_1ec
    :try_start_1ec
    new-instance v19, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v19       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto :goto_18a

    .line 606
    :pswitch_200
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    .line 607
    .local v21, uri:Ljava/lang/String;
    if-eqz v21, :cond_266

    .line 608
    new-instance v18, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move v2, v14

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v18, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v17, v18

    .line 651
    .end local v18           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v21           #uri:Ljava/lang/String;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    :goto_21c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    :try_end_223
    .catchall {:try_start_1ec .. :try_end_223} :catchall_460
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_223} :catch_3a2

    move-result v22

    if-nez v22, :cond_33e

    .line 652
    const/16 v17, 0x0

    .line 679
    if-nez v17, :cond_4f

    .line 680
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_24f

    .line 681
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_4f

    .line 613
    .restart local v21       #uri:Ljava/lang/String;
    :cond_266
    :try_start_266
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v12

    .line 614
    .local v12, pushData:[B
    new-instance v11, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v11, v12}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 616
    .local v11, parser:Lcom/google/android/mms/pdu/PduParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    .line 618
    .local v8, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v20, 0x82

    .line 619
    .local v20, type:I
    if-eqz v8, :cond_2a3

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a3

    .line 620
    new-instance v18, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    check-cast v8, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v8           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move v2, v14

    move-object/from16 v3, v19

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v18       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v17, v18

    .line 629
    .end local v18           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_21c

    .line 624
    .restart local v8       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2a3
    const-string v22, "TransactionService"

    const-string v23, "Invalid PUSH data."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2aa
    .catchall {:try_start_266 .. :try_end_2aa} :catchall_460
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_2aa} :catch_3a2

    .line 625
    const/16 v17, 0x0

    .line 679
    if-nez v17, :cond_4f

    .line 680
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_2d3

    .line 681
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_4f

    .line 631
    .end local v8           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v12           #pushData:[B
    .end local v20           #type:I
    .end local v21           #uri:Ljava/lang/String;
    :pswitch_2ea
    :try_start_2ea
    new-instance v18, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move v2, v14

    move-object/from16 v3, v19

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v18       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v17, v18

    .line 634
    .end local v18           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_21c

    .line 636
    :pswitch_306
    new-instance v18, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move v2, v14

    move-object/from16 v3, v19

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v18       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v17, v18

    .line 639
    .end local v18           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_21c

    .line 641
    :pswitch_322
    new-instance v18, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move v2, v14

    move-object/from16 v3, v19

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v18       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v17, v18

    .line 644
    .end local v18           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_21c

    .line 656
    :cond_33e
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_364

    .line 657
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Started processing of incoming message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_364
    .catchall {:try_start_2ea .. :try_end_364} :catchall_460
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_364} :catch_3a2

    .line 679
    :cond_364
    if-nez v17, :cond_4f

    .line 680
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_38b

    .line 681
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_38b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_4f

    .line 659
    .end local v5           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v10           #mmsc:Ljava/lang/String;
    .end local v19           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :catch_3a2
    move-exception v22

    move-object/from16 v7, v22

    .line 660
    .local v7, ex:Ljava/lang/Exception;
    :try_start_3a5
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception occurred while handling message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c6
    .catchall {:try_start_3a5 .. :try_end_3c6} :catchall_460

    .line 662
    if-eqz v17, :cond_408

    .line 664
    :try_start_3c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_406

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    monitor-enter v22
    :try_end_3f4
    .catchall {:try_start_3c8 .. :try_end_3f4} :catchall_45c
    .catch Ljava/lang/Throwable; {:try_start_3c8 .. :try_end_3f4} :catch_449

    .line 667
    :try_start_3f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    monitor-exit v22
    :try_end_406
    .catchall {:try_start_3f4 .. :try_end_406} :catchall_446

    .line 675
    :cond_406
    const/16 v17, 0x0

    .line 679
    :cond_408
    :goto_408
    if-nez v17, :cond_4f

    .line 680
    const-string v22, "Mms"

    const/16 v23, 0x2

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_42f

    .line 681
    const-string v22, "TransactionService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_42f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_4f

    .line 668
    :catchall_446
    move-exception v23

    :try_start_447
    monitor-exit v22
    :try_end_448
    .catchall {:try_start_447 .. :try_end_448} :catchall_446

    :try_start_448
    throw v23
    :try_end_449
    .catchall {:try_start_448 .. :try_end_449} :catchall_45c
    .catch Ljava/lang/Throwable; {:try_start_448 .. :try_end_449} :catch_449

    .line 670
    :catch_449
    move-exception v22

    move-object/from16 v16, v22

    .line 671
    .local v16, t:Ljava/lang/Throwable;
    :try_start_44c
    const-string v22, "TransactionService"

    const-string v23, "Unexpected Throwable."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_459
    .catchall {:try_start_44c .. :try_end_459} :catchall_45c

    .line 675
    const/16 v17, 0x0

    .line 676
    goto :goto_408

    .line 675
    .end local v16           #t:Ljava/lang/Throwable;
    :catchall_45c
    move-exception v22

    const/16 v17, 0x0

    :try_start_45f
    throw v22
    :try_end_460
    .catchall {:try_start_45f .. :try_end_460} :catchall_460

    .line 679
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_460
    move-exception v22

    if-nez v17, :cond_49d

    .line 680
    const-string v23, "Mms"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_488

    .line 681
    const-string v23, "TransactionService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Transaction was null. Stopping self: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    :cond_49d
    throw v22

    .line 689
    .end local v14           #serviceId:I
    :sswitch_49e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_4f

    .line 512
    nop

    :sswitch_data_4b2
    .sparse-switch
        0x1 -> :sswitch_164
        0x2 -> :sswitch_da
        0x3 -> :sswitch_58
        0x4 -> :sswitch_49e
        0x64 -> :sswitch_50
    .end sparse-switch

    .line 604
    :pswitch_data_4c8
    .packed-switch 0x0
        :pswitch_200
        :pswitch_2ea
        :pswitch_306
        :pswitch_322
    .end packed-switch
.end method
