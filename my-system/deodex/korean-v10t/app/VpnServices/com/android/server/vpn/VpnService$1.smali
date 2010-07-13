.class Lcom/android/server/vpn/VpnService$1;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnService;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/VpnService;)V
    .registers 2
    .parameter

    .prologue
    .line 345
    .local p0, this:Lcom/android/server/vpn/VpnService$1;,"Lcom/android/server/vpn/VpnService.1;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 346
    .local p0, this:Lcom/android/server/vpn/VpnService$1;,"Lcom/android/server/vpn/VpnService.1;"
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v1}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VPN connectivity monitor running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_47

    .line 350
    :try_start_e
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v2}, Lcom/android/server/vpn/VpnService;->access$300(Lcom/android/server/vpn/VpnService;)Landroid/net/vpn/VpnState;

    move-result-object v2

    sget-object v3, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v2}, Lcom/android/server/vpn/VpnService;->access$400(Lcom/android/server/vpn/VpnService;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 352
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_44

    .line 362
    :goto_21
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v1}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VPN connectivity monitor stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 354
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v2}, Lcom/android/server/vpn/VpnService;->access$500(Lcom/android/server/vpn/VpnService;)Lcom/android/server/vpn/VpnService$NotificationHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->update()V

    .line 355
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v2}, Lcom/android/server/vpn/VpnService;->access$600(Lcom/android/server/vpn/VpnService;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 357
    monitor-exit v1

    goto :goto_b

    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_47} :catch_47

    .line 359
    :catch_47
    move-exception v1

    move-object v0, v1

    .line 360
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v1, v0}, Lcom/android/server/vpn/VpnService;->access$700(Lcom/android/server/vpn/VpnService;Ljava/lang/Throwable;)V

    goto :goto_21
.end method
