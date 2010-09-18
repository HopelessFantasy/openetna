.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 38
    .parameter "msg"

    .prologue
    .line 968
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    packed-switch v6, :pswitch_data_57e

    .line 1196
    .end local p0
    .end local p1
    :cond_8
    :goto_8
    return-void

    .line 970
    .restart local p0
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/HashMap;

    .line 971
    .local v25, data:Ljava/util/HashMap;
    const-string v6, "crashData"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object/from16 v24, v0

    .line 972
    .local v24, crashData:[B
    if-eqz v24, :cond_36

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 975
    .local v31, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/provider/Checkin;->reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;

    .line 977
    .end local v31           #resolver:Landroid/content/ContentResolver;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v12, v0

    monitor-enter v12

    .line 978
    :try_start_3c
    const-string v6, "app"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 979
    .local v8, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_6a

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_6a

    .line 980
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    monitor-exit v12

    goto :goto_8

    .line 997
    .end local v8           #proc:Lcom/android/server/am/ProcessRecord;
    .end local p0
    :catchall_67
    move-exception v6

    monitor-exit v12
    :try_end_69
    .catchall {:try_start_3c .. :try_end_69} :catchall_67

    throw v6

    .line 983
    .restart local v8       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p0
    :cond_6a
    :try_start_6a
    const-string v6, "result"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppErrorResult;

    .line 984
    .local v7, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_c0

    .line 985
    new-instance v5, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v9, "flags"

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "shortMsg"

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "longMsg"

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;)V

    .line 990
    .local v5, d:Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 991
    iput-object v5, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 997
    .end local v5           #d:Landroid/app/Dialog;
    :goto_bd
    monitor-exit v12

    goto/16 :goto_8

    .line 995
    .restart local p0
    :cond_c0
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_c4
    .catchall {:try_start_6a .. :try_end_c4} :catchall_67

    goto :goto_bd

    .line 1000
    .end local v7           #res:Lcom/android/server/am/AppErrorResult;
    .end local v8           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v24           #crashData:[B
    .end local v25           #data:Ljava/util/HashMap;
    .restart local p1
    :pswitch_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1001
    :try_start_cb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/HashMap;

    .line 1002
    .restart local v25       #data:Ljava/util/HashMap;
    const-string v7, "app"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1003
    .restart local v8       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_102

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_102

    .line 1004
    const-string v7, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App already has anr dialog: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .end local v8           #proc:Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    monitor-exit v6

    goto/16 :goto_8

    .line 1016
    .end local v25           #data:Ljava/util/HashMap;
    .end local p1
    :catchall_ff
    move-exception v7

    monitor-exit v6
    :try_end_101
    .catchall {:try_start_cb .. :try_end_101} :catchall_ff

    throw v7

    .line 1008
    .restart local v8       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local v25       #data:Ljava/util/HashMap;
    .restart local p1
    :cond_102
    :try_start_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v7, "android.intent.action.ANR"

    invoke-direct {v12, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    move-object v0, v7

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-static/range {v9 .. v22}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1012
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/server/am/HistoryRecord;

    move-object v0, v5

    move-object v1, v7

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HistoryRecord;)V

    .line 1014
    .restart local v5       #d:Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1015
    iput-object v5, v8, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1016
    monitor-exit v6
    :try_end_154
    .catchall {:try_start_102 .. :try_end_154} :catchall_ff

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->ensureScreenEnabled()V

    goto/16 :goto_8

    .line 1021
    .end local v5           #d:Landroid/app/Dialog;
    .end local v8           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v25           #data:Ljava/util/HashMap;
    .restart local p1
    :pswitch_15e
    new-instance v5, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1023
    .restart local v5       #d:Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_8

    .line 1027
    .end local v5           #d:Landroid/app/Dialog;
    :pswitch_181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 1028
    .restart local v31       #resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/content/res/Configuration;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_8

    .line 1031
    .end local v31           #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :pswitch_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1032
    :try_start_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1033
    monitor-exit v6

    goto/16 :goto_8

    :catchall_1ae
    move-exception v7

    monitor-exit v6
    :try_end_1b0
    .catchall {:try_start_1a3 .. :try_end_1b0} :catchall_1ae

    throw v7

    .line 1036
    :pswitch_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1037
    :try_start_1b7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/am/ProcessRecord;

    .line 1038
    .local v23, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    if-eqz v7, :cond_1f7

    .line 1039
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    move v7, v0

    if-nez v7, :cond_1f1

    .line 1040
    new-instance v5, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object v0, v5

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1043
    .restart local v5       #d:Landroid/app/Dialog;
    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1044
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1045
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1053
    .end local v5           #d:Landroid/app/Dialog;
    :cond_1f1
    :goto_1f1
    monitor-exit v6

    goto/16 :goto_8

    .end local v23           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_1f4
    move-exception v7

    monitor-exit v6
    :try_end_1f6
    .catchall {:try_start_1b7 .. :try_end_1f6} :catchall_1f4

    throw v7

    .line 1048
    .restart local v23       #app:Lcom/android/server/am/ProcessRecord;
    :cond_1f7
    :try_start_1f7
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v7, v0

    if-eqz v7, :cond_1f1

    .line 1049
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 1050
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_20c
    .catchall {:try_start_1f7 .. :try_end_20c} :catchall_1f4

    goto :goto_1f1

    .line 1058
    .end local v23           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_8

    .line 1061
    :pswitch_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_248

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1064
    .local v28, nmsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    move-object v0, v6

    move-object/from16 v1, v28

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1067
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_8

    .line 1070
    :pswitch_252
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/IBinder;

    .line 1073
    .local v34, token:Landroid/os/IBinder;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity pause timeout for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v6

    move-object/from16 v1, v34

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;Z)V

    goto/16 :goto_8

    .line 1077
    .end local v34           #token:Landroid/os/IBinder;
    :pswitch_286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_2c0

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1080
    .restart local v28       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    move-object v0, v6

    move-object/from16 v1, v28

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1086
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_2c0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/IBinder;

    .line 1087
    .restart local v34       #token:Landroid/os/IBinder;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity idle timeout for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    move-object v0, v6

    move-object/from16 v1, v34

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->activityIdleInternal(Landroid/os/IBinder;Z)V

    goto/16 :goto_8

    .line 1091
    .end local v34           #token:Landroid/os/IBinder;
    :pswitch_2f2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/IBinder;

    .line 1094
    .restart local v34       #token:Landroid/os/IBinder;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity destroy timeout for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->activityDestroyed(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 1098
    .end local v34           #token:Landroid/os/IBinder;
    :pswitch_322
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/IBinder;

    .line 1099
    .restart local v34       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->activityIdle(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 1102
    .end local v34           #token:Landroid/os/IBinder;
    :pswitch_337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_371

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1105
    .restart local v28       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x4e20

    move-object v0, v6

    move-object/from16 v1, v28

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1109
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_8

    .line 1112
    .restart local p0
    :pswitch_386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1113
    :try_start_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mLRUProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int v27, v7, v8

    .local v27, i:I
    :goto_39a
    if-ltz v27, :cond_3e4

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mLRUProcesses:Ljava/util/ArrayList;

    move-object v0, v7

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/ProcessRecord;

    .line 1115
    .local v30, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v7, v0
    :try_end_3b1
    .catchall {:try_start_38c .. :try_end_3b1} :catchall_3e1

    if-eqz v7, :cond_3bb

    .line 1117
    :try_start_3b3
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v7, v0

    invoke-interface {v7}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_3bb
    .catchall {:try_start_3b3 .. :try_end_3bb} :catchall_3e1
    .catch Landroid/os/RemoteException; {:try_start_3b3 .. :try_end_3bb} :catch_3be

    .line 1113
    :cond_3bb
    :goto_3bb
    add-int/lit8 v27, v27, -0x1

    goto :goto_39a

    .line 1118
    :catch_3be
    move-exception v7

    move-object/from16 v26, v7

    .line 1119
    .local v26, ex:Landroid/os/RemoteException;
    :try_start_3c1
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update time zone for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3bb

    .line 1123
    .end local v26           #ex:Landroid/os/RemoteException;
    .end local v27           #i:I
    .end local v30           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_3e1
    move-exception v7

    monitor-exit v6
    :try_end_3e3
    .catchall {:try_start_3c1 .. :try_end_3e3} :catchall_3e1

    throw v7

    .restart local v27       #i:I
    :cond_3e4
    :try_start_3e4
    monitor-exit v6
    :try_end_3e5
    .catchall {:try_start_3e4 .. :try_end_3e5} :catchall_3e1

    goto/16 :goto_8

    .line 1127
    .end local v27           #i:I
    :pswitch_3e7
    new-instance v5, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v5, d:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7da

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1129
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1130
    const-string v6, "System UIDs Inconsistent"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1131
    const-string v6, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1132
    const-string v6, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iput-object v5, v6, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1135
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 1138
    .end local v5           #d:Landroid/app/AlertDialog;
    :pswitch_428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v6, :cond_8

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_8

    .line 1144
    :pswitch_445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_475

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1147
    .restart local v28       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    move-object v0, v6

    move-object/from16 v1, v28

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1150
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1151
    :try_start_47b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_499

    .line 1152
    const-string v7, "ActivityManager"

    const-string v8, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1155
    :cond_499
    monitor-exit v6

    goto/16 :goto_8

    :catchall_49c
    move-exception v7

    monitor-exit v6
    :try_end_49e
    .catchall {:try_start_47b .. :try_end_49e} :catchall_49c

    throw v7

    .line 1158
    :pswitch_49f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/server/am/ServiceRecord;

    .line 1160
    .local v33, srv:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Checkin$Events$Tag;->SYSTEM_SERVICE_LOOPING:Landroid/provider/Checkin$Events$Tag;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    goto/16 :goto_8

    .line 1165
    .end local v33           #srv:Lcom/android/server/am/ServiceRecord;
    :pswitch_4c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1166
    :try_start_4c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/HistoryRecord;)Z

    .line 1167
    monitor-exit v6

    goto/16 :goto_8

    :catchall_4d4
    move-exception v7

    monitor-exit v6
    :try_end_4d6
    .catchall {:try_start_4c8 .. :try_end_4d6} :catchall_4d4

    throw v7

    .line 1170
    :pswitch_4d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_511

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1173
    .restart local v28       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    move-object v0, v6

    move-object/from16 v1, v28

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1177
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_511
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/am/ProcessRecord;

    .line 1178
    .restart local v23       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1179
    :try_start_51f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1180
    monitor-exit v6

    goto/16 :goto_8

    :catchall_52d
    move-exception v7

    monitor-exit v6
    :try_end_52f
    .catchall {:try_start_51f .. :try_end_52f} :catchall_52d

    throw v7

    .line 1183
    .end local v23           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1184
    :try_start_536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1185
    monitor-exit v6

    goto/16 :goto_8

    :catchall_542
    move-exception v7

    monitor-exit v6
    :try_end_544
    .catchall {:try_start_536 .. :try_end_544} :catchall_542

    throw v7

    .line 1188
    :pswitch_545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    monitor-enter v6

    .line 1189
    :try_start_54b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 1190
    .local v35, uid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_579

    const/4 v7, 0x1

    move/from16 v32, v7

    .line 1191
    .local v32, restart:Z
    :goto_55c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 1192
    .local v29, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v29

    move/from16 v2, v35

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZ)V

    .line 1193
    monitor-exit v6

    goto/16 :goto_8

    .end local v29           #pkg:Ljava/lang/String;
    .end local v32           #restart:Z
    .end local v35           #uid:I
    :catchall_576
    move-exception v7

    monitor-exit v6
    :try_end_578
    .catchall {:try_start_54b .. :try_end_578} :catchall_576

    throw v7

    .line 1190
    .restart local v35       #uid:I
    :cond_579
    const/4 v7, 0x0

    move/from16 v32, v7

    goto :goto_55c

    .line 968
    nop

    :pswitch_data_57e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_c5
        :pswitch_15e
        :pswitch_181
        :pswitch_19d
        :pswitch_1b1
        :pswitch_20d
        :pswitch_218
        :pswitch_252
        :pswitch_286
        :pswitch_322
        :pswitch_337
        :pswitch_386
        :pswitch_3e7
        :pswitch_428
        :pswitch_445
        :pswitch_2f2
        :pswitch_49f
        :pswitch_4c2
        :pswitch_4d7
        :pswitch_530
        :pswitch_545
    .end packed-switch
.end method
