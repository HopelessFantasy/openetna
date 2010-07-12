.class final Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REQUEST_THUMBNAIL:I = 0x75

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SHOW_WINDOW:I = 0x69

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final UNBIND_SERVICE:I = 0x7a


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .parameter

    .prologue
    .line 1719
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1719
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .registers 3
    .parameter "code"

    .prologue
    .line 1785
    const-string v0, "(unknown)"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1788
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_18e

    .line 1892
    .end local p0
    :goto_7
    return-void

    .line 1790
    .restart local p0
    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ActivityRecord;

    .line 1792
    .local v2, r:Landroid/app/ActivityThread$ActivityRecord;
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityRecord;->packageInfo:Landroid/app/ActivityThread$PackageInfo;

    .line 1794
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)V

    goto :goto_7

    .line 1797
    .end local v2           #r:Landroid/app/ActivityThread$ActivityRecord;
    :pswitch_1f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/ActivityThread$ActivityRecord;

    .line 1798
    .restart local v2       #r:Landroid/app/ActivityThread$ActivityRecord;
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v4}, Landroid/app/ActivityThread;->access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityRecord;I)V

    goto :goto_7

    .line 1801
    .end local v2           #r:Landroid/app/ActivityThread$ActivityRecord;
    :pswitch_2b
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3c

    move v4, v7

    :goto_36
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, p0, v6, v4, v5}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    goto :goto_7

    :cond_3c
    move v4, v6

    goto :goto_36

    .line 1804
    .restart local p0
    :pswitch_3e
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_4f

    move v4, v7

    :goto_49
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, p0, v7, v4, v5}, Landroid/app/ActivityThread;->access$2300(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V

    goto :goto_7

    :cond_4f
    move v4, v6

    goto :goto_49

    .line 1807
    .restart local p0
    :pswitch_51
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, p0, v7, v4}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    goto :goto_7

    .line 1810
    .restart local p0
    :pswitch_5d
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, p0, v6, v4}, Landroid/app/ActivityThread;->access$2400(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    goto :goto_7

    .line 1813
    .restart local p0
    :pswitch_69
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    invoke-static {v3, p0, v7}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto :goto_7

    .line 1816
    .restart local p0
    :pswitch_73
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    invoke-static {v3, p0, v6}, Landroid/app/ActivityThread;->access$2500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    goto :goto_7

    .line 1819
    .restart local p0
    :pswitch_7d
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_8d

    move v4, v7

    :goto_88
    invoke-virtual {v3, p0, v7, v4}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    goto/16 :goto_7

    :cond_8d
    move v4, v6

    goto :goto_88

    .line 1823
    .restart local p0
    :pswitch_8f
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$ResultData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    goto/16 :goto_7

    .line 1826
    .restart local p0
    :pswitch_9a
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_ac

    move v4, v7

    :goto_a5
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, p0, v4, v5, v6}, Landroid/app/ActivityThread;->access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    goto/16 :goto_7

    :cond_ac
    move v4, v6

    goto :goto_a5

    .line 1830
    .restart local p0
    :pswitch_ae
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityThread$AppBindData;

    .line 1831
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3, v1}, Landroid/app/ActivityThread;->access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    goto/16 :goto_7

    .line 1834
    .end local v1           #data:Landroid/app/ActivityThread$AppBindData;
    :pswitch_b9
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v3, :cond_c6

    .line 1835
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->onTerminate()V

    .line 1837
    :cond_c6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto/16 :goto_7

    .line 1840
    :pswitch_cf
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$NewIntentData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    goto/16 :goto_7

    .line 1843
    .restart local p0
    :pswitch_da
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    goto/16 :goto_7

    .line 1846
    .restart local p0
    :pswitch_e5
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    goto/16 :goto_7

    .line 1849
    .restart local p0
    :pswitch_f0
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    goto/16 :goto_7

    .line 1852
    .restart local p0
    :pswitch_fb
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    goto/16 :goto_7

    .line 1855
    .restart local p0
    :pswitch_106
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    goto/16 :goto_7

    .line 1858
    .restart local p0
    :pswitch_111
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3500(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 1861
    .restart local p0
    :pswitch_11c
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3600(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 1864
    .restart local p0
    :pswitch_127
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/content/res/Configuration;

    invoke-virtual {v3, p0}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_7

    .line 1867
    .restart local p0
    :pswitch_132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1868
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ApplicationContext;

    iget-object v4, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/app/ApplicationContext;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1871
    .end local v0           #cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_141
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_7

    .line 1874
    :pswitch_148
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$DumpServiceInfo;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpServiceInfo;)V

    goto/16 :goto_7

    .line 1877
    .restart local p0
    :pswitch_153
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->handleLowMemory()V

    goto/16 :goto_7

    .line 1880
    :pswitch_15a
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    invoke-virtual {v3, p0}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 1883
    .restart local p0
    :pswitch_165
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_175

    move v4, v7

    :goto_16c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-virtual {v3, v4, p0}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;)V

    goto/16 :goto_7

    .restart local p0
    :cond_175
    move v4, v6

    goto :goto_16c

    .line 1886
    :pswitch_177
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    goto/16 :goto_7

    .line 1889
    .restart local p0
    :pswitch_182
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v3, p0}, Landroid/app/ActivityThread;->access$3900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    goto/16 :goto_7

    .line 1788
    nop

    :pswitch_data_18e
    .packed-switch 0x64
        :pswitch_8
        :pswitch_2b
        :pswitch_3e
        :pswitch_51
        :pswitch_5d
        :pswitch_69
        :pswitch_73
        :pswitch_7d
        :pswitch_8f
        :pswitch_9a
        :pswitch_ae
        :pswitch_b9
        :pswitch_cf
        :pswitch_da
        :pswitch_e5
        :pswitch_106
        :pswitch_111
        :pswitch_11c
        :pswitch_127
        :pswitch_132
        :pswitch_141
        :pswitch_f0
        :pswitch_fb
        :pswitch_148
        :pswitch_153
        :pswitch_15a
        :pswitch_1f
        :pswitch_165
        :pswitch_177
        :pswitch_182
    .end packed-switch
.end method
