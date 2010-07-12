.class Landroid/accounts/AccountMonitor$AccountUpdater;
.super Ljava/lang/Thread;
.source "AccountMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountUpdater"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/accounts/AccountMonitor;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountMonitor;Landroid/os/IBinder;)V
    .registers 3
    .parameter
    .parameter "service"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->this$0:Landroid/accounts/AccountMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    iput-object p2, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->mService:Landroid/os/IBinder;

    .line 54
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-string v5, "AccountMonitor"

    .line 58
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 59
    iget-object v3, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->mService:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/accounts/IAccountsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountsService;

    move-result-object v1

    .line 60
    .local v1, accountsService:Landroid/accounts/IAccountsService;
    const/4 v0, 0x0

    .line 63
    .local v0, accounts:[Ljava/lang/String;
    :goto_e
    :try_start_e
    invoke-interface {v1}, Landroid/accounts/IAccountsService;->getAccounts()[Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_38

    move-result-object v0

    .line 71
    iget-object v3, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->this$0:Landroid/accounts/AccountMonitor;

    monitor-enter v3

    .line 72
    :try_start_15
    iget-object v4, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->this$0:Landroid/accounts/AccountMonitor;

    invoke-static {v4}, Landroid/accounts/AccountMonitor;->access$006(Landroid/accounts/AccountMonitor;)I

    .line 73
    iget-object v4, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->this$0:Landroid/accounts/AccountMonitor;

    invoke-static {v4}, Landroid/accounts/AccountMonitor;->access$000(Landroid/accounts/AccountMonitor;)I

    move-result v4

    if-nez v4, :cond_41

    .line 74
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_43

    .line 79
    iget-object v3, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->this$0:Landroid/accounts/AccountMonitor;

    invoke-static {v3}, Landroid/accounts/AccountMonitor;->access$100(Landroid/accounts/AccountMonitor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->this$0:Landroid/accounts/AccountMonitor;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    :try_start_2e
    iget-object v3, p0, Landroid/accounts/AccountMonitor$AccountUpdater;->this$0:Landroid/accounts/AccountMonitor;

    invoke-static {v3}, Landroid/accounts/AccountMonitor;->access$200(Landroid/accounts/AccountMonitor;)Landroid/accounts/AccountMonitorListener;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/accounts/AccountMonitorListener;->onAccountsUpdated([Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_37} :catch_46

    .line 88
    :goto_37
    return-void

    .line 64
    :catch_38
    move-exception v2

    .line 67
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "AccountMonitor"

    const-string v3, "Remote exception when getting accounts"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 76
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_41
    :try_start_41
    monitor-exit v3

    goto :goto_e

    :catchall_43
    move-exception v4

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v4

    .line 83
    :catch_46
    move-exception v3

    move-object v2, v3

    .line 86
    .local v2, e:Landroid/database/SQLException;
    const-string v3, "AccountMonitor"

    const-string v3, "Can\'t update accounts"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method
