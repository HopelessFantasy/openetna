.class final Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;,
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;,
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;,
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    }
.end annotation


# instance fields
.field private final mActiveConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/os/Handler;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDied:Z

.field private final mFlags:I

.field private final mIServiceConnection:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

.field private final mLocation:Landroid/app/ServiceConnectionLeaked;

.field private mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7
    .parameter "conn"
    .parameter "context"
    .parameter "activityThread"
    .parameter "flags"

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    .line 922
    new-instance v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mIServiceConnection:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

    .line 923
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 924
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 925
    iput-object p3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 926
    new-instance v0, Landroid/app/ServiceConnectionLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 927
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    invoke-virtual {v0}, Landroid/app/ServiceConnectionLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 928
    iput p4, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mFlags:I

    .line 929
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 982
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 983
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 987
    :goto_f
    return-void

    .line 985
    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_f
.end method

.method public death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    .line 992
    monitor-enter p0

    .line 993
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mDied:Z

    .line 994
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    .line 995
    .local v0, old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_13

    iget-object v1, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_15

    .line 998
    :cond_13
    monitor-exit p0

    .line 1008
    :goto_14
    return-void

    .line 1000
    :cond_15
    iget-object v1, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1001
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2d

    .line 1003
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v1, :cond_30

    .line 1004
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;

    invoke-direct {v2, p0, p1, p2, v4}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 1001
    .end local v0           #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1

    .line 1006
    .restart local v0       #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :cond_30
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_14
.end method

.method public doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1014
    monitor-enter p0

    .line 1015
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    .line 1016
    .local v2, old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    if-eqz v2, :cond_11

    iget-object v3, v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v3, p2, :cond_11

    .line 1018
    monitor-exit p0

    .line 1055
    :cond_10
    :goto_10
    return-void

    .line 1021
    :cond_11
    if-eqz p2, :cond_56

    .line 1023
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mDied:Z

    .line 1024
    new-instance v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1025
    .local v1, info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    iput-object p2, v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 1026
    new-instance v3, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iput-object v3, v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_53

    .line 1028
    :try_start_25
    iget-object v3, v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1029
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_4a

    .line 1042
    .end local v1           #info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :goto_30
    if-eqz v2, :cond_3a

    .line 1043
    :try_start_32
    iget-object v3, v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1045
    :cond_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_53

    .line 1048
    if-eqz v2, :cond_42

    .line 1049
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v3, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1052
    :cond_42
    if-eqz p2, :cond_10

    .line 1053
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v3, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_10

    .line 1030
    .restart local v1       #info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :catch_4a
    move-exception v3

    move-object v0, v3

    .line 1033
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4c
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    monitor-exit p0

    goto :goto_10

    .line 1045
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    .end local v2           #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :catchall_53
    move-exception v3

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_53

    throw v3

    .line 1039
    .restart local v2       #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :cond_56
    :try_start_56
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_53

    goto :goto_30
.end method

.method public doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1058
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1059
    return-void
.end method

.method doForget()V
    .registers 6

    .prologue
    .line 947
    monitor-enter p0

    .line 948
    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 949
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 950
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    .line 951
    .local v0, ci:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    iget-object v2, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_b

    .line 954
    .end local v0           #ci:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;>;"
    :catchall_20
    move-exception v2

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v2

    .line 953
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;>;"
    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 954
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20

    .line 955
    return-void
.end method

.method getFlags()I
    .registers 2

    .prologue
    .line 970
    iget v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mFlags:I

    return v0
.end method

.method getIServiceConnection()Landroid/app/IServiceConnection;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mIServiceConnection:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method getLocation()Landroid/app/ServiceConnectionLeaked;
    .registers 2

    .prologue
    .line 958
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    return-object v0
.end method

.method getServiceConnection()Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 962
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getUnbindLocation()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method setUnbindLocation(Ljava/lang/RuntimeException;)V
    .registers 2
    .parameter "ex"

    .prologue
    .line 974
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    .line 975
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 9
    .parameter "context"
    .parameter "activityThread"

    .prologue
    const-string v5, "ServiceConnection "

    const-string v4, ")"

    const-string v3, " now "

    .line 932
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_41

    .line 933
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing Context (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_41
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_7c

    .line 939
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing handler (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_7c
    return-void
.end method
