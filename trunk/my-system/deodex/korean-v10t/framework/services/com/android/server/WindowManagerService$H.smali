.class final Lcom/android/server/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ANIMATE:I = 0x4

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_FREEZE_TIMEOUT_VALUE:I = 0x1388

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final COMPUTE_AND_SEND_NEW_CONFIGURATION:I = 0x12

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FACTORY_RESET_TIMEOUT:I = 0x13

.field public static final FACTORY_RESET_TIMEOUT_VALUE:I = 0x1388

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final HOLD_SCREEN_CHANGED:I = 0xc

.field public static final ORIENTATION_CHECK_GURAD:I = 0x14

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_FREEZE_TIMEOUT_VALUE:I = 0x7d0


# instance fields
.field private mLastReportedHold:Lcom/android/server/WindowManagerService$Session;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 7893
    iput-object p1, p0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7894
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 32
    .parameter "msg"

    .prologue
    .line 7898
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_50a

    .line 8297
    .end local p1
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 7903
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7904
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v17, v0

    .line 7905
    .local v17, lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v19, v0

    .line 7906
    .local v19, newFocus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_30

    .line 7908
    monitor-exit v4

    goto :goto_8

    .line 7919
    .end local v17           #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v19           #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v5

    .line 7910
    .restart local v17       #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v19       #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_30
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 7913
    if-eqz v19, :cond_53

    if-eqz v17, :cond_53

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v5

    if-nez v5, :cond_53

    .line 7916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7917
    const/16 v17, 0x0

    .line 7919
    :cond_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_2d

    .line 7921
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 7924
    if-eqz v19, :cond_6c

    .line 7927
    :try_start_5c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6c} :catch_507

    .line 7933
    :cond_6c
    :goto_6c
    if-eqz v17, :cond_8

    .line 7936
    :try_start_6e
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7e} :catch_7f

    goto :goto_8

    .line 7937
    :catch_7f
    move-exception v4

    goto :goto_8

    .line 7947
    .end local v17           #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v19           #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    :pswitch_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7948
    :try_start_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 7949
    .local v18, losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 7950
    monitor-exit v4
    :try_end_a0
    .catchall {:try_start_89 .. :try_end_a0} :catchall_c8

    .line 7952
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 7953
    .local v11, N:I
    const/16 v16, 0x0

    .end local p1
    .local v16, i:I
    :goto_a6
    move/from16 v0, v16

    move v1, v11

    if-ge v0, v1, :cond_8

    .line 7956
    :try_start_ab
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_c5} :catch_504

    .line 7953
    :goto_c5
    add-int/lit8 v16, v16, 0x1

    goto :goto_a6

    .line 7950
    .end local v11           #N:I
    .end local v16           #i:I
    .end local v18           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    .restart local p1
    :catchall_c8
    move-exception v5

    :try_start_c9
    monitor-exit v4
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v5

    .line 7964
    :pswitch_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7965
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 7966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/WindowManagerService;->access$1800(Lcom/android/server/WindowManagerService;)V

    .line 7967
    monitor-exit v4

    goto/16 :goto_8

    :catchall_e6
    move-exception v5

    monitor-exit v4
    :try_end_e8
    .catchall {:try_start_d3 .. :try_end_e8} :catchall_e6

    throw v5

    .line 7971
    :pswitch_e9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7972
    .local v29, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object/from16 v24, v0

    .line 7974
    .local v24, sd:Lcom/android/server/WindowManagerService$StartingData;
    if-eqz v24, :cond_8

    .line 7982
    const/16 v27, 0x0

    .line 7984
    .local v27, view:Landroid/view/View;
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$StartingData;->pkg:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$StartingData;->theme:I

    move v7, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v8, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$StartingData;->labelRes:I

    move v9, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$StartingData;->icon:I

    move v10, v0

    invoke-interface/range {v4 .. v10}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_123} :catch_174

    move-result-object v27

    .line 7992
    :goto_124
    if-eqz v27, :cond_8

    .line 7993
    const/4 v12, 0x0

    .line 7995
    .local v12, abort:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7996
    :try_start_12f
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    move v5, v0

    if-nez v5, :cond_13d

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v5, v0

    if-nez v5, :cond_17e

    .line 7999
    :cond_13d
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_151

    .line 8004
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 8005
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 8006
    const/4 v12, 0x1

    .line 8016
    :cond_151
    :goto_151
    monitor-exit v4
    :try_end_152
    .catchall {:try_start_12f .. :try_end_152} :catchall_185

    .line 8018
    if-eqz v12, :cond_8

    .line 8020
    :try_start_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_167} :catch_169

    goto/16 :goto_8

    .line 8021
    :catch_169
    move-exception v4

    move-object v15, v4

    .line 8022
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 7988
    .end local v12           #abort:Z
    .end local v15           #e:Ljava/lang/Exception;
    :catch_174
    move-exception v4

    move-object v15, v4

    .line 7989
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when adding starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_124

    .line 8009
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v12       #abort:Z
    :cond_17e
    :try_start_17e
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    goto :goto_151

    .line 8016
    :catchall_185
    move-exception v5

    monitor-exit v4
    :try_end_187
    .catchall {:try_start_17e .. :try_end_187} :catchall_185

    throw v5

    .line 8029
    .end local v12           #abort:Z
    .end local v24           #sd:Lcom/android/server/WindowManagerService$StartingData;
    .end local v27           #view:Landroid/view/View;
    .end local v29           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_188
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8030
    .restart local v29       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v26, 0x0

    .line 8031
    .local v26, token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 8032
    .restart local v27       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8037
    :try_start_19c
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_1c1

    .line 8038
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 8039
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    .line 8040
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 8041
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 8042
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 8044
    :cond_1c1
    monitor-exit v4
    :try_end_1c2
    .catchall {:try_start_19c .. :try_end_1c2} :catchall_1e0

    .line 8045
    if-eqz v27, :cond_8

    .line 8047
    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1d3} :catch_1d5

    goto/16 :goto_8

    .line 8048
    :catch_1d5
    move-exception v4

    move-object v15, v4

    .line 8049
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 8044
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1e0
    move-exception v5

    :try_start_1e1
    monitor-exit v4
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e0

    throw v5

    .line 8055
    .end local v26           #token:Landroid/os/IBinder;
    .end local v27           #view:Landroid/view/View;
    .end local v29           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_1e3
    const/16 v26, 0x0

    .line 8056
    .restart local v26       #token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 8058
    .restart local v27       #view:Landroid/view/View;
    :goto_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8059
    :try_start_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 8060
    .restart local v11       #N:I
    if-gtz v11, :cond_202

    .line 8061
    monitor-exit v4

    goto/16 :goto_8

    .line 8079
    .end local v11           #N:I
    :catchall_1ff
    move-exception v5

    monitor-exit v4
    :try_end_201
    .catchall {:try_start_1ef .. :try_end_201} :catchall_1ff

    throw v5

    .line 8063
    .restart local v11       #N:I
    :cond_202
    :try_start_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    const/4 v6, 0x1

    sub-int v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8070
    .restart local v29       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-nez v5, :cond_21b

    .line 8071
    monitor-exit v4

    goto :goto_1e7

    .line 8074
    :cond_21b
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 8075
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    .line 8076
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 8077
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 8078
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 8079
    monitor-exit v4
    :try_end_23a
    .catchall {:try_start_202 .. :try_end_23a} :catchall_1ff

    .line 8082
    :try_start_23a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_249} :catch_24a

    goto :goto_1e7

    .line 8083
    :catch_24a
    move-exception v4

    move-object v15, v4

    .line 8084
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e7

    .line 8090
    .end local v11           #N:I
    .end local v15           #e:Ljava/lang/Exception;
    .end local v26           #token:Landroid/os/IBinder;
    .end local v27           #view:Landroid/view/View;
    .end local v29           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_254
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8092
    .restart local v29       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    if-eqz v4, :cond_27f

    const/4 v4, 0x1

    move/from16 v22, v4

    .line 8093
    .local v22, nowVisible:Z
    :goto_266
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    if-eqz v4, :cond_283

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 8100
    .local v21, nowGone:Z
    :goto_270
    if-eqz v22, :cond_287

    .line 8101
    :try_start_272
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_8

    .line 8105
    :catch_27c
    move-exception v4

    goto/16 :goto_8

    .line 8092
    .end local v21           #nowGone:Z
    .end local v22           #nowVisible:Z
    :cond_27f
    const/4 v4, 0x0

    move/from16 v22, v4

    goto :goto_266

    .line 8093
    .restart local v22       #nowVisible:Z
    :cond_283
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_270

    .line 8103
    .restart local v21       #nowGone:Z
    :cond_287
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_28f
    .catch Landroid/os/RemoteException; {:try_start_272 .. :try_end_28f} :catch_27c

    goto/16 :goto_8

    .line 8115
    .end local v21           #nowGone:Z
    .end local v22           #nowVisible:Z
    .end local v29           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_291
    invoke-static {}, Lcom/android/server/WindowManagerService;->access$1900()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 8117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v13, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 8118
    .local v13, context:Landroid/content/Context;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$1902(Z)Z

    .line 8119
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Connect Mode Change"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/server/WindowManagerService$H$1;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService$H$1;-><init>(Lcom/android/server/WindowManagerService$H;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 8150
    .local v14, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 8151
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 8152
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 8160
    .end local v13           #context:Landroid/content/Context;
    .end local v14           #dialog:Landroid/app/AlertDialog;
    :pswitch_2dd
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$2002(Z)Z

    .line 8161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8162
    :try_start_2e9
    const-string v5, "WindowManager"

    const-string v6, "Window freeze timeout expired."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 8164
    .restart local v16       #i:I
    :cond_2fb
    :goto_2fb
    if-lez v16, :cond_33b

    .line 8165
    add-int/lit8 v16, v16, -0x1

    .line 8166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/WindowManagerService$WindowState;

    .line 8167
    .local v28, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_2fb

    .line 8168
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 8169
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force clearing orientation change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2fb

    .line 8174
    .end local v16           #i:I
    .end local v28           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_338
    move-exception v5

    monitor-exit v4
    :try_end_33a
    .catchall {:try_start_2e9 .. :try_end_33a} :catchall_338

    throw v5

    .line 8172
    .restart local v16       #i:I
    :cond_33b
    :try_start_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/WindowManagerService;->access$1800(Lcom/android/server/WindowManagerService;)V

    .line 8173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService;->setStateorientationChangeComplete(Z)V

    .line 8174
    monitor-exit v4
    :try_end_34d
    .catchall {:try_start_33b .. :try_end_34d} :catchall_338

    goto/16 :goto_8

    .line 8181
    .end local v16           #i:I
    :pswitch_34f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8182
    :try_start_357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/WindowManagerService$Session;

    move-object/from16 v23, v0

    .line 8183
    .local v23, oldHold:Lcom/android/server/WindowManagerService$Session;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/WindowManagerService$Session;

    .line 8184
    .local v20, newHold:Lcom/android/server/WindowManagerService$Session;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/WindowManagerService$Session;

    .line 8185
    monitor-exit v4
    :try_end_36c
    .catchall {:try_start_357 .. :try_end_36c} :catchall_39f

    .line 8187
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 8189
    if-eqz v23, :cond_386

    .line 8190
    :try_start_374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move v5, v0

    const-string v6, "window"

    const/4 v7, 0x2

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(ILjava/lang/String;I)V

    .line 8194
    :cond_386
    if-eqz v20, :cond_8

    .line 8195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move v5, v0

    const-string v6, "window"

    const/4 v7, 0x2

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(ILjava/lang/String;I)V
    :try_end_39a
    .catch Landroid/os/RemoteException; {:try_start_374 .. :try_end_39a} :catch_39c

    goto/16 :goto_8

    .line 8199
    :catch_39c
    move-exception v4

    goto/16 :goto_8

    .line 8185
    .end local v20           #newHold:Lcom/android/server/WindowManagerService$Session;
    .end local v23           #oldHold:Lcom/android/server/WindowManagerService$Session;
    :catchall_39f
    move-exception v5

    :try_start_3a0
    monitor-exit v4
    :try_end_3a1
    .catchall {:try_start_3a0 .. :try_end_3a1} :catchall_39f

    throw v5

    .line 8206
    :pswitch_3a2
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$2102(Z)Z

    .line 8207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8208
    :try_start_3ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eqz v5, :cond_3cf

    .line 8211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 8212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 8213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/WindowManagerService;->access$1800(Lcom/android/server/WindowManagerService;)V

    .line 8215
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService;->setStateorientationChangeComplete(Z)V

    .line 8216
    monitor-exit v4

    goto/16 :goto_8

    :catchall_3db
    move-exception v5

    monitor-exit v4
    :try_end_3dd
    .catchall {:try_start_3ae .. :try_end_3dd} :catchall_3db

    throw v5

    .line 8221
    :pswitch_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_8

    .line 8229
    :pswitch_40e
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$2202(Z)Z

    .line 8230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8231
    :try_start_41a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    if-eqz v5, :cond_446

    .line 8237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v5

    invoke-static {v5}, Lcom/android/server/WindowManagerService;->access$2202(Z)Z

    .line 8240
    monitor-exit v4

    goto/16 :goto_8

    .line 8248
    :catchall_443
    move-exception v5

    monitor-exit v4
    :try_end_445
    .catchall {:try_start_41a .. :try_end_445} :catchall_443

    throw v5

    .line 8244
    :cond_446
    :try_start_446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v5, :cond_452

    .line 8245
    monitor-exit v4

    goto/16 :goto_8

    .line 8247
    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 8248
    monitor-exit v4
    :try_end_45c
    .catchall {:try_start_446 .. :try_end_45c} :catchall_443

    .line 8249
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_8

    .line 8254
    :pswitch_465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_8

    .line 8259
    :pswitch_46f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8260
    :try_start_477
    const-string v5, "WindowManager"

    const-string v6, "App freeze timeout expired."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 8262
    .restart local v16       #i:I
    :cond_489
    :goto_489
    if-lez v16, :cond_4d2

    .line 8263
    add-int/lit8 v16, v16, -0x1

    .line 8264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8265
    .local v25, tok:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_489

    .line 8266
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force clearing freeze: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v25

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    goto :goto_489

    .line 8271
    .end local v16           #i:I
    .end local v25           #tok:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_4cf
    move-exception v5

    monitor-exit v4
    :try_end_4d1
    .catchall {:try_start_477 .. :try_end_4d1} :catchall_4cf

    throw v5

    .line 8270
    .restart local v16       #i:I
    :cond_4d2
    :try_start_4d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService;->setStateorientationChangeComplete(Z)V

    .line 8271
    monitor-exit v4
    :try_end_4dc
    .catchall {:try_start_4d2 .. :try_end_4dc} :catchall_4cf

    goto/16 :goto_8

    .line 8276
    .end local v16           #i:I
    :pswitch_4de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensUnchecked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 8277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_8

    .line 8284
    :pswitch_4f5
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$2302(Z)Z

    .line 8291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService;->setStateorientationChangeComplete(Z)V

    goto/16 :goto_8

    .line 7957
    .end local p1
    .restart local v11       #N:I
    .restart local v16       #i:I
    .restart local v18       #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    :catch_504
    move-exception v4

    goto/16 :goto_c5

    .line 7928
    .end local v11           #N:I
    .end local v16           #i:I
    .end local v18           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    .restart local v17       #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v19       #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    .restart local p1
    :catch_507
    move-exception v4

    goto/16 :goto_6c

    .line 7898
    :pswitch_data_50a
    .packed-switch 0x2
        :pswitch_9
        :pswitch_81
        :pswitch_cb
        :pswitch_e9
        :pswitch_188
        :pswitch_1e3
        :pswitch_254
        :pswitch_8
        :pswitch_8
        :pswitch_2dd
        :pswitch_34f
        :pswitch_3a2
        :pswitch_3de
        :pswitch_40e
        :pswitch_465
        :pswitch_46f
        :pswitch_4de
        :pswitch_291
        :pswitch_4f5
    .end packed-switch
.end method
