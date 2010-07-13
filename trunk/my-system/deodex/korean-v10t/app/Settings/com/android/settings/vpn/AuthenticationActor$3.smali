.class Lcom/android/settings/vpn/AuthenticationActor$3;
.super Ljava/lang/Object;
.source "AuthenticationActor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/AuthenticationActor;->checkStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/AuthenticationActor;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/AuthenticationActor;Landroid/os/ConditionVariable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    iput-object p2, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3a

    .line 185
    :try_start_6
    invoke-static {p2}, Landroid/net/vpn/IVpnService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vpn/IVpnService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v2}, Lcom/android/settings/vpn/AuthenticationActor;->access$000(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/net/vpn/VpnProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/vpn/IVpnService;->checkStatus(Landroid/net/vpn/VpnProfile;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_1e

    .line 190
    :try_start_13
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v1}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_3a

    .line 192
    :goto_1c
    monitor-exit p0

    return-void

    .line 186
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    :try_start_20
    invoke-static {}, Lcom/android/settings/vpn/AuthenticationActor;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkStatus()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    sget-object v2, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-static {v1, v2}, Lcom/android/settings/vpn/AuthenticationActor;->access$400(Lcom/android/settings/vpn/AuthenticationActor;Landroid/net/vpn/VpnState;)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_3d

    .line 190
    :try_start_30
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v1}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3a

    goto :goto_1c

    .line 183
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 190
    :catchall_3d
    move-exception v1

    :try_start_3e
    iget-object v2, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v2}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_3a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-static {v0, v1}, Lcom/android/settings/vpn/AuthenticationActor;->access$400(Lcom/android/settings/vpn/AuthenticationActor;Landroid/net/vpn/VpnState;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor$3;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v0}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 198
    return-void
.end method
