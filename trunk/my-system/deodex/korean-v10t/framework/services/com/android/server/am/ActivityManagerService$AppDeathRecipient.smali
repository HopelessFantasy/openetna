.class final Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field final mAppThread:Landroid/app/IApplicationThread;

.field final mPid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V
    .registers 5
    .parameter
    .parameter "app"
    .parameter "pid"
    .parameter "thread"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 922
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    .line 923
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    .line 924
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->removeRequestedPss(Lcom/android/server/am/ProcessRecord;)V

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 932
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 933
    monitor-exit v0

    .line 934
    return-void

    .line 933
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v1
.end method
