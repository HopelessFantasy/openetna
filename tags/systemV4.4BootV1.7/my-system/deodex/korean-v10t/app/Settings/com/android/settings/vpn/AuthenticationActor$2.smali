.class Lcom/android/settings/vpn/AuthenticationActor$2;
.super Ljava/lang/Object;
.source "AuthenticationActor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/AuthenticationActor;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/AuthenticationActor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/AuthenticationActor;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/vpn/AuthenticationActor$2;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 158
    :try_start_0
    invoke-static {p2}, Landroid/net/vpn/IVpnService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vpn/IVpnService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/vpn/IVpnService;->disconnect()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_11

    .line 163
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor$2;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v1}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    :goto_10
    return-void

    .line 159
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    :try_start_13
    invoke-static {}, Lcom/android/settings/vpn/AuthenticationActor;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnect()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor$2;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-virtual {v1}, Lcom/android/settings/vpn/AuthenticationActor;->checkStatus()V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_2b

    .line 163
    iget-object v1, p0, Lcom/android/settings/vpn/AuthenticationActor$2;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v1}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_10

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_2b
    move-exception v1

    iget-object v2, p0, Lcom/android/settings/vpn/AuthenticationActor$2;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-static {v2}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor$2;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/AuthenticationActor;->checkStatus()V

    .line 169
    return-void
.end method
